class Article < ApplicationRecord
    include Visible
  
    has_many :comments, dependent: :destroy
    has_one_attached :avatar
  
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 5 }
  end
  
  
