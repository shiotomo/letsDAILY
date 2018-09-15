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

require 'rails_helper'

RSpec.describe Progression, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
