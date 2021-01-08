ns = (scale :e3, :minor_pentatonic)

# IDM Breakbeat (edited) from  https://sonic-pi.net/
define :play_bb do |n|
  sample :ambi_drone, rate: [0.25, 0.5, 0.125, 1].choose, amp: 0.25 if rand < 0.125
  sample :ambi_lunar_land, rate: [0.5, 0.125, 1, -1, -0.5].choose, amp: 0.25 if rand < 0.125
  sleep sample_duration(:loop_amen) / n
end


in_thread do
  use_synth :fm
  sleep 2
  loop do
    28.times do
      sample :drum_bass_hard, amp: 0.8
      sleep 0.25
      play ns.choose, release: 0.2
      sample :elec_cymbal, rate: 12, amp: 0.6
      sleep 0.25
    end
    sleep 4
  end
end


live_loop :ft do
  28.times do
    play chord(:e3, :minor).choose, release: rrand(0.05, 0.3), cutoff: rrand(50, 90), amp: 0.5
    sleep 0.125
  end
  play ns.choose, release: 2, note_slide: 4, cutoff: 10, cutoff_slide: 4, detune: rrand(0, 0.2), pan: rrand(-1, 0), pan_slide: rrand(4, 8)
end

