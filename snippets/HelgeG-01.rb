# Helge Gudmundsen
use_random_seed 19691982
use_synth :blade
my_scale = (scale :e4, :minor_pentatonic)

with_fx :reverb, room: 0.6 do
  with_fx :ixi_techno, phase: 16, cutoff_min: 100  do
    with_fx :slicer, phase: 0.25 do
      with_fx :ping_pong, phase: 0.5 do
        8.times do
          3.times do
            play my_scale.choose, release: 2
          end
          sleep [0.5, 0.75].choose
        end
      end
    end
  end
end
