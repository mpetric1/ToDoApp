const cds = require("@sap/cds");
const cov2ap = require("@sap/cds-odata-v2-adapter-proxy");
const cds_swagger = require ('cds-swagger-ui-express');

cds.on("bootstrap", (app) => app.use(cov2ap()));
cds.on ('bootstrap', app => app.use (cds_swagger()) )
// Add Swagger UI
//require('./srv/swagger-ui')

module.exports = cds.server;
