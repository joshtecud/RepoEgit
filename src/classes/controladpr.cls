public class controladpr{
    
    
    //Esto es una prueba de eclipse
    Public list <Account> lstcuentas{get;set;}
    List<SelectOption> listaciudades = new List<SelectOption>();
    public integer documento{get;set;}
    Public String ValorSeleccionadorPrincipal{get;set;}
    Public List<SelectOption> listadepartamentos{ //Creaciòn de una lista de selección
            get{
                //for(integer i=0;i<10;i++)
                //{
                   
                   List<SelectOption> listadepartamentos = new List<SelectOption>();
                   listadepartamentos.add(new SelectOption('Cundinamarca','Cundinamarca'));
                   listadepartamentos.add(new SelectOption('Antioquia','Antioquia'));
                   listadepartamentos.add(new SelectOption('Valle del Cauca','Valle del Cauca'));
                    listadepartamentos.add(new SelectOption('Bolivar','Bolivar'));
                   return listadepartamentos;
                //}
            
                 
            
            }set;
            
            
            }
       Public String ValorSeleccionadorPrincipal2{get;set;}      
      Public List<SelectOption> getlistaciudades(){           
                  
                 return listaciudades;
       
                
            }    
      
        
    public PageReference cambiarlista() {
           if(ValorSeleccionadorPrincipal=='Cundinamarca'){
               listaciudades.Clear();
               listaciudades.add(new SelectOption('Bogotá','Bogota'));
               listaciudades.add(new SelectOption('Fusa','Fusa'));
           
           }
           if(ValorSeleccionadorPrincipal=='Antioquia'){
               listaciudades.Clear();
               listaciudades.add(new SelectOption('Medellin','Medellin'));
           
           }
           if(ValorSeleccionadorPrincipal=='Valle del Cauca'){
               listaciudades.Clear();
               listaciudades.add(new SelectOption('Cali','Cali'));
           
           }
           if(ValorSeleccionadorPrincipal=='Bolivar'){
               listaciudades.Clear();
               listaciudades.add(new SelectOption('Cartagena','Cartagena'));
           
           }
            return null;
    }
    
    public controladpr(ApexPages.StandardController controller) {
    
        lstcuentas=[select name from account];
        
    }


    
      



}