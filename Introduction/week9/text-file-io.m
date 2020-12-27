function charnum=char_counter(fname, character)
    if ~ischar(character)
       charnum=-1;
       return
    end
    charnum=0;
    fid = fopen(fname, "rt");
    if (fid<0)
        charnum=-1;
        return
    end
    txt=fgets(fid);
    while (ischar(txt))
        charnum=charnum+length(find(txt == character));
        txt=fgets(fid);
    end
    fclose(fid);
end

type('simple.txt')
charnum = char_counter('simple.txt','a')
charnum = char_counter('Frankenstein-by-Shelley.txt','?')