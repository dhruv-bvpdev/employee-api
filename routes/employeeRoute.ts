import express from 'express'
import { getAllEmployees } from '../controllers/employeeController'

const router = express.Router()

router.route('/').get(getAllEmployees) /* .post(getSingleEmployee)
router.route('/insert-employee').post(addNewEmployee)
 */
export default router
