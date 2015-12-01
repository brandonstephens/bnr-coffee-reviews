class Review < ActiveRecord::Base
  has_many :coffee_beans
end