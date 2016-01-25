# Contains all the elements of the Image flip homepage
class HomePage

  def initialize(browser)
    @browser = browser
  end

  def visit_page(url)
    @browser.goto(url)
  end

  def make_meme
    @browser.div(:id, 'go-create').a(:href, '/memegenerator')
  end
end

