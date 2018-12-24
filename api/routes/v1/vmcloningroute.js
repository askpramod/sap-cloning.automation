const router = require('express').Router();
const vmCloningController = require('../../controllers/v1/vmcloningcontroller');

router.get('/event', vmCloningController.getVMCloningEvents);
router.post('/event', vmCloningController.insertVMCloningEvents);

module.exports = router;