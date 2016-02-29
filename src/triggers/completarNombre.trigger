trigger completarNombre on Account (before insert,before update) {
trigger.new[0].NombreCompleto__c= trigger.new[0].Nombre__c + ' ' + trigger.new[0].Apellido__c;
}//update trigger.new[0];