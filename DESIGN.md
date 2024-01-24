Introduction

This is our first game with game maker studio 2 and our first game jam.

We are excited to be here and hope you enjoy our game.

Game Summary

This is a short game in space. You must try to survive.

Inspiration

This game takes inspiration from the pacifism mode of geometry wars 2 & 3, super mario bros, and a variety of arcade games.

Player Experience

The player will experience a short game with a variety of mechanics.

The game can be played in a variety of ways, and as a player becomes accustomed to the game, they will be able to replay it to attempt a variety of strategies.

There is no save, it's an arcade game, you can restart the game or respawn at any time. Pay us a quarter every time you die.

Platform

This is a game maker studio game, so it can be built on a wide variety of platforms.

It is currently built for windows and web, untested builds for other platforms may be available.

Using windows with a gaming computer is recommended. (Streaming not required.)

Development Software

Game maker studio 2, windows 11, vscode, windows termianl, git, github, itch.io, nginx, podman, aseprite

Genre

science fiction

Target Audience

everyone in the entire world who has ever lived or will ever live, especially those who like ferrets but do not adopt them.

Team

- dezren39 - Lead Designer, Developer
- padlox - Art Director, QA

Concept

what if you were in space and you had to survive?

Gameplay overview

mostly you move around and try to survive, you're in space and you've got a staff and a shield.

Theme Interpretation

there's more and more and it's not exactly containable.

Primary Mechanics

movement keys, limited control

Secondary Mechanics

expanding viewport, managing kinetic energy

Art

low resolution 8-bit with ornate details expected to be poorly aliased on a high resolution display.

Views

0 intro, locked, small window
1 intro scroll, high margin, small window
2 intro scroll, low margin, medium window
3 arcade mode, locked, large window
4 modern mode, low margin, large window

Theme Interpretation

There are multiple complex physics systems interacting with each other, and the player must manage them to survive. There are a variety of ways for objects to become dangerous or incapacitatingly numerous. The viewport starts tight and expands as the player progresses. As the player replays the game they bring the knowledge they gained from previous playthroughs and attempt new strategies.

Design

draw squiggles on paper, start seeing an image, find out what you drew.
must be physics simulation, avoid cheating, do everything with physics.

Audio

Music

Soothing music overlayed with ferrets is recommended.

Sound Effects

Ferret sounds

Unfortunately, there is no sound in space, as there is no air to carry the sound waves.

It's recommended to play this game with a ferret on your lap and a speaker playing appropriate ferret sounds.

Game Experience

progress through game, restart, etc.

UI

8-bit, figure it out is part of game.

Controls

Keyboard

wasd or arrow keys or vim keys to move
left to right or right to left triggers staff
diagonal triggers 'drive' which kind of pushes fast
spacebar triggers shield bash which can be used to push mobs, which can spark
enter q e trigger machine staff if in ship mode

gates are each controlled by switches, which are triggered by contact and can have interested outcomes

puddle can be consumed, if hit by staff will follow you
puddle mobs like water, if you consume the water they will follow you looking for more water

the portal can be obtained with little or no escape. dont add too much energy.

fuel powers ship engine.

squiggles follow you and multiply. they can be broken down, but be steadfast or they will multiply.

Development Timeline (screenshots in git repo docs folder)

- 1 Pirate Software Game Jam (2 weeks, Whenever Not Working Or Sleeping Or Whatever.)
  - draw mob, vip, shepard
  - get placeholder wall sprite
  - placeholder build level
  - make movement work
  - get mobs to move
  - make mobs kill shepard
  - make viewports and plan out
  - make gates work
  - make gates work again
  - replace everything with physics
  - make gates work again, now with physics
  - make mobs great again
  - make staff and early move rotation animation
  - make puddle, portal, fuel
  - make text and actually script intro scene
  - make portal really work
  - make portal return scene
  - replace staff rotation animation with physics
  - make squiggles and sun and fuel
  - push git clean
  - make ship animation
  - make staff ship movement mechanic
  - make squiggles work
  - ycc compile, test nginc/html5
  - build bouncy walls
  - make squiggles follow on contact
  - design document rough draft

TODO
- itch.io publish
- game jam submission
- bash (shepard move forward relative to xscale with shield woosh sparks)
- drive (shepard move diagonally with staff forward)
- portal (shepard teleport if touch without staff first)
- portal-medium (become moveable available to the player, is where portal sends player)
- vip returns, provides power-up and/or bonus, status report
- vip leaves,
- small creature on vip detaches and becomes a companion to defend with consequences for success failure
- certain scenarios caused sun to explode
- squiggles put things in the sun
- if squiggles put puddle mobs in sun, something extra bad happens.
- if you win, the white hole respawns as a sun the game 'resets' but you get a 2x size ship and heavy damage in second run, you are faster they are faster.
- settings, sound, slow-mode
- cast (shepard stopped, throws staff at direction had been moving, ?staff boomerangs?)
- bomb (mob can explode when fast and enough squiggles/kinetic energy, creates 2 mob on respawn)
- freeze (renders mob safe for a number of seconds allowing transport and/or destruction)
- game controller, mouse, touch, wacom stylus support
- steamdeck, ios, android, mac, linux support
- publish to steam, itch.io, etc.
- fine, sound i guess
