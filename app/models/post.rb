# frozen_string_literal: true
#記事投稿

class Post < ApplicationRecord
  has_many :comments

  validates :user_name, presence: true, length: {in: 2..10}
  validates :title    , presence: true, length: {in: 4..20}
  validates  :content,   presence: true, length: {in: 5..100}
end
