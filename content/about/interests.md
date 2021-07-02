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

{{<tooltip "etc">}}
    etc means et cetera.you dummy !
{{</tooltip>}}

@rob_pike

```go {hl_lines=[8,"16-17"]}
package main

import (
    "fmt"
    "math/rand"
    "time"
)

type Moo struct {
    Cow   int
    Sound string
    Tube  chan bool
}

// A cow will moo until it is being fed
func cow(num int, mootube chan Moo) {
    tube := make(chan bool)
    for {
        select {
        case mootube <- Moo{num, "moo", tube}:
            fmt.Println("Cow number", num, "mooed through the mootube")
            <-tube
            fmt.Println("Cow number", num, "is being fed and stops mooing")
            mootube <- Moo{num, "mooh", nil}
            fmt.Println("Cow number", num, "moos one last time out of happyness")
            return
        default:
            fmt.Println("Cow number", num, "mooed through the mootube and was ignored")
            time.Sleep(time.Duration(rand.Int31n(1000)) * time.Millisecond)
        }
    }
}
```
{{< youtube 09jf3ow9jfw >}}
[Text](https://www.gohugo.io "Title")

{{< gist spf13 7896402 >}}

{{< tweet 877500564405444608 >}}

{{< youtube id="w7Ft2ymGmfc" title="A New Hugo Site in Under Two Minutes" >}}   