trigger guiaApex on libro__c (before insert) {
    
    List<libro__c > libros = trigger.new;
    
    guiaApex.AplicarDescuento(libros);


}