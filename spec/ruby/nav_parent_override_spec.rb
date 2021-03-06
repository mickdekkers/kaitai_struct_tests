require 'nav_parent_override'

RSpec.describe NavParentOverride do
  it 'parses test properly' do
    r = NavParentOverride.from_file('src/nav_parent_codes.bin')

    expect(r.child_size).to eq 3
    expect(r.child_1.data).to eq [73, 49, 50].pack('C*')
    expect(r.mediator_2.child_2.data).to eq [51, 66, 98].pack('C*')
  end
end
