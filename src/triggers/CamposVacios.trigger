trigger CamposVacios on Item_Factura__c (before insert,before update) {
 Validaciontrigger clase= new Validaciontrigger();
  clase.MetodoItemFactura(trigger.new);
}