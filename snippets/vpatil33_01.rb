use_synth :hoover
use_random_seed 4527987
with_fx :reverb, room: 1 do
  
  7.times do
    play (scale :e, :minor_pentatonic).choose, attack: 0.15, release: 1
    sleep 0.3
  end
end
