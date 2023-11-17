# frozen_string_literal: true

class DoIt < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { minimum: 5 }
end
