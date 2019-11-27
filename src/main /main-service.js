const MainService = {
    getAllCategories(db) {
      return db
        .select('*')
        .from('category');
    },
  
    getAllEntriesByMediaType(db, mediaType) {
      return db
        .from(mediaType)
        .select('*');
    },
  
    insertNewThread(db, mediaType, newThread) {
      return db
        .insert(newThread)
        .into(mediaType)
        .returning('*')
        .then(res => res[0]);
    }
  };
  
  module.exports = MainService;