class ShortenedUrl < ApplicationRecord
  validates :short_url, :long_url, :user_id, presence: true
  validates :short_url, uniqueness: true

  belongs_to :submitter,
    class_name: :User,
    foreign_key: :user_id,
    primary_key: :id

  def self.create_for_user_and_long_url(user, long_url)
    raise 'User must be in database' unless User.exists?(:id => user.id)
    raise 'Long url must be a string' unless long_url.is_a?(String)
    short_url = self.random_code
    ShortenedUrl.create!(short_url: short_url, long_url: long_url, user_id: user.id)
  end
  
  def self.random_code
    code_unique = false

    until code_unique
      code = SecureRandom.urlsafe_base64
      code_unique = true unless ShortenedUrl.exists?(:short_url => code)
    end

    code
  end

  self
end