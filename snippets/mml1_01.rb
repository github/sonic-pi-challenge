with_fx :ping_pong do
  use_synth :mod_sine
  
  8.times do
    play [67,40,55,62].choose, release: [0.125, 0.75, 0.25, 0.5].choose
    sleep [0.125,0.25].choose
    play [71, 74, 76].choose, decay: [0.125,0.25,0.5].choose
    sleep [0.25,0.125].choose
  end
end
