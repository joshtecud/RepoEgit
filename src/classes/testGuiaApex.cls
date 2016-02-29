@istest
public class testGuiaApex{

    static testMethod void validarGuiaApex(){
        libro__c libro = new libro__c(Name='Prueba', Precio__c =100);
        system.debug('precio libro antes-->' + libro.Precio__c );
        insert libro;
        //traer el nuevo libro
        libro = [select Precio__c  from libro__c  where id=:libro.id];
        system.debug('precio libro después-->' + libro.Precio__c );
        // Observar que el precio quedo realmente bien
        System.assertEquals(90, libro.Precio__c);
    }
}