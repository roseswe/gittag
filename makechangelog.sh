## $Header: /home/cvs/src/c/gittag/makechangelog.sh,v 1.2 2020/05/29 13:48:17 ralph Exp $
## Baut einen ChangeLog aus den Git-Commits (logs)

gitchangelog.py | tr "#" "*" | iconv -c -f CP437 | uniq > CHANGELOG.md
git commit CHANGELOG.md -s -m "chg: Testcode: Automated creation of the file CHANGELOG.md !minor"
