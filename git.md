# Git often used information

How can I rewrite all history to change author and email?

```
git filter-branch -f --env-filter \
"GIT_AUTHOR_NAME='Newname'; GIT_AUTHOR_EMAIL='newemail'; \
GIT_COMMITTER_NAME='committed-name'; GIT_COMMITTER_EMAIL='committed-email';" HEAD
```

### How can I get rid of the a/ b/ prefix for filepaths when using git diff?

```
git config --global diff.noprefix true
```

### How do I set the date when making a commit?

```
git commit --date=20191130T20:24:00
```

### How to list all files in git history?

```
git log --pretty=format: --name-only --diff-filter=A | sort -u
```

### How do I remove a file completely from the history?

*Warning, this will rewrite history*

```
git filter-branch --index-filter 'git rm --cached --ignore-unmatch <filename>' HEAD
```

### How can I push tags and branches to the upstream? (requires git 2.4.1)

```
git config --global push.followTags true
```

### How can I delete an branch on a remote?

```
git push origin --delete origin master
```

### How can I rebase the first commit?

```
git rebase -i --root
```

### How can I get rid of commits with no changes? Empty commits.

```
FILTER_BRANCH_SQUELCH_WARNING=1 git filter-branch -f --prune-empty
```
