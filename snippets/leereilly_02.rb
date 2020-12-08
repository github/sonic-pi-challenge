# Christmas #1 from @leereilly 🤟🏻

tick = 0

use_synth :prophet

live_loop :test do
  tick = tick + 1
  
  with_fx :reverb, mix: 0.2, room: 1 do
    sample :loop_industrial
    sample :bass_drop_c
    sleep 0.75
    sample :guit_e_slide
    sleep 1
    play 33
    
    if (tick % 2 == 0)
      play 28
    end
    
    if (tick % 4 == 0)
      sample :ambi_lunar_land
    end
  end
end
