require "read_time"

lorum_ipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec erat sapien, condimentum a sem at, vestibulum lobortis felis. Phasellus ligula est, luctus quis dignissim et, porttitor eget turpis. Ut condimentum est dolor, sit amet tempus ipsum fermentum nec. Nullam tristique massa elit, nec vulputate tellus tempor quis. Proin finibus orci quis ipsum semper iaculis vel nec orci. Ut ex velit, porta sed pharetra quis, eleifend ut sem. Praesent cursus consectetur enim in convallis. Mauris id ligula felis. Maecenas non odio libero. Ut eu lorem a magna imperdiet vehicula. Nulla in imperdiet quam. Nullam nec neque tempus, ornare erat id, ornare risus. Nulla eget lacinia lorem, sit amet molestie lorem.

Praesent maximus ipsum at tellus mollis tempus. Sed at justo finibus, mattis urna in, placerat tortor. Etiam sed elit tristique, ornare erat ac, accumsan odio. Vestibulum dapibus magna vel orci viverra, egestas posuere sem bibendum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris aliquet semper arcu a condimentum. In urna turpis, eleifend nec ultricies vel, elementum nec nulla. Donec malesuada ligula in dolor consectetur, a pharetra mauris consectetur. Sed vulputate et neque sit amet gravida.

Vestibulum vitae euismod justo. Sed aliquam ornare metus non blandit. Donec venenatis odio auctor, gravida est quis, euismod nisi. Mauris eget nisi non justo porta viverra et mattis nunc. Donec augue libero, maximus a interdum quis, cursus id urna. Donec ut congue turpis. Cras cursus elit ligula. Aliquam erat volutpat. Curabitur eleifend ac nunc vitae pellentesque. Nullam posuere ultrices mi a vehicula.

Mauris eget lacinia nibh. Suspendisse quis nunc sem. Morbi at sollicitudin eros. Sed non vestibulum nisi. Aliquam eget sodales justo. Integer a eros nec elit molestie porta eget at justo. Integer ultricies nisi nec dui dignissim imperdiet. Fusce finibus dignissim mi et laoreet. Proin porttitor sed massa a suscipit.

Nunc sit amet laoreet nunc. Duis non mauris in arcu bibendum dictum. Duis venenatis feugiat sem at efficitur. Mauris et turpis justo. Donec nisl nibh, eleifend quis blandit eget, commodo scelerisque augue. Vivamus suscipit suscipit rhoncus. In feugiat erat ut velit laoreet, in pharetra risus luctus. Integer elementum ornare gravida. Sed cursus ex velit, nec feugiat diam pharetra ut. Nulla ornare dolor sed sem laoreet, at malesuada sapien sodales. Nunc in aliquam nisi, quis suscipit quam. Ut faucibus risus in nisl convallis, non efficitur nibh accumsan. Phasellus ullamcorper ipsum eu diam vehicula vehicula. "

RSpec.describe 'read_time method' do
  it 'returns the read time of an empty string' do
    result = read_time("")
    expect(result).to eq "Read time: 0 mins"
  end
  
  it 'return the read time of a short piece of text' do
    result = read_time("not many words")
    expect(result).to eq "Read time: <1 min"
  end

  it 'return the read time of a large body of text' do
    result = read_time(lorum_ipsum)
    expect(result).to eq "Read time: 2 mins"
  end
end