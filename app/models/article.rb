class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum:5, maximum:80}
  validates :body, presence: true, length: {minimum:10} 
end
