#  id          :bigint           not null, primary key
#  city        :string
#  note        :string
#  temperature :string
#  airborne_at :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :flight do
    city 'Ljubljana'
    note 'Pojdimo na Ljubljanski grad'
    temperature 25.6
    airborne_at 1.hour.ago
  end
end
