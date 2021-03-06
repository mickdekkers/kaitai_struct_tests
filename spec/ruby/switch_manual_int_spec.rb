require 'switch_manual_int'

RSpec.describe SwitchManualInt do
  it 'parses test properly' do
    r = SwitchManualInt.from_file('src/switch_opcodes.bin')

    expect(r.opcodes.size).to eq 4

    expect(r.opcodes[0].code).to eq 83
    expect(r.opcodes[0].body.value).to eq 'foobar'

    expect(r.opcodes[1].code).to eq 73
    expect(r.opcodes[1].body.value).to eq 0x42

    expect(r.opcodes[2].code).to eq 73
    expect(r.opcodes[2].body.value).to eq 0x37

    expect(r.opcodes[3].code).to eq 83
    expect(r.opcodes[3].body.value).to eq ''
  end
end
