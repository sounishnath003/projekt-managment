class Project < ApplicationRecord
    belongs_to :team
    belongs_to :user
    has_many :comments

    accepts_nested_attributes_for :team

    # public activity
    include PublicActivity::Model
    tracked owner: Proc.new {|controller, model| controller.current_user }
end
