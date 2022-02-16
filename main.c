#include <stdlib.h>
#include <stdio.h>
#include "version.h"

int main(void)
{

    printf("Git/CVS Id Tag Demo, $Header: /home/cvs/src/c/gittag/main.c,v 1.4 2020/05/29 13:48:17 ralph Exp $ (%s)\n\n", __DATE__);
    printf("git_tag=%s\n", git_tag);
    printf("git_commit=%s\n", git_commit);

    return 0;
}

