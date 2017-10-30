#!awk -f
BEGIN {skip=0;}

/\s*\[\]\(Begin Course A\)/{
    skip = 1;
    next;
}

/\s*\[\]\(End Course A\)/{
    if(skip >= 1){
        skip -= 1;
        next;
    }
}

skip>=1{next;}
{
    print;

}

