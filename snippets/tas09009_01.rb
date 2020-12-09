
in_thread(name: :scale) do
  4.times do
    use_synth :piano
    play 52
    sleep 0.5
    use_synth :beep
    play 47
    sleep 0.5
    play 43
    sleep 0.5
    play 59
    sleep 0.5
  end
end

in_thread(name: :sound1) do
  4.times do
    sleep 1
    play sample :drum_bass_hard
    sleep 1
  end
end

in_thread(name: :sound2) do
  4.times do
    use_synth :dpulse
    play 43, attack: 0.3, sustain: 1, release: 0.7, amp: 0.5
    sleep 2
  end
end