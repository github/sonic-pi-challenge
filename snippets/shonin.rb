live_loop :strings do
  use_synth :fm
  play 64, attack: 4, attack_level: 2.5, decay: 0.5, decay_level: 2, sustain: 0.75, sustain_level: 1, release: 1.25
  sleep 6
  play 69, attack: 4, attack_level: 2.5, decay: 0.5, decay_level: 2, sustain: 0.75, sustain_level: 1, release: 1.25
  sleep 6
end

live_loop :bass do
  use_synth :dtri
  play 28, attack_level: 3, attack: 1, decay_level: 1, decay: 0.2, release: 4
  sleep 12
end