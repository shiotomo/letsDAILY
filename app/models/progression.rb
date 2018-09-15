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

class Progression < ApplicationRecord
  validates :comment, presence: true
  validates :task_id, presence: true

  belongs_to :task
end
