require 'httparty'
require 'yaml'

class SelfNotifo
  include HTTParty
  format :json

  # Pass in a hash when creating a new instance:
  # SelfNotifo.new(:msg => "My message.")
  # Optional parameters can be added:
  # SelfNotifo.new(:msg => "My message.", :label => "My Label", :title => "My Title", :uri => "http://some-relevant-address.com")
  # The message label defaults to the value set in self-notifo.yml
  # If you do not wish for notifications to be sent from your test environment while you run your tests, change the value of 
  # send_in_test to false in self-notifo.yml.
  def initialize(params)
    send_in_test = true

    begin
      config = YAML.load_file("#{Rails.root}/config/self-notifo.yml")
      username = config['auth']['username']
      api_secret = config['auth']['api_secret']
      send_in_test = config['send_in_test']
      params[:label] = config['label'] if params[:label].blank?
    rescue Errno::ENOENT
      if params[:username].blank? && params[:api_secret].blank?
        raise 'Config file "self-notifo.yml" not found, have you generated it?'
      else
        username = params[:username]
        api_secret = params[:api_secret]
      end
    end

    self.class.basic_auth username, api_secret
    send_notification(params) if !Rails.env.test? || (Rails.env.test? && send_in_test)
  end

  private

    def logger
      Rails.logger
    end

    def send_notification(params)
      r = self.class.post('https://api.notifo.com/v1/send_notification', { :body => { :msg => params[:msg], :label => params[:label], :title => params[:title], :uri => params[:uri] }.reject{ |k, v| v.blank? } })
      logger.info "self-notifo: sent notification, response was: " + r.parsed_response.inspect
    end
end