class Consultation < ApplicationRecord
  validates :status, inclusion: { in: %w[pending active closed], message: "Status is not included in the list" }, allow_nil: true

  belongs_to :user
  belongs_to :symptom
end
