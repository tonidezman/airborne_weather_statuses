class NoteGenerator

  def self.generate_note(city:, temperature:)
    temp_flag = get_temp_flag(temperature)
    language  = get_language(city)
    translations[language][temp_flag]
  end

  def self.get_language(city)
    case city
    when 'Berlin', 'Frankfurt', 'Hamburg', 'Köln', 'München'
      'German'
    else
      'English'
    end
  end

  def self.get_temp_flag(temperature)
    return :hot  if temperature >= 30
    return :warm if temperature >= 18
    return :cold
  end

  def self.translations
    @translations ||= {
      "English" => {
        cold: "It is cold outside. Do you have any warm clothes.",
        warm: "It is ok temperature.",
        hot:  "Drink a lot of water.",
      },
      "German" => {
        cold: "Es ist kalt draußen. Hast du warme Kleidung?",
        warm: "Es ist ok Temperatur.",
        hot:  "Viel Wasser trinken.",
      },
    }
  end

end
