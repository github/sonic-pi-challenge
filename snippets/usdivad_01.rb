# Sonic Pi Sonnet 01 by David Su (@usdivad)

use_synth :dark_ambience
play (scale :E, :minor_pentatonic), amp: 3, attack: 1, release: 7

use_synth :beep
32.times do
  with_fx :panslicer, wave: 1, pre_amp: 0.8 do
    with_fx :vowel, vowel_sound: [1,2,3,4,5].choose, voice: 3 do
      play (scale :E, :minor_pentatonic).choose, amp: rrand(0.1, 0.9), release: [0.25, 0.5].choose
      sleep [0.125, 0.25].choose
    end
  end
end