import sqlite3

from code.s_tunes_queries import Query

conn = sqlite3.connect("../sTunes.db")
cursor = conn.cursor()

cursor.execute(Query.QUERY_GET_ALL_TABLES)



tables = cursor.fetchall()
print(f"{tables=}")

conn.close()
