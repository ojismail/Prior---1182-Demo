class Symptom < ApplicationRecord
  belongs_to :consultation
  has_many :question
end
