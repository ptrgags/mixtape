#1. Copy this into a Sonic Pi buffer

#2. Change this to wherever you store the github repo
require "<path/to/github/repos/>mixtape/functions/measures"

#3. Press Play!

use_bpm 140
use_synth :subpulse

notes = [
  :D5, :D5,                 #hap-py
  :E5, :D5, :G5,            #birth=day to
  :Fs5, :D5, :D5,           #you, hap-py
  :E5, :D5, :A5,            #birth-day to
  :G5, :D5, :D5,            #you, hap-py
  :D6, :B5, :G5,            #birth-day dear
  :Fs5, :E5, :C6, :C6,      #<name here>, hap-py
  :B5, :G5, :A5,            #birth-day to
  :G5                       #you!
]
beats = [
  0.5, 0.5,
  1, 1, 1,
  2, 0.5, 0.5,
  1, 1, 1,
  2, 0.5, 0.5,
  1, 1, 1,
  1, 1, 0.5, 0.5,
  1, 1, 1,
  2
]

phrase notes, beats
