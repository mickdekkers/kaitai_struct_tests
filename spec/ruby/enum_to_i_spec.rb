# coding: utf-8
require 'enum_to_i'

RSpec.describe EnumToI do
  it 'parses test properly' do
    r = EnumToI.from_file('src/enum_0.bin')

    expect(r.pet_1).to eq :animal_cat
    expect(r.pet_2).to eq :animal_chicken

    expect(r.pet_1_i).to eq 7
    expect(r.one_lt_two).to eq true
  end
end
