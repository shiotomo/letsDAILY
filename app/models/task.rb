# == Schema Information
#
# Table name: tasks
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  body       :text
#  importance :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Task < ApplicationRecord
end
