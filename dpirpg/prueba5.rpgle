**free

dcl-s variable1 char(10) inz('JUANITO');
dcl-s variable2 char(10) inz('GOMEZ');
dcl-s variable3 char(10) inz('GOMEZ');

dcl-ds dsestructura;
   var1 char(10);
   var2 char(10);
end-ds;

dsply variable2;
dsply variable1;
dsply variable3;

*inlr = *on;
return;




