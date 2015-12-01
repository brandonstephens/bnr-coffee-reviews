class CoffeeBean < ActiveRecord::Base
  belongs_to :roaster
  belongs_to :origin
  belongs_to :review
  has_one :tasting_note, dependent: :destroy
end