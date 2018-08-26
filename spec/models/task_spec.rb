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

require 'rails_helper'

RSpec.describe Task, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
