class Patient < ApplicationRecord
  belongs_to :disease
  belongs_to :waiting_list
  belongs_to :hospital
  validates :name, presence: true
  validates :address, presence: true
  validates :age, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
