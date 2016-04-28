using OnlineEducation.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEducation.Pages
{
    public partial class CSharp : System.Web.UI.Page
    {
        PageMain main = new PageMain();
        private const int IDTYPE = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            main.AddPage(IDTYPE, pnlOne);
        }
    }
}