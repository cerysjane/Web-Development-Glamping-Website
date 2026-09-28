using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WDA2_1_
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadBlog();
            

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // 1. Get the name for the personalized message
            string name = txtName.Text;

            // 2. Simple confirmation message string
            string message = $"Thank you, {name}! We have received your message.";

            // 3. Clear the form fields
            txtName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtMessage.Text = string.Empty;

            // 4. Register the JavaScript alert (popup)
            // Use ClientScript.RegisterStartupScript for maximum simplicity
            Page.ClientScript.RegisterStartupScript(this.GetType(),
                                                   "SubmissionAlert",
                                                   $"alert('{message}');",
                                                   true);

            // Optionally update the confirmation label as well
            lblConfirmation.Text = "Form submitted successfully!";

            // 1. Check if the user entered text
            if (!string.IsNullOrWhiteSpace(txtEntry.Text))
            {
                // Define the correct file path using the correct operator (~/)
                string filePath = Server.MapPath("~/docs/blogText.txt");

                // 2. Format the new entry with a date stamp
                string newEntry = $"{DateTime.Now.ToShortDateString()} >>>> {txtEntry.Text}";

                // 3. Read the existing content from the file
                string existingContent = "";
                if (File.Exists(filePath))
                {
                    existingContent = File.ReadAllText(filePath);
                }

                // 4. Prepend the new entry to the top of the existing content
                // Environment.NewLine ensures the line break is correct for the system.
                string updatedContent = newEntry + Environment.NewLine + existingContent;

                // 5. Write the entire updated content back to the file
                File.WriteAllText(filePath, updatedContent);

                // 6. Clear the entry box and refresh the display
                txtEntry.Text = string.Empty;
                loadBlog();
            }

        }
        protected void loadBlog()
        {
            string filePath = Server.MapPath("~/docs/blogText.txt");

            if (File.Exists(filePath))
            {
                // Read all content as a single string. TextMode="MultiLine" handles the display.
                txtBlog.Text = File.ReadAllText(filePath);
            }
            else
            {
                // Inform the user if the file doesn't exist
                txtBlog.Text = "Blog file not found. Please ensure /docs/blogText.txt exists.";
            }

        }
    }
}