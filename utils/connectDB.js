import util from 'util'
import mysql from 'mysql'
import dotenv from 'dotenv'
dotenv.config()

const db = mysql.createConnection({
  host: process.env.HOST,
  user: process.env.USER,
  password: process.env.PASSWORD,
  database: process.env.DATABASE
})

const connectDB = () => {
  db.connect(err => {
    if (err) {
      throw err
    } else {
      console.log(`MySQL connected on ${process.env.HOST}`)
    }
  })
}

const query = util.promisify(db.query).bind(db)

export { connectDB, db, query }
