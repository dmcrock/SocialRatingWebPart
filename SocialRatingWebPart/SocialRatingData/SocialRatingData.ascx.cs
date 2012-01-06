using System;
using System.ComponentModel;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using SocialRatingWebPart.socialdataservice;

namespace SocialRatingWebPart.SocialRatingData
{
    [ToolboxItemAttribute(false)]
    public partial class SocialRatingData : WebPart
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            InitializeControl();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            string ratingonConfURL = "http://doug-pc/Wiki1/Pages/Home.aspx";
            string ratingonProjURL = "http://doug-pc/Wiki2/Pages/Home.aspx";
            string ratingonPlansURL = "http://doug-pc/Wiki3/Pages/Home.aspx";

            SocialDataService mySocialDataService = new SocialDataService();
            mySocialDataService.Credentials = System.Net.CredentialCache.DefaultCredentials;
            mySocialDataService.Url = "http://doug-pc/_vti_bin/socialdataservice.asmx";

            SocialRatingDetail confWikiRating = mySocialDataService.GetRatingOnUrl(ratingonConfURL);
            SocialRatingDetail projWikiRating = mySocialDataService.GetRatingOnUrl(ratingonProjURL);
            SocialRatingDetail plansWikiRating = mySocialDataService.GetRatingOnUrl(ratingonPlansURL);

            addRatingsToWebPart(confWikiRating.Rating, projWikiRating.Rating, plansWikiRating.Rating);

            mySocialDataService.Dispose();
        }

        private void addRatingsToWebPart(int confRate, int projRate, int plansRate)
        {
            int avgRating = 0;
            string confWiki = "Wiki1: " + confRate.ToString();
            string projWiki = "Wiki2: " + projRate.ToString();
            string plansWiki = "Wiki3: " + plansRate.ToString();

            avgRating = (confRate + projRate + plansRate) / 3;

            string avgRatingForWikis = "Average Rating: " + avgRating.ToString();

            lstbxRatingData.Items.Add(confWiki);
            lstbxRatingData.Items.Add(projWiki);
            lstbxRatingData.Items.Add(plansWiki);
            lstbxRatingData.Items.Add(avgRatingForWikis);

            lblData.Text = avgRating.ToString();


        }
    }
}
