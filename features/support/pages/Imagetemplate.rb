# Contains all the elements present on the final Image template page
class Imagetemplate

  def initialize(browser)
    @browser = browser
  end

  def image_title
    @browser.element(:css, "#img-title").text.downcase
  end

  def image_description
    @browser.element(:css, "#fPanel div:nth-child(4) div:nth-child(5)").text
  end
end