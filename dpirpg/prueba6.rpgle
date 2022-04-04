**free

dcl-s varnum zoned(10);

exsr princpal;
*inlr = *on;
return;

begsr principal;
   varnum = 523;
   dsply varnum;
endsr;