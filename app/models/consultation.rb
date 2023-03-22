class Consultation < ApplicationRecord
  validates :status, inclusion: { in: %w(open active completed) }

  belongs_to :patient
  belongs_to :symptom
  has_one :question_and_answer
end
