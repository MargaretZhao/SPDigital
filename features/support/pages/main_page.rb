
class MainPage < BasePage

    def initialize_page

    end

    page_url($base_url)

    def click_icon(name)
        puts("in click_icon, icon:'#{name}'found")
        icon = @browser.element(:xpath => "//p[contains(text(),'#{name}')]")
        icon.click
    end

    def searchBy(expectTitle)
        title = @browser.h3().text
        puts("in searchBy, title:'#{title}'found")
        expect(title).to eq(expectTitle)
    end

end