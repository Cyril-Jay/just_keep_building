class User < ApplicationRecord
  has_many :walls
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
