require 'process_coerce_bytes'

RSpec.describe ProcessCoerceBytes do
  it 'parses test properly' do
    r = ProcessCoerceBytes.from_file('src/process_coerce_bytes.bin')

    expect(r.records[0].flag).to eq 0
    expect(r.records[0].buf).to eq "AAAA"
    expect(r.records[1].flag).to eq 1
    expect(r.records[1].buf).to eq "BBBB"
  end
end
