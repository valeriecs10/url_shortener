class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  has_many :submitted_urls,
    class_name: :ShortenedUrl,
    foreign_key: :user_id,
    primary_key: :id

  has_many :visits,
    class_name: :Visit,
    foreign_key: :user_id,
    primary_key: :id

  has_many :visited_urls, 
    -> { distinct },
    through: :visits, 
    source: :visited_url

  has_many :votes,
    class_name: :Vote,
    foreign_key: :user_id,
    primary_key: :id,
    dependent: :destroy

end