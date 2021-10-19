# frozen_string_literal: true

class User < ApplicationRecord
  has_many :events

  devise :database_authenticatable, :registerable,
         :validatable
end
