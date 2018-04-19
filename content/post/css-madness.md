---
title: "CSS Madness"
date: 2015-05-30
draft: false
tags: ["css"]
---

I spent the past week learning HTML and CSS, having zero prior experience with either. With the right guidance, it's surprisingly doable. No learning experience is complete without some moments of struggle, and I had plenty. Hopefully you will be able to benefit from my pain. The two worst positioning nightmares I came accross were position:relative/absolute/fixed and display:inline/block/inline-block. I'll run through the definitions of each, and include my advice on using the things.\
\
\

CSS Selector | Description
---------------- | ---
position:fixed | Object displays relative to the browser window, and is immune to scrolling.
position:relative | Objects display relative to the browser, irrespective of any other elements on the page. I'm not sure why anyone would use this option, ever.
position:absolute	| The most useful option for positioning objects. Objects display relative to it's preceeding positioned (fixed, relative, or absolute) element. If the object is the first positioned element, it will display  relative to the browser window.
position:static	| This is the default position setting. Objects will display in order.
display:inline	| This is the default value. It doesn't do anything.
display:block	| Displays objects the same way `<p>` displays text, in vertically arranged chunks.
display:inline-block	| Displays objects in horizontally arranged chunks. This is the most useful display option.

\
In conclusion, you most likely want to be using position:absolute, and display:inline-block if you're trying to position objects.

A word to the wise - If you're changing the display or position properties and you think elements should be moving, but they are not, please, please, check your spelling. Do it for me. I wasted at least an entire hour fiddling with my stylesheet while my HTML class had a dash, and my CSS representation had an underscore. That was not the only time I had a spelling bug this week, it's easy to do, and easy to miss, so check your work!

Hopefully some of this was helpful. Feedback is always welcome.
