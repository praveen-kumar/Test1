# Contains all the elements of the Image flip homepage
class HomePage
  URL = 'https://imgflip.com/'

  def initialize(browser)
    @browser = browser
    @url = URL
  end

  def visit_page
    @browser.goto(@url)
  end

  def make_meme
    @browser.div(:id, 'go-create').a(:href, '/memegenerator')
  end
end

