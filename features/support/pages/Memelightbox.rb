# contains all the elements present on the lightbox
class Memelightbox

  def initialize(browser)
    @browser = browser
  end

  def get_image_html
    @browser.element(:css, "#doneUrl div:nth-child(3) input").attribute_value("value")
  end

  def go_to_image_page
    @browser.element(:css, "#doneLinks a").click
  end
end