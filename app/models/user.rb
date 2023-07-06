# frozen_string_literal: true

class User < ApplicationRecord
  has_many :categories, dependent: :destroy
  has_many :payments, dependent: :destroy

  # Add the 'name' attribute to the list of accessible attributes
  attr_accessor :name

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
