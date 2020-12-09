use_random_seed 1349838
ns = (scale :e3, :minor_pentatonic)
3.times do
  use_synth:zawa
  play ns.choose
  sleep 0.25
  play ns.choose
  sleep 0.25
  play ns.choose, release: 3
  sleep 0.5
end
