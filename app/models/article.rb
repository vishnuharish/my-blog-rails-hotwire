class Article < ApplicationRecord
  has_rich_text :body
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :body, length: {minimum: 20}

  after_create_commit -> { broadcast_prepend_to "articles"  }
  after_update_commit -> { broadcast_replace_to "articles"}
end
