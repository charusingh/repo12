class Sign < ActiveRecord::Base
  validates :name,:surnmae,:location,:contact,:password,:presence => true
end
