class Sickness < ApplicationRecord
  belongs_to :patient_session
  has_many :question
end
