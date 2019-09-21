# == Schema Information
#
# Table name: flights
#
#  id          :bigint           not null, primary key
#  city        :string
#  note        :string
#  temperature :string
#  airborne_at :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Flight, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
