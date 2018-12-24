const router = require('express').Router();
const vmStatusController = require('../../controllers/v1/vmstatuscontroller');

router.get('/event', vmStatusController.getVMStatusEvents);
router.post('/event', vmStatusController.insertVMStatusEvents);

module.exports = router;