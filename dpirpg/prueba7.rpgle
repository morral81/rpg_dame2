**free

dcl-s varnum  zoned(10);
dcl-s varnum2 zoned(10) inz(85);
dcl-s varnum3 zoned(10) inz(85);

exsr principal;
*inlr = *on;
return;

begsr principal;
   varnum = 523;
   dsply varnum;
   dsply varnum2;
   dsply varnum2588;
endsr;