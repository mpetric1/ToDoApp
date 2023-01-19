
using msan.todolist as todo from '../db/data-model';
using { sap } from '@sap/cds/common';

using from './user-service';

service TodoService @(requires: 'authenticated-user') {


    entity Users as projection on todo.Users;
        annotate Users with @odata.draft.enabled;
    entity TodoList as projection on todo.TodoList;
        annotate TodoList with @odata.draft.enabled;

    entity TodoListStatus as projection on todo.TodoListStatus;

    entity TodoListPriority as projection on todo.TodoListPriority;
    

    

    annotate TodoList with @(
        UI : {
            LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : '{i18n>TaskID}',
            },
            {
                $Type : 'UI.DataField',
                Value : name,
                Label : '{i18n>TaskName}',
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
            {
                $Type : 'UI.DataField',
                Value : status.name,
                Label : 'Status',
            },            
            
                
            ],
            HeaderInfo : {
                TypeName : 'TodoList',
                TypeNamePlural : 'TodoList',
                Title : {Value : name},
                Description :  {Value : ID},
            },
            Facets : [
                {
                $Type : 'UI.ReferenceFacet',
                Label : '{i18n>TaskDetails}',
                Target : '@UI.FieldGroup#Details'
                },
            ],
            FieldGroup #Details : {Data : [
                {Value : status_ID},
                {Value : priority_ID},
                {Value : description, Label : '{i18n>TaskDesc}'},
                {Value : duedate, Label : '{i18n>TaskDueDate}'},
            ]},
    })
    {
            status @ValueList.entity      : 'TodoListStatus';
    };

};

////////////////////////////////////////////////////////////////////////////
//
//	TodoList Elements
//
annotate TodoService.TodoList with {
  ID       @title: '{i18n>TaskID}';
  name     @title: '{i18n>TaskName}';
  status   @title: 'Status'  @Common: { Text: status.name, TextArrangement: #TextOnly };
  priority @title: 'Status'  @Common: { Text: priority.name, TextArrangement: #TextOnly };
  duedate  @title: '{i18n>TaskDueDate}';
  description  @UI.MultiLineText;
}



// Workaround for Fiori popup for asking user to enter a new UUID on Create
annotate TodoService.TodoList with { ID @Core.Computed}



