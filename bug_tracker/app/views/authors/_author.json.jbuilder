# frozen_string_literal: true

json.extract! author, :id, :name, :created_at, :updated_at
json.url author_url(author, format: :json)
