using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TypedDataControls
{
    public partial class StronglyTypedDataControl : System.Web.UI.Page
    {
        List<Employee> employees = new List<Employee>(new Employee[] {
           new Employee { Number = 1, Name = "Eddie J. McBride", Title = "Construction Laborer", Username = "@ejMcBride" },
           new Employee { Number = 2, Name = "Mary R. Rich" , Title = "Therapeutic recreation specialist", Username = "@mrRich"},
           new Employee { Number = 3, Name = "Ashley L. James", Title = "Time Clerk", Username = "@alJames"},
           new Employee { Number = 4, Name = "Raymond B. Torres", Title = "Grill cook", Username = "@rbTorres" } 
        });

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                empRepeater2.DataBind();
        }

        public IEnumerable<Employee> GetEmployees()
        {
            return employees;
        }
    }

    public class Employee
    {
        public int Number { get; set; }
        public string Name { get; set; }
        public string Title { get; set; }
        public string Username { get; set; }
    }
}