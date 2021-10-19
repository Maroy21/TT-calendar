# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :body, presence: true
end
