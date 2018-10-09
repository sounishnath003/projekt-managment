class Team < ApplicationRecord
  has_many :users
  has_many :projects, dependent: :destroy

  accepts_nested_attributes_for :users, allow_destroy: true
end
