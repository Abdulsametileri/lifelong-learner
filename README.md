## Introduction

**LifeLongLearner** project consists of two different parts.

- My English Vocabulary
- My Technical Book Notes

All of them provided by me within my Google Account. This app can utilize all information the more readable, searchable
way.

I'm currenty use

* Google-Tables for `English Vocabulary`
* Google-Documents for `Technical Book Notes`

# Demo

# CLI

## Learn CLI With Vocabulary

[![asciicast](https://asciinema.org/a/469829.svg)](https://asciinema.org/a/469829)

## Learn CLI With Technical Book Notes

[![asciicast](https://asciinema.org/a/470326.svg)](https://asciinema.org/a/470326)

# Vocabulary API

Example Request with prefix `ma`: `curl localhost:8080/vocabulary/suggest/ma`

Example Response:

```json
[
  {
    "word": "magic wand",
    "meaning": "sihirli değnek",
    "sentence": "Okay, guys, you have the magic wand."
  },
  {
    "word": "make a fuss about",
    "meaning": "aşırı kaygı duymak, mesele yapmak, son derece endişelenmek",
    "sentence": ""
  },
  {
    "word": "make such a declaration",
    "meaning": "böyle bir beyanda bulunmak",
    "sentence": "it’s easy to make such a declaration, but some times are certainly better than others to consider external funding"
  },
  {
    "word": "manifest",
    "meaning": "açıkca göstermek, beyan etmek",
    "sentence": "Memory leaks often manifest"
  },
  {
    "word": "massive undertaking",
    "meaning": "büyük bir girişim",
    "sentence": "Writing a whole book was still a massive undertaking."
  }
]
```

# Technical Notes API

Example Request with keyword `scalability`: `curl localhost:8080/technicalnotes/scalability`

Example Response:

```json
{
  "totalTime": 2546892,
  "totalResult": 6,
  "results": [
    "Use Expires headers to reduce requests and improve the scalability and performance of your system.",
    "If we design to allow for concurrency, we can more easily meet scalability or performance requirements when the time comes",
    "Performance measures how long it takes to process a request or to perform a certain task, whereas scalability measures how much we can grow (or shrink).",
    "For ultimate scalability we recommend avoiding sessions altogether. However, this isn’t always possible. In these cases we recommend storing the session data in the user’s browser",
    "Overengineering is one of the many enemies of scale. Developing a solution beyond that which is useful simply wastes money and time. It may further waste processing resources, increase the cost of scale, and limit the overall scalability of the system (how far that system can be scaled). Building solutions that are overly complex has a similar effect. Systems that work too hard increase your cost and limit your ultimate size. Systems that make users work too hard limit how quickly you are likely to increase the number of users and therefore how quickly you will grow your business. Systems that are too complex to understand kill organizational productivity and the ease with which you can add engineers or add functionality to your system.",
    "From this point-of-view, synchronous dependencies between services imply that the calling service blocks the execution and waits for a response from the called service before continuing. Very similar to the concepts of Connascence of Execution Order and Connascence of Timing, this kind of dependency is very strong, tightly coupling the caller with the called. It does not scale very well, and the calling service may be impacted by errors in the called service. In systems with high availability as one of the non-functional requirements, this kind of communication is not desired. A powerful alternative to the synchronous approach is asynchronous communication using a publish/subscribe messaging system. In this scenario, the calling service simply publishes its message about a domain event occurring and continues with other work (unrelated to this request). It is not blocking and waiting for a response after it sends a request, and this improves scalability. Problems in another service do not break this service, and when other services are temporarily broken, the calling service might not be able to complete a process completely, but the calling service is not broken itself. Thus, using asynchronous messaging, the services are more decoupled, preserving more autonomy. The downside of the asynchronous messaging solution is that it increases the infrastructural complexity of the system because it requires mechanisms to send and handle messages. Furthermore, the design of the flow of domain events becomes essential when this pattern is used heavily, and this can move complexity into an area that is very difficult to monitor, opening the door for unwanted risks"
  ]
}
```


