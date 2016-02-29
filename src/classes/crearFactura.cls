Public class crearFactura{
       
      
    public void facturar(){
    
    String Nombre='viernesSengSemaa'; 
    Date fecha=Date.newInstance(1999, 07, 15);
    String Cliente='001o0000009HWgf';
    Double cantidad=9;
    Double valor=300;
    String nombreItem='Computador';
    //String IdFactura='sd';
    String IdFactura=PruebaServicioWeb.CrearFactura(Nombre,fecha,Cliente);
    
    for(integer i=0;i<5;i++){
    valor=valor + i;
    cantidad=cantidad-i;
   
    PruebaServicioWeb.CrearItem(cantidad, IdFactura,valor,nombreItem);
        
    }
    }

}