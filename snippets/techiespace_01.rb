sleep_time = 0.25
amp_val = 2.0
ns = (scale :e3, :minor_pentatonic)
sample :sn_dub
live_loop :table_te_m do
  sample :tabla_te_m
  sleep sleep_time
  sample :elec_blip, attack: 0.01, cutoff: rrand(100,131), amp: amp_val
  play ns.choose, release: 0.5, cutoff: rrand(10,70)
  sleep sleep_time
  sleep_time -= 0.001
  amp_val -= 0.1
  if sleep_time > 1.25 or amp_val <= 0
    sample :sn_dub
    stop
    break
  end
end
