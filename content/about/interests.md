---
title: "Interests"
description: "What makes me tick"
imgURL: "/images/sample.png"
---

Before I puke out hundreds of words, lets get one thing clear.

By Interests I mean, things I would like to work on, things I would like to have conversations about, things that steal my attention, things I would like to expose myself to ... ( you get the idea ) 

Ofcourse I'm not an expert on all the below mentioned. Some I know a little less about, some I know a little more :

1. Creative coding
2. Robotics
3. Story telling
4. Indie Game Development
5. 


{{<details "somee shit">}}

Scheduler runs one go routine until it finishes or makes a blocking call, and switches to another. This way multiple chunks of code run (kinda) at the same time. By default go tries to use only a single core.
We can have multiple threads executing code. If one thread blocks, another one is picked up and worked on.

lorem
{{</details>}}

{{<mermaid "something">}}
    graph TD
    K[CPU Core]
    K --- A[Scheduler]
    A --- B[Go Routine]
    A --- C[Go Routine]
    A --- D[Go Routine]
{{</mermaid>}}