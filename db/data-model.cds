namespace msan.todolist;
using { Currency, User, managed, cuid, sap } from '@sap/cds/common';


entity Users   {
  key ID : Integer;
  username  : localized  String;
  password  : localized  String;
}


entity TodoList  {
  key ID : Integer;
  name   : localized String;
  description : localized String;
  status : Association to TodoListStatus;
  priority : Association to TodoListPriority;
  username : Association to Users;
  duedate : DateTime;
}

entity TodoListPriority : sap.common.CodeList {
  key ID : Integer;
  todolists  : Association to many TodoList on todolists.priority = $self;
}

entity TodoListStatus : sap.common.CodeList {
  key ID : Integer;
  todolists  : Association to many TodoList on todolists.status = $self;
}
