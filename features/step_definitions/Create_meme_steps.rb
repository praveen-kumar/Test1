#
Given(/^I am on "([^"]*)"$/) do |url|
  @meme = HomePage.new(@browser)
  @meme.visit_page
end

And(/^I click on the link to make a meme$/) do
  @meme.make_meme.when_present.click
end

And(/^I select the "([^"]*)" meme$/) do |meme_title|
  @title = meme_title.downcase
  @create = Generatememe.new(@browser)
  @create.search_memes.set @title
  @browser.send_keys :enter
end

And(/^I add the custom top sentence as "([^"]*)"$/) do |top_sentence|
  @top_text = top_sentence.upcase
  @create.enter_top.set @top_text
end

And(/^I add the custom bottom sentence as "([^"]*)"$/) do |bottom_sentence|
  @bottom_text = bottom_sentence.upcase
  @create.enter_bottom.set @bottom_text
end

When(/^I generate the meme on the meme generator$/) do
  @create.generate_meme
  @create.scroll_page
  @create.wait_until_browser_finish_loading
end

And(/^the Image HTML value is a syntactical valid HTML$/) do
  @template = Memelightbox.new(@browser)
  expect(@template.get_image_html).to include("a href").or include("img src")
end

Then(/^on the image page the title matches the meme template title$/) do
  @template.go_to_image_page
  @image = Imagetemplate.new(@browser)
  expect(@title).to eq(@image.image_title)
end

Then(/^the image description on the right contains the custom phrases used to create the meme$/) do
  expect(@image.image_description).to include(@top_text)
  expect(@image.image_description).to include(@bottom_text)
end