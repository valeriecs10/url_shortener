class Tagging < ApplicationRecord
  validates :tag_topic_id, :shortened_url_id, presence: true
  validates :tag_topic_id, uniqueness: { 
    scope: :shortened_url_id,
    message: 'url can only have one tag per topic'
  }

  belongs_to :topic,
   class_name: :TagTopic,
   foreign_key: :tag_topic_id,
   primary_key: :id
 
 belongs_to :url,
   class_name: :ShortenedUrl,
   foreign_key: :shortened_url_id,
   primary_key: :id

end