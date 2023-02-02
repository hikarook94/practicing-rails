# frozen_string_literal: true

require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # それぞれ異なる状況でvalid?が2回呼ばれたら、エラーメッセージは上書きされるのか？の実験
  test 'seeing if errors are overridden when valid? is called twice with different contexts' do
    article = Article.new
    article.valid?(:publish)
    # binding.pry
    # binding.break
    # byebug
    puts
    puts '-- valid?(:publish)を呼んだ結果'
    puts article.errors.full_messages
    puts
    puts '-- 再びvalid?を呼んだ結果'
    puts article.errors.full_messages
  end
end

# $ bin/rails test test/models/article_test.rb:9
# Running via Spring preloader in process 97882
# Running via Spring preloader in process 97884
# Run options: --seed 24621

# # Running:

# -- valid?(:publish)を呼んだ結果
# Author can't be blank
# Body can't be blank

# -- 再びvalid?を呼んだ結果
# Author can't be blank
# Body can't be blank
# .

# Finished in 0.206097s, 4.8521 runs/s, 0.0000 assertions/s.
# 1 runs, 0 assertions, 0 failures, 0 errors, 0 skips
