class User < ApplicationRecord
  has_many :memos, inverse_of: :user

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.user_name = auth["info"]["name"]
      user.screen_name = auth["info"]["nickname"]
      user.image_url = auth["info"]["image"]
    end
  end

  def self.update_with_omniauth(user, auth)
    user.update_attributes!(
      provider: auth["provider"],
      uid: auth["uid"],
      user_name: auth["info"]["name"],
      screen_name: auth["info"]["nickname"],
      image_url: auth["info"]["image"]
    )
  end
end
