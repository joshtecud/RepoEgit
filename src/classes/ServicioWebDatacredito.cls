global class ServicioWebDatacredito{

webService static String ComprobarDocumento(Integer doc){
    boolean validar=true;
    for(Datacredito__c var:[select DocumentosPailas__c from Datacredito__c]){
         if(var.DocumentosPailas__c==doc){
            validar=false;
         }
         
    }
        if(validar==true){
            return 'bacano';
         }
         else{
             return 'pailas';
         
         }  
    

}





}