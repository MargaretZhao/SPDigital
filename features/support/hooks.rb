require "watir"

browser = Watir::Browser.new :firefox

Watir.default_timeout = 180

Before do |scenario|
    @browser = browser
    TestHelper.setBrowser(browser)
    #puts('============== starting one scenario with base url ===========')
    #puts $base_url
end

After do |scenario|

end

at_exit do
  if browser.exists?
    browser.close
  end

end


    