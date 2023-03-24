class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :consultations
  enum role: [:patient, :doctor]
  scope :doctors, -> { where(role: 'doctor') }
  scope :patients, -> { where(role: 'patient') }

  def role=(value)
    super(value.to_i)
  end

end
