class PatientSession < ApplicationRecord
  has_many :sickness
  has_one :question_and_answer
end
