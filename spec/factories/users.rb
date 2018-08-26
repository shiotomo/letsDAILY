# == Schema Information
#
# Table name: users
#
#  id          :bigint(8)        not null, primary key
#  provider    :string
#  uid         :string
#  user_name   :string
#  screen_name :string
#  image_url   :string
#  is_admin    :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :user do
    provider "MyString"
    uid "MyString"
    user_name "MyString"
    screen_name "MyString"
    image_url "MyString"
    is_admin false
  end
end
