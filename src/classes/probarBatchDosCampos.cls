global class probarBatchDosCampos implements Database.Batchable<SObject>,Database.Stateful{
    //Public list <Contact> lstcontactos2{get;set;} 
    list <contact> lstcontactos2=new list<contact>();
    list <Case> lstcasos=new list<Case>();
    list <Account> lstcuentas=new list<Account>();
    //list<Contact> listaContactos= [select id, Name from Contact]; //Mejor sacarla del for
    global string myQuery;
   
   
    global ProbarBatchDosCampos(){
     myQuery='select type from Account';
    }   
   
    global Database.QueryLocator start(Database.BatchableContext DB){
    
      system.debug(myQuery);
      return Database.getQueryLocator(myQuery);
      //return null;
    
    
    }
    global void execute(Database.BatchableContext DB,List<sObject> scope){ //Sobject porque puede ser una lista cualquiera
          
          list<account> listacuentas=(List<Account>) scope;
           for(Account lstcuentas2:listacuentas){
            
                 lstcuentas2.type ='prospect';
                 lstcuentas.add(lstcuentas2);
                 
            }
            update lstcuentas;
          
    
    }
    
    global void finish(Database.BatchableContext DB){
    
       //Correo o tarea de salesforce para avisar y enviar pop ap
    }
    
    public void ActualizarFechaCumpleContactos(){
                   
          //lstcontactos=[select Birthdate from Contact];
          //lstcotactos=[UPDATE Birthdate SET Birthdate=Date.newInstance(2014, 09, 24)];
            //list <contact> lstcontactos2=new list<contact>();       
            //lstcontactos= [select Fecha_de_Nacimiento__c from Contact];
            for(Contact lstcontactos: [select Fecha_de_Nacimiento__c from Contact]){
                 //lstcontactos.Birthade=system.today();
                 //update lstcontactos.Birthade set system.today();
                 lstcontactos.Fecha_de_Nacimiento__c =Date.newInstance(2999, 09, 24);
                 lstcontactos2.add(lstcontactos);
                 
            }
            update lstcontactos2;
             //lstcontactos2=lstcontactos;
             //update lstcontactos2;
   }
     
     public void CrearCasoPorContacto(){
                          
          
          
          for(Contact lstcontactos: [select id, Name from Contact]){
              
              Case lstcontactos2 = new Case(ContactId=lstcontactos.id,Status='Working',Origin='web');
              lstcasos.add(lstcontactos2);
              
            }
          
          insert lstcasos;
     
     }

      public void ActualizarTipoCuenta(){
                   
        
            for(Account lstcuentas2: [select type from Account]){
            
                 lstcuentas2.type ='prospect';
                 lstcuentas.add(lstcuentas2);
                 
            }
            update lstcuentas;
           
   }




}