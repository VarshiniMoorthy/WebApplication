using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
namespace WebApplication
{
    public class UserRespository
    {
        internal static void ExecuteInsert(User user)
        {
            try
            {

                using (SqlConnection sqlConn = new SqlConnection(Registeration.GetConnectionString()))
                {
                    SqlCommand sqlCmd = new SqlCommand("sp_RegisterationDetails", sqlConn);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    {
                        sqlCmd.Parameters.AddWithValue("@FirstName", user.FirstName);
                        sqlCmd.Parameters.AddWithValue("@LastName", user.LastName);
                        sqlCmd.Parameters.AddWithValue("@Age", user.Age);
                        sqlCmd.Parameters.AddWithValue("@SetPassword",user.SetPassword);
                        sqlCmd.Parameters.AddWithValue("@ConfirmPassword", user.ConfirmPassword);
                        sqlCmd.Parameters.AddWithValue("@Gender", user.Gender);
                        sqlCmd.Parameters.AddWithValue("@Email", user.Email);
                        sqlCmd.Parameters.AddWithValue("@LocationAddress", user.LocationAddress);
                        sqlCmd.Parameters.AddWithValue("@City", user.City);
                        sqlCmd.Parameters.AddWithValue("@Pincode", user.Pincode);
                        sqlConn.Open();
                        sqlCmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception exception)
            {
                Console.WriteLine("problem in opening connection" + exception.Message);
            }

        }
        internal static int ExecuteLogin(string Email,string SetPassword)
        {
            using (SqlConnection sqlConn = new SqlConnection(Registeration.GetConnectionString()))
            {
                sqlConn.Open();
                SqlCommand sqlCmd = new SqlCommand("sp_Login", sqlConn);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@Email",Email);
                sqlCmd.Parameters.AddWithValue("@SetPassword",SetPassword);
                int result = (Int32)sqlCmd.ExecuteScalar();
                sqlConn.Close();
                return result;
            }
        }
    }

}