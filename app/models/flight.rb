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

class Flight < ApplicationRecord
end
