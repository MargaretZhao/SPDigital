require 'rspec'
require 'page-object'
require 'pg'

require_relative 'test_helper'

World(PageObject::PageFactory)
World(TestHelper)

