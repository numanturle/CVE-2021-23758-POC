using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxPro;


namespace CVE_2021_23758_POC
{
    public partial class demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AjaxPro.Utility.RegisterTypeForAjax(typeof(demo));
        }

        [AjaxPro.AjaxMethod]
        public static String TestAjax(Object obj)
        {
            UserInfo u = obj as UserInfo;
            return u.Name;
        }
    }
}