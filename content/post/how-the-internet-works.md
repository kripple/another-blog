---
title: "How the Internet Works"
date: 2015-07-13
draft: false
tags: ["internet","basics","networking"]
---

As an aspiring web developer, I acknowledge that the internet will play a large role in my future. But, what is the internet, and how does it work? I like the explanation in [this](https://www.youtube.com/watch?v=7_LPdttKXPc) youtube video. Let me summarize.

The internet is a wire in the ground. The first time people had the bright idea to send messages quickly through wires, they laid lots of copper in the ground. We called the invention the telephone, perhaps you have heard of it. Since then, we've laid more copper, and now we're laying oodles of fiber optic cables. The advantage fiber opticts have over other wire types, is that their messages are sent encoded in **light**. It's much faster than the traditional electrical signals sent via your everyday copper wire, but I digress.

Everything connected to the internet has an internet provider (IP) address. Individuals usually connect to the internet through a domain name system (DNS), that converts IP addresses (strings of numbers) to names. For example, google.com is equivalent to the IP address 8.8.8.8. For this reason, IP addresses exist in the background for many internet users.

Information is sent across the internet in chunks (often referred to as **packets**). Data is deconstructed into packets, sent accross the internet, then reconstructed at it's destination. **Routers** are what tell the packets where to go. They are at every intersection of data. They are the traffic lights of the internet, if traffic lights also served in a navigational capacity. You see, packets contain a source address and a destination address. Routers read this information, and send the packets, one at a time, towards their respective destinations.

That's how the internet works. It's a bunch of wires with a bunch of packets and routers to tell them where to go.