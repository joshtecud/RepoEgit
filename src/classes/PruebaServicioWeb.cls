global class PruebaServicioWeb{

webService static String CrearFactura(String nombre,Date fecha,String Cliente){
   FacturaE__c c= new FacturaE__c(Name= nombre,Fecha__c=fecha,Cliente__c=Cliente);
    insert c;
    return c.id;
}

webService static String CrearItem(Double cantidad,id factura,Double valor,String nombre){
  Item_Factura__c c= new Item_Factura__c(Name= nombre,FacturaE__c=factura,Cantidad__c=cantidad,Valor__c=valor);
    insert c;
    return c.id;
}




}