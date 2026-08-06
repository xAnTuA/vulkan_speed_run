# Prerequisition

I always wanned to make an game, i once tried using unity but at the time i had lower end device
and developing anything was pain in the ass. And so i want to learn how to create an game engine / 
graphic programming, to better know what actually happens.

Of course im tracking the time spend to see actually how much "speed run" it is.

# My knowledge before starting

I don't have much exprience with c++, i know some basics. Some ideas i know from other languages.
As of concept i currently know:

- the graphics use pipelining to convert a data in a specific way on each step,

- ray-tracing is checking if the ray is crossing the object, and if it is, it can be used for light
tracing, sound, or just rendering in some voxel games (each pixel is one ray),

- LoD, level of detail is used for simplification farther objects, as the smaller the model on screen
it uses less pixels, trashing all the computation that is needed for the high model.

- Windows, have surfaces that can be used by vulkan.

- Fencing, is rendering next frame in the time the current frame is displayed.


Im not exceptionaly familliar with any of them, and whats actually behind that sweet "abtract" idea.

# The metric

In the end, from an speed run standpoint keeping the quality of knowledge, not the hours shall
be seen as the metric of how fast i got there, but the time span between starting and ending
(probably days). And then the hours/days should be an good metric.



I was thinking about vulkan modules, and i tried to figure them out for more time than needed,
as of now the support with clangd is akward, and for this tutorial is to much to deal with to just
make things works. So I've cloned the template repo once again, and started in the layout as the
tutorial gives it in. Im currently finished chapter Draving a triangle -> setup -> Instance.
Tho I'm still doubtfull about this tutorial, as it tries to guide us in the complicated way,
and thats not because api is hard, but the author i believe might have skill isue.

I more less read the Validation layers, tho i copied the code, i still get the idea why it is
introduced now
