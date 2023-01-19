sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'todoapp/test/integration/FirstJourney',
		'todoapp/test/integration/pages/TodoListList',
		'todoapp/test/integration/pages/TodoListObjectPage',
		'todoapp/test/integration/pages/TodoList_textsObjectPage'
    ],
    function(JourneyRunner, opaJourney, TodoListList, TodoListObjectPage, TodoList_textsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('todoapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTodoListList: TodoListList,
					onTheTodoListObjectPage: TodoListObjectPage,
					onTheTodoList_textsObjectPage: TodoList_textsObjectPage
                }
            },
            opaJourney.run
        );
    }
);