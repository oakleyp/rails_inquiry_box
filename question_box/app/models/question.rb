class Question < ApplicationRecord
  belongs_to :user
  belongs_to :tag

  has_many :answers

end
