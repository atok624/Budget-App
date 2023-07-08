class Category < ApplicationRecord
  belongs_to :user
  has_many :payments, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  validates :icon, presence: true

  def self.total_amount(user_id)
    joins(:payments).where(payments: { user_id: user_id }).sum(:amount)
  end
  def total_transaction_amount
    payments.sum(:amount)
  end
end
