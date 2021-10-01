class User < ApplicationRecord
  
  has_many :events

  devise :database_authenticatable, :registerable,
          :validatable
end
