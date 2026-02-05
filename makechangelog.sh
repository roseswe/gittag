#!/bin/bash
## $Header: /home/cvs/src/c/gittag/makechangelog.sh,v 1.5 2026/02/05 23:22:26 ralph Exp $
## Baut einen ChangeLog aus den Git-Commits (logs)

gitchangelog | tr "#" "*" | iconv -c -f CP437 | uniq > CHANGELOG.md
git commit CHANGELOG.md -s -m "chg: Testcode: Automated creation of the file CHANGELOG.md !minor"
