trigger CrearTask on Account (after insert) {
    Datetime myDate = Datetime.valueOf('2013-06-14 15:15:15');
    Task Tarea= new Task();
    Tarea.Description='Enviar un correo electrónico';
    Tarea.ReminderDateTime=myDate;    
    Tarea.Status='In Progress';
    Tarea.Subject='Call';
    Tarea.WhatId=Trigger.new[0].id;
    insert Tarea;


}