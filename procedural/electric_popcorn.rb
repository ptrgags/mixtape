use_synth :tb303
use_bpm 140

counter = 0

live_loop :cool_stuff do
  counter += 1
  roots = [:E4, :A4, :B4, :E4]
  root = roots[counter / 60 % 4]
  play choose(chord(root, :minor)), release: 0.25, cutoff: rrand(60, 120), amp: 0.5
  sleep 0.25
end

live_loop :bass_drums do
  sample :bd_tek, amp: 2
  sleep 1
end
