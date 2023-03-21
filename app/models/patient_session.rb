class PatientSession < ApplicationRecord
  has_many :symptom
  has_one :question_and_answer
end
