require 'rspec'
require 'page-object'
#require 'require_all'
#require 'data_magic'
#require 'fig_newton'
#require 'active_record'
require 'pg'

require_relative 'test_helper'

$base_url = 'https://webuildsg.github.io/data/'

World(PageObject::PageFactory)
World(TestHelper)

