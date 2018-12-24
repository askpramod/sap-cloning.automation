const router = require('express').Router();
const gitEventController = require('../../controllers/v1/giteventcontroller');

router.get('/event', gitEventController.getGitEvents);
router.post('/event', gitEventController.insertGitEvents);

module.exports = router;