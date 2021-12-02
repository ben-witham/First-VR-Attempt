# Overview

This project is my first time for a lot of different things. This is my first time developing a 3D game, my first time developing in VR, and my first time using Godot beyond the simple 2D interface. I may have gone a little in over my head when I started this, and it showed in development time cost. A good amount of time spent on this was used hunting down obscure bugs that could be avoided if I had a little more idea of what I was doing. I also had a very grand plan in my head at the start of this project, and I tried to implement all of these things at the same time, meaning that none of them were done well or even at all.

The software in its current state loads the player onto a flat plane with a large sphere. The player can interact with the block by hitting it with their hands and the ball will respond to the hit by moving in the opposite direction.

I wanted to make this because VR is one of those things that fascinates me and gets me excited, and I wanted to learn how to get into that space in order to be able to develop interesting, engaging and immersive software. The most valuable lesson I learned is that it is incredibly difficult!

[See the software here!](https://youtu.be/t5HFDrZ_N54)

# Development Environment

The software was made in godot, an open-source object oriented game engine. I like to use godot because the engine is very small, and I am quickly running out of space on my computer.

Godot uses a script called GDscript which has similar syntax to python. In order to get the software running on the Quest headset, I needed to download some android tools to configure a export template for the Quest. If you're interested, I'll put the tutorial below.

# Useful Websites

* [This is the Godot Game Engine here](https://godotengine.org/)
* [VR Start Tutorial](https://docs.godotengine.org/en/3.4/tutorials/vr/vr_starter_tutorial.html)
* [VR Starting Point](https://docs.godotengine.org/en/3.4/tutorials/vr/vr_primer.html)
* [Setting up the Quest](https://docs.godotengine.org/en/3.4/tutorials/vr/developing_for_oculus_quest.html)
* [The Android aspect of the Quest](https://docs.godotengine.org/en/3.4/getting_started/workflow/export/exporting_for_android.html#doc-exporting-for-android)
* [This guy](https://www.youtube.com/channel/UCrbLJYzJjDf2p-vJC011lYw)  is actually currently employed to develop the godot engine, but he's got good tutorials here and he's also very active in the Godot XR channel on Discord so I would say this is the best resource here.

# Future Work

I'm actually not sure if I would want to improve this project. I'm thinking of leaving it in its current state as a testament to feature creep and the toll it takes on the development process. I also think that it would be nice to leave any negative feelings I had with this project to start with a new slate. But if I was to improve aspects of it, they would be:

* Player Interaction is incredibly basic right now, I would like there to be more stuff to do
* The players hands move strangely when the player is using the joystick to move
* The shading of everything is very static and non-immersive, so I'd want to improve that