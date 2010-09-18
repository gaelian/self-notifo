class SelfNotifoGenerator < Rails::Generator::NamedBase
  def manifest
    record do |m|
      m.template 'self-notifo.yml', 'config/self-notifo.yml'
    end
  end
end