class Tagging < ApplicationRecord
  validates :tag_topic_id, :shortened_url_id, presence: true
  validates :tag_topic_id, uniqueness: { 
    scope: :shortened_url_id,
    message: 'url can only have one tag per topic'
  }
end