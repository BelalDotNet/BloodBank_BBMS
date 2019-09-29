using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Added Namespace

using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using System.Web.ModelBinding;
using BloodBank.Models;

namespace BloodBank.Management
{
    public partial class RoleManageMent : System.Web.UI.Page
    {
        ApplicationRoleManager roleMgr;
        ApplicationUserManager userMgr;
        protected void Page_Load(object sender, EventArgs e)
        {
            userMgr = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            roleMgr = Context.GetOwinContext().Get<ApplicationRoleManager>();
        }

        protected void grdUsers_PreRender(object sender, EventArgs e)
        {

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<ApplicationUser> grdUsers_GetData() //add <ApplicationUser>
        {
            return userMgr.Users;
        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        public object dvUsers_GetItem([Control]string grdUsers) //add [Control]string grdUsers
        {
            if (grdUsers == null) return new ApplicationUser();
            return (from u in userMgr.Users
                    where u.Id == grdUsers
                    select u).SingleOrDefault();
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void dvUsers_UpdateItem(string Id)
        {
            ApplicationUser user = (from u in userMgr.Users
                                    where u.Id == Id
                                    select u).SingleOrDefault();
            TryUpdateModel(user);
            user.UserName = user.Email; // assign email to username
            IdentityResult result = userMgr.Update(user);
            if (result.Succeeded) Reload();
        }

        public void dvUsers_InsertItem()
        {
            ApplicationUser user = new ApplicationUser();
            TryUpdateModel(user);
            user.UserName = user.Email; // assign email to username
            IdentityResult result = userMgr.Create(user);
            if (result.Succeeded) Reload();
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void dvUsers_DeleteItem(string Id)
        {
            ApplicationUser user = (from u in userMgr.Users
                                    where u.Id == Id
                                    select u).SingleOrDefault();
            IdentityResult result = userMgr.Delete(user);
            if (result.Succeeded) Reload();
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable drdRoles_GetData()  //add <IdentityRole>
        {
            return  roleMgr.Roles;
        }

        protected void drdRoles_PreRender(object sender, EventArgs e)
        {

        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        public object dvRoles_GetItem([Control]string drdRoles) //add [Control] string drdRoles
        {
            if (drdRoles == null) return new IdentityRole();
            return (from r in roleMgr.Roles
                    where r.Id == drdRoles
                    select r).SingleOrDefault();
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void dvRoles_UpdateItem(string Id)
        {
            IdentityRole role = (from r in roleMgr.Roles
                                 where r.Id == Id
                                 select r).SingleOrDefault();
            TryUpdateModel(role);
            IdentityResult result = roleMgr.Update(role);
            if (result.Succeeded) Reload();
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void dvRoles_DeleteItem(string Id)
        {
            IdentityRole role = (from r in roleMgr.Roles
                                 where r.Id == Id
                                 select r).SingleOrDefault();
            IdentityResult result = roleMgr.Delete(role);
            if (result.Succeeded) Reload();
        }

        public void dvRoles_InsertItem()
        {
            IdentityRole role = new IdentityRole();
            TryUpdateModel(role);
            IdentityResult result = roleMgr.Create(role);
            if (result.Succeeded) Reload();
        }

        protected void btnAddRoles_Click(object sender, EventArgs e)
        {
            string userID = ddlUsers.SelectedValue;
            foreach (ListItem item in lstRoles.Items)
            {
                // if role is selected and user is not in it, add user to role
                if (item.Selected)
                {
                    if (!userMgr.IsInRole(userID, item.Text))
                    {
                        userMgr.AddToRole(userID, item.Text);
                    }
                }
                // if role is not selected and user is in it, remove user from role
                else
                {
                    if (userMgr.IsInRole(userID, item.Text))
                    {
                        userMgr.RemoveFromRole(userID, item.Text);
                    }
                }
            }
            grdUsers.DataBind();

        }


        private void Reload()
        {
            drdRoles.DataBind();
            grdUsers.DataBind();
            ddlUsers.DataBind();
            lstRoles.DataBind();
        }


        // Helper method
        public string ListRoles(ICollection<IdentityUserRole> userRoles)
        {
            IdentityRole role;
            var names = new List<string>();

            foreach (var ur in userRoles)
            {
                role = (from r in roleMgr.Roles
                        where r.Id == ur.RoleId
                        select r).SingleOrDefault();
                names.Add(role.Name);
            }
            return string.Join(", ", names);
        }
    }
}