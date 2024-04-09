import pandas as pd
#Utilizamos sqlalchemy para la conexión
from sqlalchemy import create_engine



db_user = 'postgres'
db_password = 'postgres'
db_host = 'localhost'
db_port = '5432'
db_name = 'challenge'

connection_str = f'postgresql://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}'

engine = create_engine(connection_str)



query1 = "SELECT * FROM estudiantes"
query2 = "SELECT * FROM grados"

df1 = pd.read_sql_query(query1, engine)
df2 = pd.read_sql_query(query2,engine)


df_fusionado = pd.merge(df1, df2, how='cross')

# Filtrar las filas donde la marca del estudiante esté dentro del rango de marcas del grado
df_cross = df_fusionado[(df_fusionado['marca'] >= df_fusionado['min_marca']) & 
                            (df_fusionado['marca'] <= df_fusionado['max_marca'])]

df_filter = df_cross.loc[df_cross['grado'] < 8, 'nombre'] = pd.NA

#df_resultado_final = df_filter[['id', 'nombre', 'grado', 'marca']]
df_resultado_final = df_cross[['id', 'nombre', 'grado', 'marca']].sort_values(by=['grado','nombre'], ascending=[False,True])

print(df_resultado_final)




