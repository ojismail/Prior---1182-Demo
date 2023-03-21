class PatientSession < ApplicationRecord
  belongs_to :doctor
  has_many :sickness
  has_one :question_and_answer
end
