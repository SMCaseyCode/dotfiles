# Logitech? Whats the problem?

I will tell you the problem, Arch has a regression for logitech mice which are specifically using wireless technology.
Using the powerplay charging mat, the scroll is scuffed af. Sometimes it double scrolls, sometimes it doesnt scroll at all.
After 4 hours of trying various fixes, I found one that worked.

Reddit, libinput quirks file, 
```
[Logitech G502]
MatchName=Logitech G502
MatchVendor=004xG
removeHiResScroll
```
^^ Just from memory and I know 2 lines are wrong for sure. 
