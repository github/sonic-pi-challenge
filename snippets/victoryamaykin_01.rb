# Hoping that this slaps, E minor random riff w/ FX
# Victor Yamaykin

s = (scale :E, :minor_pentatonic)

define :intro do
  with_fx :echo, phase: 0.5, decay: 1 do
    
    use_synth :zawa
    play s, release: 2.5, phase: 2, amp: 0.5
    sample :ambi_lunar_land
    sleep 2
    
  end
end

define :build_up do
  with_fx :reverb, room: 1 do
    use_synth :blade
    
    in_thread do
      10.times do
        sample :drum_heavy_kick
        sleep 0.5
      end
    end
    
    in_thread do
      10.times do
        sample :drum_tom_mid_hard, attack: 0.1, attack_level: 1, decay: 0.2
        sleep 0.5
      end
    end
    
    in_thread do
      10.times do
        use_synth :piano
        play s.choose
        sleep 0.5
      end
    end
    
  end
  
  define :main do
    10.times do
      use_synth :prophet
      play s.choose, release: rand, pan: rrand(-1, 1)
      sleep 0.125
    end
  end
end

intro
build_up
main

