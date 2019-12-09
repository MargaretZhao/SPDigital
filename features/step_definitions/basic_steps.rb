

When(/^the user click on icon "(.*?)" in the middle of the page$/) do |icon|
  on(MainPage) do |page|
    page.click_icon(icon)
  end
end
  
Then(/^a chart with title "([^"]*)" should display$/) do |title|
  on(MainPage) do |page|
    value = page.fetch_title()
    #puts("title pass in is = '#{title}'")
    #puts("value got from web page is = '#{value}'")
    expect(title).to eq(value)
  end
end