
class MainPage < BasePage

    def initialize_page

    end

    page_url($base_url)

    def click_icon(name)
        puts("in click_icon, icon:'#{name}'found")
        icon = @browser.element(:xpath => "//p[contains(text(),'#{name}')]")
        icon.click
    end

    def fetch_title()
        title = @browser.h3().text
        puts("in fetch_title, title:'#{title}'found")
        return title
    end

end