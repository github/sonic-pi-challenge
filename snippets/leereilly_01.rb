# My first Sonic Pi snippet 🕺🏻
with_fx :reverb, room: 1 do
 use_random_seed 23001055 
  use_synth :square

  8.times do
    play (scale :e1, :minor_pentatonic).choose, release: rand
    sleep [0.125, 0.25].choose
  end
end
