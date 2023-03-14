# frozen_string_literal: true

class Account < ApplicationRecord
  acts_as_paranoid

  scope :personal, -> { where(personal: true) }
  scope :business, -> { where(personal: false) }

  validates :name, presence: true, allow_blank: false
  validates :name, length: { maximum: 255 }
end
