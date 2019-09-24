module FlightsHelper
  def temperature_to_color(temp)
    temp = temp.to_i

    hot_color  = 'red'
    warm_color = 'orange'
    cold_color = 'indigo'

    return hot_color  if temp >= 30
    return warm_color if temp >= 15
    return cold_color
  end
end
