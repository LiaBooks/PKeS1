#!awk -f
BEGIN {skip=0;}

/\s*\[\]\(Begin Remove\)/{
    skip = 1;
    next;
}

/\s*\[\]\(End Remove\)/{
    if(skip >= 1){
        skip -= 1;
        next;
    }
}

skip>=1{next;}
{
    print;

}

