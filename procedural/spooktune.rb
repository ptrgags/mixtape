use_bpm 120

patterns = [
  [1, 1, 0.5, 1],
  [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5],
  [0.5, 1, 0.5, 0.5, 1, 0.5],
  [0.25, 0.5, 0.25, 1, 0.5, 0.5, 1]
]

live_loop :drums do
  patterns.choose.each do |x|
    sample :bd_haus
    sleep x
  end
end

live_loop :cymbals do
  patterns.choose.each do |x|
    sample :elec_wood, rate: rrand(1, 5), amp: 0.7
    sleep x
  end
end

progression = ring :A, :D, :E, :A

live_loop :ambience do
  use_synth :dark_ambience
  c = chord(progression.tick, :minor)
  play_chord c, amp: 3, sustain: 2
  sleep 4
end

live_loop :lead do
  use_synth :hollow
  patterns.choose.each do |x|
    c = chord(progression.tick, :minor)
    play c.choose, amp: 3
    sleep x * 2
  end
end
