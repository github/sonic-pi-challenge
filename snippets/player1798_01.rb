ns = (scale :e3, :minor_pentatonic)

use_random_seed 302733434

with_fx :distortion do
  use_synth :blade
  4.times do
    play ns.choose, attack: 1, release: 1, amp: 0.1
  end
end

sleep 1
use_synth :sine
16.times do
  play ns.choose, release: rand, amp: 0.7, pan: 0
  sleep [0.125, 0.25].choose
  play ns.choose, amp: 0.3, pan:[-1, 1].choose, release: 1
end

with_fx :whammy do
  use_synth :dark_ambience
  12.times do
    play ns.choose, attack: 1, release: 3, amp: 0.2
    sleep 0.125
  end
end

