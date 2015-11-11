#These functions are useful for
#making phrases where there isn't necessarily
#a pattern

=begin
Play the same block with a given pattern
beats_list -- how long to sleep between each
    time the block is called
=end
def pattern beats_list
  beats_list.each do |beats|
    yield
    sleep beats
  end
end

=begin
Play a phrase of music.
note_list -- list of notes to play
beats_list -- list of number of beats to hold each note. must be
    the same length as note_list
=end
def phrase note_list, beats_list
  note_list.zip(beats_list).each do |note, beats|
    play note
    sleep beats
  end
end
