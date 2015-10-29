require 'rspec'
require 'test/test_helper'

describe Circle do
	should_have_many :users
	should_have_one :owner
end