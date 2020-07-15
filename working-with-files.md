# Working with files

How can I get only unique lines from an input?

```
cat file.txt | awk '!seen[$0]++'
```



