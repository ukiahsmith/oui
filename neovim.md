# Neovim

## Search for a pattern, and copy the first match plus X lines to a specific line.

```
/{pattern}/;.,.3co 20
```

/{pattern}/  this is the pattern to match
;  this ends the pattern matching
.,.3  is a range  dot is the currently matched line and .3 is a shortcut for "current line plus the next three lines"
co  is the copy ex command
20 is the target line to copy to



## How do I edit a macro once I am done recording it?

1. :let @q=' open the q register
2. <Cntl-r><Cntl-r>q to paste the contents of the q register into the buffer
3. edit the macro to fit your needs
4. ' add a closing quote
5. <Enter> finish editing the macro

Create a macro:

```
qIthis ismy macro^[q
```

Run the macro using `@q`, which results in:

```
this ismy macro
```

Edit the macro:

```
:let @q='<Cntl-r><Cntl-r>q
```

Which now displays:

```
:let @q='Ithis ismy macro^[
```

Edit the macro to be:

```
:let @q='Ithis is my macro^['
```

and press enter.

Now running the macro with `@q` results in:

```
this is my macro
```


This was taken from: https://thoughtbot.com/blog/how-to-edit-an-existing-vim-macro

