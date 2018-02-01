require 'watir'
require 'yaml'

Before do |scenario|
  DataMagic.load_for_scenario(scenario)

  browser = ENV['browser']
  case browser
    when 'firefox'
      @browser = Watir::Browser.new :firefox
    when 'crome'
      @browser = Watir::Browser.new :chrome
    when 'ie'
      @browser = Watir::Browser.new :ie
    when 'edge'
      @browser = Watir::Browser.new :edge
    when 'safari'
      @browser = Watir::Browser.new :safari
    else
      @browser = Watir::Browser.new :chrome
  end
end


After do
  @browser.close
end