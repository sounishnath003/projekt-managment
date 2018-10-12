class Comment < ApplicationRecord
  belongs_to :project, dependent: :destroy
end

