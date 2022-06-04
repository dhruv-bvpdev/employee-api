import { Request, Response } from 'express'

//* @desc: get all dependents data
//* @route: GET /api/dependents
//* @access: Public
const getAllDependents = async (req: Request, res: Response) => {
  /* const sql =
    'SELECT dependents.*, employees.first_name as emp_fname FROM dependents ,employees WHERE dependents.employee_id = employees.employee_id'
  const dependentData = await query(sql)
  console.log(dependentData)
  if (!dependentData) {
    res.status(404)
    throw new Error('No Dependent found')
  } else {
    res.json(dependentData)
  } */
}

//* @desc: get details of a specific dependent using filter
//* @route: POST /api/dependents
//* @access: Public
const getSingleDependee = async (req: Request, res: Response) => {
  /*  const { filter, value } = req.body
  const changedFilter = 'dependents.' + filter
  const sql =
    'SELECT dependents.*, employees.first_name as emp_fname FROM dependents ,employees WHERE dependents.employee_id = employees.employee_id AND ?? = ?'
  const getDependeeQuery = await formatSQLSelect(sql, '', changedFilter, value)
  console.log(getDependeeQuery)
  const dependeeData = await query(getDependeeQuery)
  if (!dependeeData) {
    res.status(404)
    throw new Error('No Dependee found')
  } else {
    res.json(dependeeData)
  } */
}

export {}
