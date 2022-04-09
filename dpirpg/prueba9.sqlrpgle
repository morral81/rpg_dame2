**free
ctl-opt dftactgrp(*NO);                           
                                                    
dcl-s string  char(20) inz('sql statement');      
dcl-s prueba  char(20) inz;                       

                                                                                                       
// Inicio Programa                                 
exsr principal;                                   
*inlr = *on;                                      
                                                    
begsr principal;                                  
                                                    
   exec sql set :string = UPPER(:string);       
   dsply string;                                
                           
   dsply prueba2;                                
                                                    
endsr;                                            