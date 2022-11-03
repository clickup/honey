---
home: true
title: Home
heroImage: /isar.svg
actions:
  - text: Sweet side of testing...
    link: /tutorials/quickstart.html
    type: primary

footer: Apache Licensed | Copyright © 2022 ClickUp
---

```honeytalk
# Sample HoneyTalk test

verify that "Honey Test Framework" is visible

put the value of the "Likes" text field into $likes

if $likes are greater than or equal to 1000 then
  output "Thanks for the likes!"
else
  smash the "Like" button
  check that the value of the "Likes" text field is equal to $likes + 1
endif

optionally verify that isLoggedIn() == true

tap the "Let's Get Started!" button
```
