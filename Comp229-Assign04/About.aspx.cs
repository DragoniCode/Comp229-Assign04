using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class About : Page
    {
        private Model.Class1 _Model;
        private  Model.Class2 _Mail;

        protected void Page_Load(object sender, EventArgs e)
        {
            var name = Request.QueryString["name"];
            var faction = Request.QueryString["faction"];
            if (string.IsNullOrEmpty(name))
            {
                Response.Redirect("~/Default.aspx");
                return;
            }
            _Model = Global.Models.FirstOrDefault(tModel => tModel.name == name && tModel.faction == faction);
            SetBindings();
            name_row.Visible = true;
            row1.Visible = false;
        }
        
        private void SetBindings()
        {


            modelImg.ImageUrl = _Model.imageUrl;
            nameLabel.Text = _Model.name;
            factionLabel.Text = _Model.faction;
            rankLabel.Text = _Model.rank.ToString();
            baseLabel.Text = _Model._base + "mm";
            sizeLabel.Text = _Model.size.ToString();
            deploymentzoneLabel.Text = _Model.deploymentZone;


            traitsRepeater.DataSource = _Model.traits;
            traitsRepeater.DataBind();


            typeRepeater.DataSource = _Model.types;
            typeRepeater.DataBind();

            defenceChartRepeater.DataSource = _Model.defenseChart;
            defenceChartRepeater.DataBind();


            mobilityLabel.Text = _Model.mobility.ToString();
            willpowerLabel.Text = _Model.willpower.ToString();
            resilienceLabel.Text = _Model.resiliance.ToString();
            woundsLabel.Text = _Model.wounds.ToString();


            actionRepeater.DataSource = _Model.actions;
            actionRepeater.DataBind();

            specialAbilitiesRepeater.DataSource = _Model.specialAbilities;
            specialAbilitiesRepeater.DataBind();

        }

        
        protected void UpdateButton_Click(object sender, EventArgs e)

        {
            Label4.Visible = false;
            _Model.name = NameTextBox.Text;

            _Model.faction = FactionTextBox.Text;

            _Model.deploymentZone = deploymentZoneTextBox.Text;
            _Mail.c_Address = c_AddressTextBox.Text;
            _Mail.c_Name = c_NameTextBox.Text;

            Global.UpdateNewJsonFile();
            
            Global.EmailJsonFile(_Mail.c_Address,_Mail.c_Name, Global.otherModelsJsonFilePath);
            Label4.Visible = true;
        }

    }
}