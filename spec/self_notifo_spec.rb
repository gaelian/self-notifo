require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe SelfNotifo, "#initialize" do
  it "should raise exception when required parameters are not found" do
    expect{ SelfNotifo.new(:msg => "Test message.") }.to raise_error(RuntimeError)
  end
end
