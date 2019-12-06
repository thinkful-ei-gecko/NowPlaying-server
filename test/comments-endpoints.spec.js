<<<<<<< HEAD
const app = require('../src/app');
const helpers = require('./test-helpers');
const mainHelpers = require('./main-helpers');


describe.only('Comment Endpoints', function () {
    let db
  
    // const testUsers = helpers.makeUsersArray();
    // const testMedia = helpers.makeMediaTypeArray();
    // const testComments = helpers.makeCommentsArray(testUsers);
    const { testUsers, testCategories, testThreads, testComments } = mainHelpers.makeThreadFixtures();
=======
const jwt = require('jsonwebtoken');
const app = require('../src/app');
const helpers = require('./test-helpers');


describe('Comment Endpoints', function () {
    let db
  
    const testUsers = helpers.makeUsersArray()
    const testUser = testUsers[0]
>>>>>>> date created updated for happening route
  
    before('make knex instance', () => {
      db = helpers.makeKnexInstance()
      app.set('db', db)
    })
  
    after('disconnect from db', () => db.destroy())
  
    before('cleanup', () => helpers.cleanTables(db))
  
    afterEach('cleanup', () => helpers.cleanTables(db))

    /**
<<<<<<< HEAD
    * @description Posts a user comment
    **/
   describe.only(`POST /api/comments/:comment_thread'`, () => {
    //    beforeEach('insert media', () => 
    //         helpers.seedMediaTables(
    //             db,
    //             testUsers,
    //             testMedia,
    //         )
    //     )
        beforeEach('insert comments', () =>
            mainHelpers.seedThreads(
                db,
                testUsers, testCategories, testThreads
            )
        )
 
    it(`creates a comment, responding with 201 and the new comment`, function() {
        this.retries(3)
        const testMedia = testMedia[0]
        const testUser = testUsers[0]
        const newComment = {
            user_comment: 'Test new comment',
            media_id: testMedia.id,
        }

        return supertest(app)
            .post(`/api/comments/${comment_thread}`)
            .set('Authorization', helpers.makeAuthHeader(testUser))
            .send(newComment)
            .expect(201)
            .expect(res => {
            expect(res.body).to.have.property('id')
            expect(res.body.user_comment).to.eql(newComment.user_comment)
            expect(res.body.media_id).to.eql(newComment.media_id)
            })
            .expect(res =>
            db
                .from('movie_comments')
                .select('*')
                .where({ id: res.body.id })
                .first()
                .then(row => {
                expect(row.user_comment).to.eql(newComment.user_comment)
                expect(row.media_id).to.eql(newComment.media_id)
                })
            )
        })
   })
=======
    * @description Posts a user 
    **/
    

>>>>>>> date created updated for happening route
})