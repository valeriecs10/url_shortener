class Visit < ApplicationRecord
  validates :user_id, :shortened_url_id, presence: true

  def self.record_visit!(user, shortened_url)
    raise 'User must be in the database' unless User.exists?(:id => user)
    raise 'Shortened url must be in the database' unless ShortenedUrl.exists?(:id => shortened_url)
    Visit.create!(user_id: user, shortened_url_id: shortened_url)
  end
end