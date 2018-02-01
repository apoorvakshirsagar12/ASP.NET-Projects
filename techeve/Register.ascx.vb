Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.Data
Imports System.Data.OleDb
Imports System.IO
Imports System.Net.Mail

Partial Class Register
    Inherits System.Web.UI.UserControl

    Dim conn As SqlConnection
    Dim cmd As SqlCommand
    Dim reader As SqlDataReader
    Dim cmdstr, cmdstr2, constr As String
    Dim src, des As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblerror.Text = ""
        If Not IsPostBack Then
            MultiView1.SetActiveView(View1)
        End If

    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Dim groupname, eventname As String
        Dim id As Integer

        Try
            If txtcontact.Text.Length = 10 Then

                constr = ConfigurationManager.ConnectionStrings("RegConnectionString").ConnectionString.ToString()
                conn = New SqlConnection(constr)
                conn.Open()


                cmdstr = "select group_name,event_name from reg_table where group_name='" & txtgroupname.Text & "' and event_name='" & ddleventname.SelectedItem.Value & "'"
                cmd = New SqlCommand(cmdstr, conn)
                reader = cmd.ExecuteReader()

                If (reader.Read) Then
                    lblerror.Text = "Group Name for this event already exist"
                    reader.Close()
                Else
                    reader.Close()

                    txtgroupname.Text = txtgroupname.Text.Replace("'", "''").Replace("<", "")
                    txtgroupleadname.Text = txtgroupleadname.Text.Replace("'", "''").Replace("<", "")
                    txtcontact.Text = txtcontact.Text.Replace("'", "''").Replace("<", "")
                    txtcollegename.Text = txtcollegename.Text.Replace("'", "''").Replace("<", "")
                    txtcity.Text = txtcity.Text.Replace("'", "''").Replace("<", "")
                    txtstate.Text = txtstate.Text.Replace("'", "''").Replace("<", "")
                    groupname = txtgroupname.Text
                    eventname = ddleventname.SelectedItem.Value

                    cmdstr = "insert into reg_table(group_name,group_lead_name,no_of_participants,event_name,email_id,contact_no,college_name,city_name,state,sys_date) values('" & txtgroupname.Text & "','" & txtgroupleadname.Text & "'," & Convert.ToInt32(txtparticipants.Text) & ",'" & ddleventname.SelectedItem.Value & "','" & txtemailaddress.Text & "','" & txtcontact.Text & "','" & txtcollegename.Text & "','" & txtcity.Text & "','" & txtstate.Text & "','" & DateAndTime.Now.ToString("dd/MMM/yyyy") & "')"
                    cmd = New SqlCommand(cmdstr, conn)
                    cmd.ExecuteNonQuery()

                    cmdstr = "select row_id from reg_table where group_name='" & groupname & "' and event_name='" & eventname & "'"
                    cmd = New SqlCommand(cmdstr, conn)
                    reader = cmd.ExecuteReader()

                    If (reader.Read) Then
                        id = reader("row_id")
                    End If
                    reader.Close()

                    lblMsg.Text = "Registered Successfully.Your ID number is : " & id & " .Please note it!"
                    MultiView1.SetActiveView(View2)


                    'Code to send mail to the user
                    'src = "techevegeca@gmail.com"
                    'des = txtemailaddress.Text.ToString()

                    'Dim mail As System.Net.Mail.MailMessage = New System.Net.Mail.MailMessage
                    'mail.To.Add(des)
                    'mail.From = New MailAddress(src, "Tech'eve 2015", System.Text.Encoding.UTF8)
                    'mail.Subject = " ID for " & eventname & " event"
                    'mail.SubjectEncoding = System.Text.Encoding.UTF8
                    'mail.Body = "Your Id for " & eventname & " event is : " & id & ". Thank you for Registration"
                    'mail.BodyEncoding = System.Text.Encoding.UTF8
                    'mail.IsBodyHtml = True
                    'mail.Priority = MailPriority.High

                    'Dim client As New SmtpClient
                    'client.Credentials = New System.Net.NetworkCredential(src, "gmail781994")
                    'client.Port = 587
                    'client.Host = "smtp.gmail.com"
                    'client.EnableSsl = True
                    'client.Send(mail)

                End If
                conn.Close()
            Else

                txtcontact.Text = "Enter Valid Contact Number"
            End If

        Catch ex As Exception
            lblerror.Text = "Some error occured..Please Try Again.."
        End Try


    End Sub

End Class
