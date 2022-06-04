import dotenv from 'dotenv'
import express, { Express } from 'express'
import { PrismaClient } from '@prisma/client'
import { errorHandler, notFound } from './middlewares/errorMiddleware'

import employeeRoute from './routes/employeeRoute'
/* import dependentRoute from './routes/dependentRoute'
 */
dotenv.config()

const app: Express = express()
const prisma = new PrismaClient()

app.use(express.json())

app.get('/', (req, res) => {
  res.send('App is working fine')
})

app.use('/api/employees', employeeRoute)
/* app.use('/api/dependents', dependentRoute) */

app.use(notFound)
app.use(errorHandler)

const PORT = process.env.PORT

app.listen(PORT, () => {
  console.log(`Server started in ${process.env.NODE_ENV} mode on PORT: ${PORT}`)
})

export default prisma
