**free
ctl-opt dftactgrp(*NO);                           
                                                    
dcl-s string  char(15) inz('sql statement');      
                                                                                                                             
// Inicio Programa                                 
exsr principal;                                   
*inlr = *on;                                      
return;
                                                    
begsr principal;                                  
   dsply ('after: ' + %trim(string));                                
   exec sql set :string = UPPER(:string);       
   dsply ('before: '+ %trim(string));                                                  
endsr;                                            