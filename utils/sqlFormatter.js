import mysql from 'mysql'

const formatSQLSelect = async (
  sql,
  tableName = '',
  whereClause = '',
  whereClauseValue = ''
) => {
  const formattingArray = []
  if (tableName === '') {
    formattingArray.push(whereClause, whereClauseValue)
  } else {
    formattingArray.push(tableName, whereClause, whereClauseValue)
  }
  const query = await mysql.format(sql, formattingArray)
  return query
}

const formatSQLInsert = async (...args) => {
  const formattingArray = []
  formattingArray.push()
  const query = await mysql.format(sql, ...args)
  return query()
}

export { formatSQLSelect, formatSQLInsert }
