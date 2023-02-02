# frozen_string_literal: true

class Article < ApplicationRecord
  # WIPで保存した時
  validates :author_id, presence: true
  # 公開した時
  validates :body, presence: true, on: :publish
end
