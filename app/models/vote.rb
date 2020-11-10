class Vote < ApplicationRecord
  validates :user_id, :shortened_url_id, presence: true
  validates :user_id, uniqueness: {
    scope: :shortened_url_id,
    message: 'can only vote once per url'
  }
  validate :no_self_voting

  def no_self_voting
    if user_id == ShortenedUrl.find_by_id(shortened_url_id).user_id
      errors.add(:vote, 'cannot be cast for user\'s own url')
    end
  end

  belongs_to :voter,
    class_name: :User,
    foreign_key: :user_id,
    primary_key: :id

  belongs_to :shortened_url,
    class_name: :ShortenedUrl,
    foreign_key: :shortened_url_id,
    primary_key: :id
end