sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'todoapp',
            componentId: 'TodoList_textsObjectPage',
            entitySet: 'TodoList_texts'
        },
        CustomPageDefinitions
    );
});