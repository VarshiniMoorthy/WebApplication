using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication
{
    public class User
    {
        public string FirstName { set; get; }
        public string LastName { set; get; }
        public int Age { set; get; }
        public string SetPassword { set; get; }
        public string ConfirmPassword { set; get; }
        public string Gender { get; set; }
        public string Email { get; set; }
        public string LocationAddress { get; set; }
        public string City { get; set; }
        public string Pincode { get; set; }


    }
}