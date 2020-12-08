use_random_seed 12223444
ns = (scale :e3, :minor_pentatonic)
with_fx :reverb, room: 0.9 do
  with_fx :ring_mod do
    use_synth :prophet
    7.times do
      play ns.choose, release: rand, attack:0.05
      sleep [0.15,0.175,0.25].choose
    end
  end
end
