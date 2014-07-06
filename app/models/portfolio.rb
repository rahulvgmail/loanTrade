class Portfolio < ActiveRecord::Base
  has_many :loans
end
