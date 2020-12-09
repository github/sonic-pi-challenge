s = (scale :E, :minor_pentatonic, num_octaves: 2)

use_synth :tb303
i = 0
40.times do
  play s[i] - 24, release: 0.1
  i += dice(3)
  sleep 0.1
end
