function coded=caesar(words, shift)
letters=' ':'~';
coded_num=words+mod(shift,length(letters));
coded_num(coded_num<32)=127-(32-coded_num(coded_num<32));
coded_num(coded_num>126)=coded_num(coded_num>126)-126+31;
coded=char(coded_num);