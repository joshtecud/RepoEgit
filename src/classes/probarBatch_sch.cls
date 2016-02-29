global class probarBatch_sch implements Schedulable{
    global void execute(SchedulableContext SC){
        database.executebatch(new probarBatch(),1000);
        database.executebatch(new probarBatchDosCampos(),10000);
    
    
    }





}