class Consultation < ApplicationRecord
  validates :status, inclusion: { in: %w[Active Closed], message: "Status is not included in the list" }, allow_nil: true

  belongs_to :user
  belongs_to :symptom

  after_initialize :set_default_status, if: :new_record?

  # Add a validation for the rating attribute if needed, for example:
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }, allow_nil: true

  private

  def set_default_status
    self.status ||= 'active'
  end
end
