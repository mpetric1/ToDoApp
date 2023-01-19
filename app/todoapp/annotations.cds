using TodoService as service from '../../srv/todo-service';

annotate service.TodoList with @(
    UI.FieldGroup #Details : {
        Data : [
            {
                $Type : 'UI.DataField',
                Value : status_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : priority_ID,
                Label : 'Priority',
            },
            {
                $Type : 'UI.DataField',
                Value : description,
                Label : '{i18n>TaskDesc}',
            },
            {
                $Type : 'UI.DataField',
                Value : duedate,
                Label : '{i18n>TaskDueDate}',
            },
        ],
    }
);
