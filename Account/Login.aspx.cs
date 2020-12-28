using System;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Sprawy.Models;

namespace Sprawy.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Unnamed1_Authenticate(object sender, System.Web.UI.WebControls.AuthenticateEventArgs e)
        {
            e.Authenticated = true;
        }
    }
}