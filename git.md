# Git often used information

How can I rewrite all history to change author and email?

```
git filter-branch -f --env-filter \
"GIT_AUTHOR_NAME='Newname'; GIT_AUTHOR_EMAIL='newemail'; \
GIT_COMMITTER_NAME='committed-name'; GIT_COMMITTER_EMAIL='committed-email';" HEAD
```

How can I get rid of the a/ b/ prefix for filepaths when using git diff?

```
git config --global diff.noprefix true
```

How do I set the date when making a commit?

```
git commit --date=20191130T20:24:00
```
