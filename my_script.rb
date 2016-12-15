Given(/^I am on "(.*?)"$/) do |search_engine_website|
  visit(search_engine_website)
end

When(/^I search for "(.*?)"$/) do |the_keyword|
  if the_keyword =='the meaning of life the universe and everything'
    SEARCH_BAR = ".//*[@id='lst-ib']"
    SEARCH_BTN = "//input[@type='submit']"
  elsif the_keyword =='why is the rum gone?'
    SEARCH_BAR = ".//*[@id='sb_form_q']"
    SEARCH_BTN = "//input[@type='submit']"

end
    unless the_keyword == ''
      # fill_in(SEARCH_BAR,:with=> string_search)
      find(:xpath, SEARCH_BAR).set(the_keyword)
      find(:xpath, SEARCH_BTN).click
    end

end

Then(/^I should see a link "(.*?)"$/) do |the_page|
find_link(the_page).visible?
end

When(/^I click on  "(.*?)"$/) do |the_page|
  click_link(the_page)
end

Then(/^I should see "(.*?)"$/) do |expected_section|
  expect(page).to have_content?(expected_section)
end





