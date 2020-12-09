with_fx :reverb, room: 0.5 do
  use_random_seed 7
  use_synth :dsaw
  
  5.times do
    play (scale :e1, :minor_pentatonic).choose, release: 0.25, amp:1.25
    sleep 0.25
    play (scale :e1, :minor_pentatonic).choose, release: 0.25, amp:2.50
    sleep 0.25
    play (scale :e1, :minor_pentatonic).choose, release: 0.25, amp:5.0
    sleep 0.25
  end
end