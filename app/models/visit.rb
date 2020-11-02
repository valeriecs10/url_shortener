class Visit < ApplicationRecord
  validates :user_id, :shortened_url_id, presence: true

  def self.record_visit!(user, shortened_url)
    raise 'User must be in the database' unless User.exists?(:id => user)
    raise 'Shortened url must be in the database' unless ShortenedUrl.exists?(:id => shortened_url)
    Visit.create!(user_id: user, shortened_url_id: shortened_url)
  end

  belongs_to :visitor,
    class_name: :User,
    foreign_key: :user_id,
    primary_key: :id

  belongs_to :visited_url,
    class_name: :ShortenedUrl,
    foreign_key: :shortened_url_id,
    primary_key: :id
    
end