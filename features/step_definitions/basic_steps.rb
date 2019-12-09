

When(/^the user click on icon "(.*?)" in the middle of the page$/) do |icon|
  on(MainPage) do |page|
    page.click_icon(icon)
  end
end
  
Then(/^a chart with title "([^"]*)" should display$/) do |title|
  on(MainPage) do |page|
    # here could specify time want to retry to find the chart title
    tryt = 1
    findTitle = false
    (1..tryt).each do |i|
      begin
        page.searchBy(title)
        findTitle = true
        break
      rescue Exception => e
        puts "Warn #{i}: the chat title '#{title}' not exist"
        sleep 1
      end
    end
  end
end