import mysql.connector 



database = 'horsedb'
user = 'ariel'
password = 'bubba123'

horseinfo_insert_stmt = '''INSERT INTO horseinfo (photo) VALUES (%s)'''
transactionid_insert_stmt = '''INSERT INTO transactionid (certificate_transaction) VALUES (%s)'''
sireid_insert_stmt = '''INSERT INTO sireid (certificate) VALUES (%s)'''
damid_insert_stmt = '''INSERT INTO ### constants
damid (certificate) VALUES (%s)'''
trainerid_insert_stmt = '''INSERT INTO trainerid (certification) VALUES (%s)'''
bonerecords_insert_stmt = '''INSERT INTO bonerecordsid (xburay) VALUES (%s)'''
###



### helper methods
def close(connection, cursor):
    if connection.is_connected():
       cursor.close()
       connection.close()
       print('MySQL connection is closed')


def convert_to_binary(filename):
	# here we are just naming the function so it is easy to spot
	with open(filename, 'rb') as file:
		# 'rb' is to read as binary 
		binaryData = file.read()
	return binaryData


def connect_insert_commit(insert_data, sql_insert_blob_query):
    connection = mysql.connector.connect(host='localhost', database = database, user = user, password = password)
    cursor = connection.cursor()
		
	#We need to reconvert to tuple format in order to keep similarities ( yes horseinfo only has one value)
    insert_BLOB_tuple = (insert_data)
    result = cursor.execute(sql_insert_blob_query, insert_BLOB_tuple)
    connection.commit()
    return connection,cursor,result
###



def insertBLOB_horseinfo(photo):
	print('Attempting to insert horseinfo')
	insert_data = photo
	sql_insert_blob_query = horseinfo_insert_stmt

	try:
		connection, cursor, result = connect_insert_commit(insert_data, sql_insert_blob_query)
		print('Image and file successfully transferred into horseinfo')
	except mysql.connector.Error as error:
		print('Failed. {}'.format(error))
	finally:
		close(connection, cursor)


def insertBLOB_transactionid(certificate_transaction):
	print('Attempting to insert Transaction')
	insert_data = certificate_transaction
	sql_insert_blob_query = transactionid_insert_stmt
	try:
		connection, cursor, result = connect_insert_commit(insert_data, sql_insert_blob_query)
		print('Image and file successfully transferred into horseinfo')
	except mysql.connector.Error as error:
		print('Failed. {}'.format(error))
	finally:
		close(connection, cursor)



def insertBLOB_sireid(certificate):
	print('Attempting to insert Sire')
	insert_data = certificate
	sql_insert_blob_query = sireid_insert_stmt
	try:
		connection, cursor, result = connect_insert_commit(insert_data, sql_insert_blob_query)
		print('Image and file successfully transferred into horseinfo')
	except mysql.connector.Error as error:
		print('Failed. {}'.format(error))
	finally:
		close(connection, cursor)
			


def insertBLOB_damid(certificate):
	print('Attempting to insert Dame')
	insert_data = certificate
	sql_insert_blob_query = damid_insert_stmt
	try:
		connection, cursor, result = connect_insert_commit(insert_data, sql_insert_blob_query)
		print('Image and file successfully transferred into horseinfo')
	except mysql.connector.Error as error:
		print('Failed. {}'.format(error))
	finally:
		close(connection, cursor)


def insertBLOB_trainerid(certification):
	print('Attempting to insert Trainer')
	insert_data = certification
	sql_insert_blob_query = trainerid_insert_stmt
	try:
		connection, cursor, result = connect_insert_commit(insert_data, sql_insert_blob_query)
		print('Image and file successfully transferred into horseinfo')
	except mysql.connector.Error as error:
		print('Failed. {}'.format(error))
	finally:
		close(connection, cursor)



def insertBLOB_bonerecordsid(xray):
	print('Attempting to insert Bone Records')
	insert_data = xray
	sql_insert_blob_query = bonerecords_insert_stmt
	try:
		connection, cursor, result = connect_insert_commit(insert_data, sql_insert_blob_query)
		print('Image and file successfully transferred into horseinfo')
	except mysql.connector.Error as error:
		print('Failed. {}'.format(error))
	finally:
		close(connection, cursor)
			
