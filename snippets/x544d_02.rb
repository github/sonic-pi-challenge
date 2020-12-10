# Welcome to Sonic Pns

live_loop :base_th do
  
  ns= (scale :e3, :minor_pentatonic)
  with_fx :flanger,room:0 do
    use_synth :hoover
    9.times do
      play ns.choose,amp:0.4 , release:2
      sleep 0.5
    end
    
    use_synth :dsaw
    4.times do
      play ns.choose,amp:4 , release:2,  attack: 1
      sleep 0.5
    end
  end
end


live_loop :temp_th do
  
  ns= (scale :e3, :minor_pentatonic)
  with_fx :band_eq do
    use_synth :hollow
    2.times do
      play ns.choose,amp:1 , release:0.5, cutoff:rrand(100, 130)
      sleep 1
    end
  end
end
