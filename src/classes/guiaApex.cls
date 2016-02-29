public class guiaApex {

    public static void AplicarDescuento(list<libro__c> libros)
    {
        for(libro__c b:libros){
            b.Precio__c *= 0.9;
            
        }

    }





}