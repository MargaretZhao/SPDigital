Given(/^the user load main page$/) do
  visit MainPage do |page|
    @page = page
  end
end