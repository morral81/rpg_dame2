**free

dcl-s varnum  zoned(10);
dcl-s varnum2 zoned(10) inz(85);

dcl-ds dsestructura;
   uno  char(01);
   dos  char(01);
   tres char(01);
end-ds;

exsr principal;
*inlr = *on;
return;

begsr principal;
   varnum = 523;
   dsply varnum;
   dsply varnum2;
endsr;