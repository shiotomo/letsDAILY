# == Schema Information
#
# Table name: memos
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  body       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :memo do
    title "MyString"
    body "MyText"
  end
end
