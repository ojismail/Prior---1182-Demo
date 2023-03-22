class Symptom < ApplicationRecord
  has_many :consultation
  has_many :question
end
