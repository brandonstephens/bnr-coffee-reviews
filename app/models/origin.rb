class Origin < ActiveRecord::Base
  #include ActiveModel::Validations

  has_many :coffee_beans
  has_many :roasters, through: :coffee_beans

  validates :country, format: { with: /\A[A-Z]{3}\z/, message: "must be an ISO-3166 3-character country code" }
  #validates_with CountryValidator

  before_validation :upcase_country

  private

  def upcase_country
    self.country = country.upcase
  end

end