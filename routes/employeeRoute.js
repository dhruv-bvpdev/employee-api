import express from 'express'
import {
  addNewEmployee,
  getAllEmployees,
  getSingleEmployee
} from '../controllers/employeeController.js'

const router = express.Router()

router.route('/').get(getAllEmployees).post(getSingleEmployee)
router.route('/insert-employee').post(addNewEmployee)

export default router
