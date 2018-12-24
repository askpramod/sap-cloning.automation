const router = require('express').Router();
const transportRequestController = require('../../controllers/v1/transportrequestcontroller');

router.get('/', transportRequestController.getStatus);
router.post('/', transportRequestController.insertStatus);
router.put('/:id', transportRequestController.updateStatus);
router.delete('/:id', transportRequestController.delete);

// Routes exposed for Andreas

router.get('/lastnumber', transportRequestController.getTRLastNumber);
router.post('/lastnumber', transportRequestController.insertTRLastNumber);

// End of the routes requested by Andreas

router.get('/lastnum', transportRequestController.getTRLastNum);
router.post('/lastnum', transportRequestController.insertTRLastNum);

router.get('/event', transportRequestController.getTREvents);
router.post('/event', transportRequestController.insertTREvents);

module.exports = router;
