class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :registerable, :recoverable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :rememberable, :validatable
end
