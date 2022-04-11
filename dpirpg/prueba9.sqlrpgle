**free
ctl-opt dftactgrp(*NO);                           
                                                    
dcl-s string  char(15) inz('sql statement');      
dcl-s string2  char(15) inz('prueba juan');      
                                                                                                                             
// Inicio Programa                                 
exsr principal;                                   
*inlr = *on;                                      
return;
                                                    
begsr principal;                                  
   dsply ('after: ' + %trim(string));                                
   exec sql set :string = UPPER(:string);       
   dsply ('before: '+ %trim(string));                                                   
   dsply string;
endsr;                                            