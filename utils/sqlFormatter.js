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

const formatSQLInsert = async (sql, ...args) => {
  const newArrayForInsertion = []
  newArrayForInsertion.push(...args)
  const query = await mysql.format(sql, newArrayForInsertion)
  return query
}

export { formatSQLSelect, formatSQLInsert }
