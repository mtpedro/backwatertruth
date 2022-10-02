class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         has_many :posts

  validates :name, presence: true, length: { maximum: 16 }
  validates :name, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: true
end
