#!/bin/bash
## $Header: /home/cvs/src/c/gittag/makechangelog.sh,v 1.3 2022/03/03 17:29:21 ralph Exp $
## Baut einen ChangeLog aus den Git-Commits (logs)

gitchangelog | tr "#" "*" | iconv -c -f CP437 | uniq > CHANGELOG.md
git commit CHANGELOG.md -s -m "chg: Testcode: Automated creation of the file CHANGELOG.md !minor"
