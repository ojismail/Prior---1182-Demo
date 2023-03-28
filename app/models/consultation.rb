class Consultation < ApplicationRecord
  validates :status, inclusion: { in: %w[Active Closed], message: "Status is not included in the list" }, allow_nil: true

  belongs_to :user
  belongs_to :symptom

  after_initialize :set_default_status, if: :new_record?
  after_initialize :assign_rating, if: :new_record?

  # Add a validation for the rating attribute if needed, for example:
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }, allow_nil: true

  private

  def assign_rating
    self.rating = rand(1..5) # This assigns a random rating between 1 and 5; modify as needed
  end

  def set_default_status
    self.status ||= 'active'
  end
end
