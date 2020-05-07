# Applescript


## quickly set a reminder for yourself

Set applescript to alert a popup message in 28 minutes. Background and detach the process.

```
nohup osascript -e delay 60*28 -e display dialog "headphones should be done charging" with title "headphones" &
```
