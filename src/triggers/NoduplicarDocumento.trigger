trigger NoduplicarDocumento on Account (before insert,before update) {
  PrimeraClase clase= new PrimeraClase();
  clase.miMetodo(trigger.new);

}