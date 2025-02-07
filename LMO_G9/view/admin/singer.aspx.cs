﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using LMO_G9.respository;
using LMO_G9.model;

namespace LMO_G9.view.admin
{
    public partial class WebForm18 : System.Web.UI.Page
    {
        private static SingerResponsitory singerResponsitory = new SingerResponsitory();
        private static Account account;
        private static MusicRepository musicRepository = new MusicRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadData();
                Session["singerEdit"] = null;
            }
        }

        private void loadData()
        {
            grSinger.DataSource = singerResponsitory.getList();
            DataBind();
            account = (Account)Session["account"];
        }

        protected void Xoa_Click(Object sender, CommandEventArgs e)
        {
            if (e.CommandName == "xoa")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                singerResponsitory.Xoa(m);
                loadData();
            }
        }
        protected void delete_Command(Object sender, CommandEventArgs e)
        {
            if (e.CommandName == "delete")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                List<Music> msList = musicRepository.getByCategoryId(id);
                if (msList.Count > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Không thể xóa vì thể loại đang được sử dụng');", true);
                    loadData();
                    return;
                }
                singerResponsitory.Xoa(id);
                loadData();
            }
        }
        protected void edit_Command(Object sender, CommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Singer singer = singerResponsitory.getById(id);
                Session["singerEdit"] = singer;
                Response.Redirect("~/view/admin/edit-page/edit-singer.aspx");
            }
        }
        [WebMethod]
        public static string saveSinger(string singerName, string imgPath)
        {
            string log;
            try
            {
                Singer singer = new Singer();
                singer.Name = singerName;
                singer.ImagePath = imgPath;
                singer.CreateDate = DateTime.Now;
                singer.CreateBy = account.AccountId;
                singer.UpdateDate = DateTime.Now;
                singer.UpdateBy = account.AccountId;
                singerResponsitory.Them(singer);
                log = "Sucess !!!";
            }
            catch (Exception ex)
            {
                log = "Something wrong with the error: " + ex.Message;
            }
            return log;
        }
    }
}