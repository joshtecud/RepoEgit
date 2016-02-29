Public Class PrimeraClase{

public void miMetodo(list <Account> cuenta){


   Account [] ComprobarDocumento=[Select Documento__c from Account];
   for(integer i=0;i<ComprobarDocumento.size();i++){
   if(cuenta[0].Documento__c==ComprobarDocumento[i].Documento__c)
   { 
    cuenta[0].adderror('pailas');
   }
   
   
   
   }


  }
}