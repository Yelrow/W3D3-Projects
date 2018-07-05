# == Schema Information
#
# Table name: shortened_urls
#
#  id        :bigint(8)        not null, primary key
#  long_url  :string           not null
#  short_url :string
#  user_id   :integer          not null
#

class ShortenedUrl < ApplicationRecord
  validates :long_url, :user_id, presence: true
  validates :short_url, uniqueness: true
  
  def self.random_code
    SecureRandom.urlsafe_base64
  end
  
end
