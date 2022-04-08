# frozen_string_literal: true

class User < ApplicationRecord
  NICKNAME_FORMAT = /\w/.freeze
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, length: { minimum: 3 }, on: :create
  validates :name, presence: true
  validates :nickname, presence: true, uniqueness: true, format: NICKNAME_FORMAT
end
