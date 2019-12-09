const jwt = require('jsonwebtoken');
const app = require('../src/app');
const helpers = require('./test-helpers');


describe('Comment Endpoints', function () {
    let db
  
    const testUsers = helpers.makeUsersArray();
    const testUser = testUsers[0];
    const testMedia = helpers.makeMediaTypeArray(testUsers);
  
    before('make knex instance', () => {
      db = helpers.makeKnexInstance()
      app.set('db', db)
    })
  
    after('disconnect from db', () => db.destroy())
  
    before('cleanup', () => helpers.cleanTables(db))
  
    afterEach('cleanup', () => helpers.cleanTables(db))

    /**
    * @description Posts a user comment
    **/
   describe.only(`POST /api/comments'`, () => {
       beforeEach('insert comment', () => 
            helpers.seedMediaTables(
                db,
                testUsers,
                testMedia,
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
            .post('/api/comments')
            .set('Authorization', helpers.makeAuthHeader(testUsers[0]))
            .send(newComment)
            .expect(201)
            .expect(res => {
            expect(res.body).to.have.property('id')
            expect(res.body.user_comment).to.eql(newComment.text)
            expect(res.body.media_id).to.eql(newComment.media_id)
            expect(res.body.user.id).to.eql(testUser.id)
            expect(res.headers.location).to.eql(`/api/comments/${res.body.id}`)
            const expectedDate = new Date().toLocaleString('en', { timeZone: 'UTC' })
            const actualDate = new Date(res.body.date_created).toLocaleString()
            expect(actualDate).to.eql(expectedDate)
            })
            .expect(res =>
            db
                .from('movie_comments')
                .select('*')
                .where({ id: res.body.id })
                .first()
                .then(row => {
                expect(row.user_comment).to.eql(newComment.text)
                expect(row.media_id).to.eql(newComment.media_id)
                expect(row.user_id).to.eql(testUser.id)
                const expectedDate = new Date().toLocaleString('en', { timeZone: 'UTC' })
                const actualDate = new Date(row.date_created).toLocaleString()
                expect(actualDate).to.eql(expectedDate)
                })
            )
        })

   })
    

})