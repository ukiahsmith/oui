# Git often used information

Git rewrite history to change author and email

```
git filter-branch -f --env-filter \
"GIT_AUTHOR_NAME='Newname'; GIT_AUTHOR_EMAIL='newemail'; \
GIT_COMMITTER_NAME='committed-name'; GIT_COMMITTER_EMAIL='committed-email';" HEAD
```

Remove the a/ b/ prefix for filepaths when using git diff

```
git config --global diff.noprefix true
```
