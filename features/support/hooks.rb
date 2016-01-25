#
ENV['BROWSER'] ||= 'firefox'
BROWSER_WIDTH = 1024
BROWSER_HEIGHT = 768

Before do
  @browser = case ENV['BROWSER']
             when 'chrome'
               Watir::Browser.new :chrome
             when 'firefox'
               Watir::Browser.new :firefox
             end
  @browser.driver.manage.window.move_to(0, 0)
  @browser.driver.manage.window.resize_to(BROWSER_WIDTH, BROWSER_HEIGHT)
  puts @browser.name
end

After do |scenario|
  if scenario.failed?
    filename = "/tmp/test-failure.#{Time.now.to_i}.png"
    @browser.screenshot.save(filename)
    $stderr.puts "Scenario failed, screenshot saved to '#{filename}'."
  end
  @browser.quit
end
