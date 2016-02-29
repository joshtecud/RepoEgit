public class controladorDatacredito
{  
    public integer documento{get;set;}
    soapClassServiciowebDatacredito.ServicioWebDatacredito stub = new soapClassServiciowebDatacredito.ServicioWebDatacredito();
    public String corroborar
    {
        get{
        corroborar=ServicioWebDatacredito.ComprobarDocumento(documento);
        return corroborar;
        }
        set;
     }
    public void CambiarCorroborar(){
    
   // Datacredito__c agregar=new Datacredito__c(Name= nombre,Fecha__c=fecha,Cliente__c=Cliente);
    


    }
    public void RealizarFlujoDeTrabajo(){

        
        
        if(corroborar=='bacano'){
                UsuarioSeguro__c LlenarCorroborar=new UsuarioSeguro__c(Name='prueba',Documento__c=documento);
                insert LlenarCorroborar;

        }




    }
    public string casa=corroborar;
    
    public controladorDatacredito(ApexPages.StandardController controller) 
    {
       stub.SessionHeader = new soapClassServiciowebDatacredito.SessionHeader_element();
       stub.SessionHeader.sessionId ='00Do0000000a9dL!AQYAQMs6U03XsJWWgmCbrjJlbZOyezDp3Znk4olPlxFhwh7JaPJb2_VCxp4rXAhQ4Ouhixk7FXh.YPUvSJW4JYdPlpYiUcHR';
        //corroborar='Corrob'; 
        //documentos=[select DocumentosPailas__c from Datacredito__c];        
    }
   
    
}