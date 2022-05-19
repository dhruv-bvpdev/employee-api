import dotenv from 'dotenv'
import express from 'express'
import { connectDB } from './utils/connectDB.js'
import { errorHandler, notFound } from './middlewares/errorMiddleware.js'

import employeeRoute from './routes/employeeRoute.js'
import dependentRoute from './routes/dependentRoute.js'

dotenv.config()
connectDB()

const app = express()

app.use(express.json())

app.get('/', (req, res) => {
  res.send('App is working fine')
})

app.use('/api/employees', employeeRoute)
app.use('/api/dependents', dependentRoute)

app.use(notFound)
app.use(errorHandler)

const PORT = process.env.PORT

app.listen(PORT, () => {
  console.log(`Server started in ${process.env.NODE_ENV} mode on PORT: ${PORT}`)
})
