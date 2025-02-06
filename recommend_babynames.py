
import pyodbc

try:
    # Establish connection
    conn = pyodbc.connect('DRIVER={SQL Server};SERVER=PCH_SINTHIS;DATABASE=CanadianBabyNameDB1;Trusted_Connection=yes;')
    cursor = conn.cursor()

    # Get user input
    gender = input("Enter baby's gender: ")
    ethnicity = input("Enter baby's ethnicity: ")

    # Execute stored procedure
    cursor.execute("EXEC GetPopularName1 @Gender=?, @Ethnicity=?", gender, ethnicity)
    result = cursor.fetchone()

    if result:
        print(f"The suggested baby name is: {result[0]}")
    else:
        print("No matching name found.")

    # Close connection
    conn.close()
except Exception as e:
    print(f"Error: {e}")
