# frozen_string_literal: true

json.extract! payment, :id, :name, :amount, :author_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
