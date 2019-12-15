class User < ActiveRecord::Base
  has_secure_password
  has_many :users_works
  has_many :works, through: :users_works, dependent: :destroy
  validates :email, presence: true, uniqueness: true
  validate :date_of_birth_cannot_before_seventeen_age
  validates :password, presence: true, on: :create, length: { minimum: 5 }, confirmation: true

  def date_of_birth_cannot_before_seventeen_age
    if date_of_birth.present? && Date.today - date_of_birth <= 17
      errors.add(:date_of_birth, "Age must be seventeen years")
    end
  end
end
