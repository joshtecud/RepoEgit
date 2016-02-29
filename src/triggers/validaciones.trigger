trigger validaciones on FacturaE__c (before insert,before update) {
  Validaciontrigger clase= new Validaciontrigger();
  clase.MetodoFactura(trigger.new);


}