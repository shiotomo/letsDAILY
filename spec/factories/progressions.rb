# == Schema Information
#
# Table name: progressions
#
#  id         :bigint(8)        not null, primary key
#  comment    :text
#  task_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :progression do
    comment "MyText"
    task_id 1
  end
end
