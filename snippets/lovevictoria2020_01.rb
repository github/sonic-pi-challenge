use_synth :dark_ambience
use_random_seed 465874293


with_fx :bitcrusher, room: 5 do
  10.times do
    play (scale :e5,:minor_pentatonic).choose, release: rand
    sleep 0.125
  end
end