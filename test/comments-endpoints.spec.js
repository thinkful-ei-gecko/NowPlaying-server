const jwt = require('jsonwebtoken');
const app = require('../src/app');
const helpers = require('./test-helpers');


describe('Comment Endpoints', function () {
    let db
  
    const testUsers = helpers.makeUsersArray()
    const testUser = testUsers[0]
  
    before('make knex instance', () => {
      db = helpers.makeKnexInstance()
      app.set('db', db)
    })
  
    after('disconnect from db', () => db.destroy())
  
    before('cleanup', () => helpers.cleanTables(db))
  
    afterEach('cleanup', () => helpers.cleanTables(db))

    /**
    * @description Posts a user 
    **/
    

})