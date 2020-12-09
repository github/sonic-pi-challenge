# Much love from Nashville, TN

use_bpm 120

live_loop :kick do
  6.times do
    sample :bd_haus, amp: 3, cutoff: 88
    sleep 2
  end
  
  sample :bd_haus, amp: 3, cutoff: 88
  sleep 1.5
  sample :bd_haus, amp: 3, cutoff: 88
  sleep 0.5
  sample :bd_haus, amp: 3, cutoff: 88
  sleep 1
  sample :bd_haus, amp: 3, cutoff: 88
  sleep 1
end

live_loop :snare do
  with_fx :reverb, room: 1, amp: 0.75 do
    sleep 2
    sample :sn_dolf
    sleep 2
  end
end

live_loop :bass do
  with_fx :distortion do
    with_fx :flanger, amp: 0.33 do
      use_synth :chipbass
      
      4.times do |n|
        play (scale :e2, :minor_pentatonic).choose, release: 1.5
        sleep 1
      end
    end
  end
end

live_loop :pads do
  with_fx :ping_pong, amp: 0.77 do
    use_synth :prophet
    4.times do
      play chord(:e, :minor), release: 5
      sleep 4
      play chord(:g, :major7), release: 5
      sleep 4
      play chord(:d, :sus2), release: 5
      sleep 4
      play chord(:d, :maj9), release: 5
      sleep 4
    end
  end
end

live_loop :lead do
  with_fx :reverb, room: 1 do
    with_fx :bitcrusher, bits: 8, amp: 1 do
      use_random_seed 531800814
      use_synth :blade
      
      4.times do |n|
        play (scale :e3, :minor_pentatonic).choose, release: rand
        sleep [0.5, 0.5, 0.66, 0.66][n]
        play (scale :e4, :minor_pentatonic).choose, release: rand
        sleep [0.5, 0.5, 0.66, 0.66][n]
        play (scale :e3, :minor_pentatonic).choose, release: rand
        sleep [0.5, 0.5, 0.68, 0.68][n]
        play (scale :e5, :minor_pentatonic).choose, release: rand
        sleep [0.5, 0.5, 0.5, 0.5][n]
        play (scale :e3, :minor_pentatonic).choose, release: rand
        sleep [0.66, 0.66, 0.5, 0.5][n]
        play (scale :e4, :minor_pentatonic).choose, release: rand
        sleep [0.66, 0.66, 0.5, 0.5][n]
        play (scale :e3, :minor_pentatonic).choose, release: rand
        sleep [0.68, 0.68, 0.5, 0.5][n]
      end
    end
  end
end
