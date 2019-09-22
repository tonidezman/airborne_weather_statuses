require 'rails_helper'

RSpec.describe NoteGenerator do

  context "hot weather" do
    it "returns note for German speaking destination" do
      note = NoteGenerator.generate_note(city: 'Berlin',    temperature: 30)
      expect(note).to eq('Viel Wasser trinken.')
      note = NoteGenerator.generate_note(city: 'Frankfurt', temperature: 35)
      expect(note).to eq('Viel Wasser trinken.')
      note = NoteGenerator.generate_note(city: 'Hamburg',   temperature: 40)
      expect(note).to eq('Viel Wasser trinken.')
      note = NoteGenerator.generate_note(city: 'Köln',      temperature: 45)
      expect(note).to eq('Viel Wasser trinken.')
      note = NoteGenerator.generate_note(city: 'München',   temperature: 32)
      expect(note).to eq('Viel Wasser trinken.')
    end

    it "returns note for English speaking destination" do
      note = NoteGenerator.generate_note(city: 'London', temperature: 33)
      expect(note).to eq('Drink a lot of water.')
    end

    it "returns note for UNKNOWN speaking destination" do
      note = NoteGenerator.generate_note(city: 'Ljubljana', temperature: 37)
      expect(note).to eq('Drink a lot of water.')
    end
  end

  context "warm weather" do
    it "returns note for German speaking destination" do
      note = NoteGenerator.generate_note(city: 'Berlin',    temperature: 22)
      expect(note).to eq('Es ist ok Temperatur.')
    end

    it "returns note for English speaking destination" do
      note = NoteGenerator.generate_note(city: 'London', temperature: 18)
      expect(note).to eq('It is ok temperature.')
    end

    it "returns note for other speaking destination" do
      note = NoteGenerator.generate_note(city: 'Ljubljana', temperature: 21)
      expect(note).to eq('It is ok temperature.')
    end
  end

  context "cold weather" do
    it "returns note for German speaking destination" do
      note = NoteGenerator.generate_note(city: 'Berlin',    temperature: -5)
      expect(note).to eq('Es ist kalt draußen. Hast du warme Kleidung?')
    end

    it "returns note for English speaking destination" do
      note = NoteGenerator.generate_note(city: 'London', temperature: 8)
      expect(note).to eq('It is cold outside. Do you have any warm clothes.')
    end

    it "returns note for other speaking destination" do
      note = NoteGenerator.generate_note(city: 'Ljubljana', temperature: -7)
      expect(note).to eq('It is cold outside. Do you have any warm clothes.')
    end
  end

end
