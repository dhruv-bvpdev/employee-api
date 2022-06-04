import { Request, Response } from 'express'
import prisma from '../server'

//* @desc: get all employee data
//* @route: GET /api/employees
//* @access: Public
const getAllEmployees = async (req: Request, res: Response) => {
  const products = await prisma.employees.findMany({})
  res.json(products)
}

//* @desc: get details of a specific employee using filter
//* @route: POST /api/employees
//* @access: Public
/* const getSingleEmployee = async (req: Request, res: Response) => {
  const { filter, value } = req.body
  console.log(filter, value)
  const sql = 'SELECT * FROM ?? WHERE ?? = ?'
  const getEmployeeQuery = await formatSQLSelect(
    sql,
    'employees',
    filter,
    value
  )
  console.log(getEmployeeQuery)
  const employeeData = await query(getEmployeeQuery)
  if (!employeeData) {
    res.status(404)
    throw new Error('No Employee found')
  } else {
    res.json(employeeData)
  }
} */

//* @desc: add new employee
//* @route: POST /api/employees/insert-employee
//* @access: Private
/* const addNewEmployee = async (req: Request, res: Response) => {
  const {
    id,
    fname,
    lname,
    email,
    phone,
    hire_date,
    jobid,
    salary,
    managerid,
    deptid
  } = req.body
  const sql =
    'INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) VALUES(?,?,?,?,?,?,?,?,?,?)'
  const insertEmployeeQuery = await formatSQLInsert(
    sql,
    id,
    fname,
    lname,
    email,
    phone,
    hire_date,
    jobid,
    salary,
    managerid,
    deptid
  )
  const queryResult = await query(insertEmployeeQuery)
  if (!queryResult) {
    res.status(404)
    throw new Error('Could not enter new record')
  } else {
    res.json({ message: 'new employee added' })
  }
} */

export { getAllEmployees }
