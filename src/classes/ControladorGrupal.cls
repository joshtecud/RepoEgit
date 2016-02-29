public with sharing class ControladorGrupal
{
	public	String 	nombre{get;set;}
	public 	Integer cedula{get;set;}	
	public	Date    fecha{get;set;}

	soapClassPruebagrup.PruebaGrupal3 stub = new soapClassPruebagrup.PruebaGrupal3();

	public String corroborar
    {
        get{
        corroborar=stub.servicemanuel(nombre,cedula,fecha);
        return corroborar;
        }
        set;
     }
	

	public ControladorGrupal() {
		nombre='Carlos';
		cedula=1000;
		fecha=Date.newInstance(1990, 07, 15);
	   stub.SessionHeader = new soapClassPruebagrup.SessionHeader_element();
       stub.SessionHeader.sessionId ='0000000a9dA!AQQAQGldEu_G1_S1njBHX0El.S.Hdh5k4cysqyxBNg7fzHEMPVRy1g0M1Y_aYOA1vNbejjBQw.Y4_FzklvsBSFBpc8BLNRrZ';
	}

    public void probarfecha(){

    	system.debug(fecha);
    }
    public PageReference enviar(){

    	return null;

    }


}