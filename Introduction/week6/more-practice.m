function admit=eligible(v,q)
gre=(q+v)/2;
if (gre>=92)
    if (q>88 && v>88)
        admit=true;
        return;
    end;
end;
admit=false;