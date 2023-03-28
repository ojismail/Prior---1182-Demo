class Symptom < ApplicationRecord
  has_many :consultations

  def question_1_options
    self[:question_1_options] || []
  end

  def question_2_options
    self[:question_2_options] || []
  end

  def question_3_options
    self[:question_3_options] || []
  end

  def question_4_options
    self[:question_4_options] || []
  end

  def question_5_options
    self[:question_5_options] || []
  end

  def question_6_options
    self[:question_6_options] || []
  end

  def question_7_options
    self[:question_7_options] || []
  end
end
