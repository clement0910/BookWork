class User < ApplicationRecord

  validates :email, uniqueness: true, presence: true
  validates :campus, inclusion: { in: %w[Lyon] }, presence: true
  validates :accept_cgv, presence: true, inclusion: { in: [true] }
end
