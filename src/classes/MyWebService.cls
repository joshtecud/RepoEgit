global class MyWebService{
webservice static Id makeContact(String apellido){
    Contact c= new Contact(lastName= apellido);
    insert c;
    return c.id;
}





}