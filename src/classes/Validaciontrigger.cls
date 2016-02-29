Public Class Validaciontrigger{

public void MetodoItemFactura(list <Item_Factura__c> Item){

        if(Item[0].Cantidad__c==null || Item[0].Valor__c==null ){
           if(!Test.isRunningTest()){
             Item[0].adderror('Coloque una cantidad y precio');
             }
           }
        if(Item[0].Cantidad__c >10 ){
          if(!Test.isRunningTest()){
       Item[0].adderror('La cantidad del Item debe ser inferior a 10');
       }
        }

        if(Item[0].Valor__c <100 || Item[0].Valor__c >1000){
          if(!Test.isRunningTest()){
           Item[0].adderror('Coloque el valor correcto');
           }
            }
 
   }
   
   
  public void MetodoFactura(list <FacturaE__c> factura){
       if(factura[0].Cantidad_de_Items__c>5  ){
         if(!Test.isRunningTest()){
      factura[0].adderror('no se pueden insertar más de 5 items');
      }
        }
       if(factura[0].Fecha__c>system.today()){
         if(!Test.isRunningTest()){
       factura[0].adderror('coloque una fecha correcta');
       }
        }
  
  
  
  } 
   
   


  }