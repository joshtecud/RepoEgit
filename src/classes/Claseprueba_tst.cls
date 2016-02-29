@isTest

private class Claseprueba_tst{

    static testMethod void crearFacturaE(){
    //Esto es un comentario
    String Nombre='viernesSengSemaa'; 
    Date fecha=Date.newInstance(2015, 07, 15);
    //String Cliente='001o0000009HWgf';
    String Cliente='001o0000009HWgf';
    FacturaE__c Ingresofactura=new FacturaE__c(Name=Nombre,Fecha__c=fecha,Cliente__c=Cliente);
    insert IngresoFactura;
    
    Integer cantidad=11;
    Integer valor=1300;
    String nombreItem='Computador';
    Item_Factura__c IngresoItem=new Item_Factura__c(Name=nombreItem,Cantidad__c=cantidad,Valor__c=valor,FacturaE__c='a05o0000001vLuk');
    insert IngresoItem;
      Item_Factura__c IngresoItem2=new Item_Factura__c(Name=nombreItem,Cantidad__c=cantidad,Valor__c=valor,FacturaE__c='a05o0000001vLuk');
    insert IngresoItem2;
      Item_Factura__c IngresoItem3=new Item_Factura__c(Name=nombreItem,Cantidad__c=cantidad,Valor__c=null,FacturaE__c='a05o0000001vLuk');
    insert IngresoItem3;
   
    

    }



}