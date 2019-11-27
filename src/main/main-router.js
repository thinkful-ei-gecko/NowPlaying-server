const express = require('express');
const xss = require('xss');
const path = require('path');
const MainService = require('./main-service');
const { requireAuth } = require('../middleware/jwt-auth');

const mainRouter = express.Router();
const jsonParser = express.json();

const serializeThread = thread => ({
  id: thread.id,
  title: xss(thread.title),
  image: thread.image,
  event_description: xss(thread.event_description),
  date_created: thread.date_created,
  // last_commented: thread.last_commented,
  // numberOfComments: thread.numberOfComments
});

mainRouter
  .route('/')
  .get((req,res,next) => {
    const db = req.app.get('db');
    MainService.getAllCategories(db)
      .then(categories => {
        return res.status(200).json(categories);
      })
      .catch(next);
  });


mainRouter
  .route('/:thread')
  .get((req,res,next) => {
    const db = req.app.get('db');
    let mediaType = req.params.thread;

    MainService.getAllEntriesByMediaType(db,mediaType)
      .then(mediaTypes => {
        return res.status(200).json(mediaTypes);
      })
      .catch(next);
  })
  .post(requireAuth, jsonParser, (req,res,next) => {
    const { title, event_description, date } = req.body;
    const newThread = { title, event_description, date };

    if(!title) {
      return res.status(400).json( {error: 'Title is required'} );
    }

    const db = req.app.get('db');
    let mediaType = req.params.thread;

    MainService.insertNewThread(db, mediaType, newThread)
      .then(thread => {
        return res
          .status(201)
          .location(path.posix.join(req.originalUrl, `/${mediaType}`))
          .json(serializeThread(thread));
      })
      .catch(next);
  });
