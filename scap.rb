unless ARGV.size == 2
  raise <<-EOS
usage: ruby ~/scap/scap.rb pg Building
  EOS
else
  geometry_type, layer_name = ARGV
  case geometry_type
  when 'pt'
    print <<-EOS
id: #{layer_name}
type: circle
source: v
source-layer: #{layer_name}
paint: {
  circle-color: [
    rgb
    96
    125
    139
  ]
  circle-radius: 2.5
}
    EOS
  when 'ls'
    print <<-EOS
id: #{layer_name}
type: line
source: v
source-layer: #{layer_name}
paint: {
  line-color: [
    rgb
    96
    125
    139
  ]
}
    EOS
  when 'pg'
    print <<-EOS
id: #{layer_name}
type: fill
source: v
source-layer: #{layer_name}
paint: {
  fill-color: [
    rgb
    96
    125
    139
  ]
}
EOS
  else
    raise 'geometry_type has to be either pt, ls, or pg.'
  end
end

