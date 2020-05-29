## $Header:$
## Baut einen ChangeLog aus den Git-Commits (logs)

gitchangelog.py | tr "#" "*" | iconv -c -f CP437 | uniq > CHANGELOG.md
git commit CHANGELOG.md -s -m "chg: Testcode: Automated creation of the file CHANGELOG.md !minor"
