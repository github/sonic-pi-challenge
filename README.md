<sup>
  <strong>Quick links:</strong> <a href="#background">Background</a> • <a href="#what-you-will-need">What you will need</a> • <a href="#challenge-brief">Challenge Brief</a> • <a href="#tips">Tips</a> • <a href="#getting-started">Getting Started</a> • <a href="#examples">Examples</a> • <a href="#submit-and-share">Submit and Share</a>
</sup>

# GitHub Universe2020 Sonic Pi Challenge

__OK, this is going to be fun. It calls for some awesome ascii-art!__


```
# ██    ██ ███    ██ ██ ██    ██ ███████ ██████  ███████ ███████ ██████   ██████  ██████   ██████ 
# ██    ██ ████   ██ ██ ██    ██ ██      ██   ██ ██      ██           ██ ██  ████      ██ ██  ████ 
# ██    ██ ██ ██  ██ ██ ██    ██ █████   ██████  ███████ █████    █████  ██ ██ ██  █████  ██ ██ ██ 
# ██    ██ ██  ██ ██ ██  ██  ██  ██      ██   ██      ██ ██      ██      ████  ██ ██      ████  ██ 
#  ██████  ██   ████ ██   ████   ███████ ██   ██ ███████ ███████ ███████  ██████  ███████  ██████  
#                                                                                                  
#                                                       ╘
#                                                ─       ╛▒╛
#                                                 ▐╫       ▄█├
#                                          ─╟╛      █▄      ╪▓▀
#                                ╓┤┤┤┤┤┤┤┤┤  ╩▌      ██      ▀▓▌
#                                 ▐▒   ╬▒     ╟▓╘    ─▓█      ▓▓├
#                                 ▒╫   ▒╪      ▓█     ▓▓─     ▓▓▄
#                                ╒▒─  │▒       ▓█     ▓▓     ─▓▓─
#                                ╬▒   ▄▒ ╒    ╪▓═    ╬▓╬     ▌▓▄
#                                ╥╒   ╦╥     ╕█╒    ╙▓▐     ▄▓╫
#                                           ▐╩     ▒▒      ▀▀
#                                                ╒╪      ▐▄
#                        
#                             _____             __        ____  __
#                            / ___/____  ____  /_/____   / __ \/_/
#                            \__ \/ __ \/ __ \/ / ___/  / /_/ / /
#                           ___/ / /_/ / / / / / /__   / ____/ /
#                          /____/\____/_/ /_/_/\___/  /_/   /_/
#                        
#                         ___             _ _         
#                        / __\ |__   __ _| | | ___ _ __   __ _  ___ 
#                       / /  | '_ \ / _` | | |/ _ \ '_ \ / _` |/ _ \
#                      / /___| | | | (_| | | |  __/ | | | (_| |  __/
#                      \____/|_| |_|\__,_|_|_|\___|_| |_|\__, |\___|
#                                                        |___/      
```

## Background

<img align="right" src="https://githubuniverse.com/assets/img/speakers/Sam_Aaron_Headshot.jpg" width="260">

Let's get started. Hello! I'm <a href="">http://sam.aaron.name/>Sam Aaron</a>.

I created a thing called [Sonic Pi](https://sonic-pi.net/) 
which lets you turn code into music. 

As part of GitHub Universe 2020 I delivered an [introductory workshop on
how to start live coding synths and beats with Sonic Pi](https://githubuniverse.com/Express-yourself-with-code-Learn%20to%20live%20code%20beats%20and%20riffs%20with%20Sonic%20Pi/). 

(You may have already watched it, in which case, hello again!).

In that workshop I issued a challenge to get you to write a bit of code
which I could use in my [live performance](https://githubuniverse.com/Closing-performance-live-coded-DJ-set-with-Sam-Aaron-on-Sonic-PI/). Once I have all the
submissions I'll choose a nice selection of them to incorporate into my
performance.

All entries will feature in a public repo so everyone will be able to
jam with, mash it up and perhaps even perform your live coding debut
with it at an upcoming conference.


## What you will need

* An open mind
* Some headphones
* A computer with Sonic Pi installed
* Willingness to share with others.


## Challenge Brief

Write a short riff/melody using `(scale :E, :minor_pentatonic)`.

That's really all there is to it. It can be in any style, using any
synth, sample or FX that Sonic Pi offers. Ideally your riff is fairly
short (otherwise if I use it I might have to trim it). This means that
your code doesn't have to be very long just 3-4 lines is perfectly
acceptable.

All submissions will be considered for the performance - especially very
simple coded riffs.

__Note that using your own samples isn't available as an option in this
challenge as I won't have access to your personal sample files.__

Once you've coded up your riff, all you need to do is to submit your
code to SUBMISSION-URL

## Tips

1. All submissions will be considered
2. Simple code is just as likely to be picked as complex code.
3. Ideally the sound should play for no more than 10 seconds (any submission I use might be trimmed).
4. Submissions can only be text files with the code.
5. Only code covered in [The Sonic Pi Tutorial](https://sonic-pi.net/tutorial) will be considered.
6. Have fun! Share your coded riff with your friends and see what they think!

## Getting started

OK, so you want to get started? 

Firstly you might want to watch the Universe2020 Sonic Pi workshop video: WORKSHOP-VID-URL.

Next you might want to check out [The Sonic Pi Tutorial](https://sonic-pi.net/tutorial). 

I would suggest whizzing through [Section 2 on Synths](https://sonic-pi.net/tutorial#section-2) 
and the start of [Section 5 on Programming Structures](https://sonic-pi.net/tutorial#section-5)
especially the [section on iteration and loops](https://sonic-pi.net/tutorial#section-5-2).

Essentially you'll just need to understand `play` and `sleep` and which
notes to use. 

The `:e` `:minor_pentatonic` scale includes the following
notes:
`[28, 31, 33, 35, 38, 40, 43, 45, 47, 50, 52, 55, 57, 59, 62, 64, 67, 69, 71, 74, 76]`

So whenever you call `play` be sure to use one of these notes. For example:

```
# A Valid Entry
play 28
sleep 0.5
play 33
sleep 0.5
play 59
sleep 0.125
play 45
```

Of course, you might want to embelish your riff by using `use_synth` to
change the synthesiser, use the `release:` opt to change the length of
each note, use randomisation to choose one of a set of notes: `[45, 52, 64, 71].choose`, 
[bring in samples](https://sonic-pi.net/tutorial#section-3),
[use FX blocks](https://sonic-pi.net/tutorial#section-6) and anything
else you find fun. If it's included in the Sonic Pi tutorial then its
fine to use it in your submission.

So experiment and play!

## Examples

The following are a few example submissions you can either use as
starting points for your own or inspiration to sow creative seeds into
your mind.

```
# Random Riff

use_random_seed 409832 

8.times do
  play (scale :e3, :minor_pentatonic).choose, release: rand
  sleep 0.125
end

```

```
# Simple Ditty
use_synth :dsaw 
play 28, release: 2
sleep 0.5
play 33, release: 0.5
sleep 0.5
play 59, release: 0.1
sleep 0.125
play 45, release: 1
```

```
# Random Rhythm Riff w/ FX
with_fx :reverb, room: 1 do
 use_random_seed 23001055 
  use_synth :square

  8.times do
    play (scale :e1, :minor_pentatonic).choose, release: rand
    sleep [0.125, 0.25].choose
  end
end
```

## Submit and Share!

Once you have your sumbission please submit a pull request adding your riff/melody to the `/snippets` directory named `username_01`, where _username_ is your GitHub username.

Thanks so much for taking part, live coding your own riff and sharing it with us. Please do tune into the performance to see if your submission will feature!

## Enjoy!

Take care and please do consider joining our friendly community:
http://in-thread.sonic-pi.net
