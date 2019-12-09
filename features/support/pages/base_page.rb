class BasePage
  include PageObject
  include DataMagic

  require_relative '../test_helper'
  include TestHelper

  page_url($base_url)

end
