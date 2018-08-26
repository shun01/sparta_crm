class Comment < ApplicationRecord
  belongs_to :customer

  validates :body,        presence: true
  validates :customer_id, presence: true
end
