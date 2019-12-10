const app = require('../src/app');
const helpers = require('./test-helpers');


describe.only('Comment Endpoints', function () {
    let db
  
    const testUsers = helpers.makeUsersArray();
    const testMedia = helpers.makeMediaTypeArray();
    const testComments = helpers.makeCommentsArray(testUsers);
  
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
   describe.only(`POST /api/comments/'`, () => {
    //    beforeEach('insert media', () => 
    //         helpers.seedMediaTables(
    //             db,
    //             testUsers,
    //             testMedia,
    //         )
    //     )
        beforeEach('insert comments', () =>
            helpers.seedComments(
                db,
                testComments,
                testUsers,
                testMedia
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
        console.log(newComment);
        return supertest(app)
            .post('/api/comments/')
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
})