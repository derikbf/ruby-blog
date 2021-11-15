class User < ApplicationRecord
  rolify
  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable,
         #:confirmable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable
end
