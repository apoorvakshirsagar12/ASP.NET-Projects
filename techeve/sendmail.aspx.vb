Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Net.Mail


Partial Class sendmail
    Inherits System.Web.UI.Page
    Dim src, des As String

    Protected Sub btnsend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsend.Click

        src = "jaiswaldiksha07@gmail.com"
        des = "pratibhaabarsale@gmail.com"

        Dim mail As System.Net.Mail.MailMessage = New System.Net.Mail.MailMessage
        mail.To.Add(des)
        mail.From = New MailAddress(src, "Wings 2014", System.Text.Encoding.UTF8)
        mail.Subject = "Sample mail"
        mail.SubjectEncoding = System.Text.Encoding.UTF8
        mail.Body = "Hiiiiii"
        mail.BodyEncoding = System.Text.Encoding.UTF8
        mail.IsBodyHtml = True
        mail.Priority = MailPriority.High

        Dim client As New SmtpClient
        client.Credentials = New System.Net.NetworkCredential(src, "gmail781994")
        client.Port = 587
        client.Host = "smtp.gmail.com"
        client.EnableSsl = True
        client.Send(mail)
        MsgBox("done")

    End Sub
End Class
