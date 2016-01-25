# Contains all the elements from the generate meme page
class Generatememe

  def initialize(browser)
    @browser = browser
  end

  def search_memes
    @browser.text_field(:id, 'mm-search')
  end

  def enter_top
    @browser.textarea(:xpath, ".//*[@id='mm-settings']/div[4]/div[1]/textarea")
  end

  def enter_bottom
    @browser.textarea(:xpath, ".//*[@id='mm-settings']/div[4]/div[2]/textarea")
  end

  def generate_meme
    @browser.div(:class, 'mm-generate b but').click
  end

  def image_html
    @browser.textarea(:class, 'img-code html')
  end

  def wait_until_browser_finish_loading(timeout = 10)
    @browser.driver.manage.timeouts.implicit_wait = timeout
  end

  def scroll_page
    @browser.execute_script("window.scrollBy(0,200)")
  end
end