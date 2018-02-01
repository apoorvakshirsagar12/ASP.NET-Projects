Imports System
Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.Data
Imports System.Data.OleDb

Partial Class feedback
    Inherits System.Web.UI.Page

    Dim conn As SqlConnection
    Dim cmd As SqlCommand
    Dim reader As SqlDataReader
    Dim cmdstr, cmdstr2, constr As String

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click

        constr = ConfigurationManager.ConnectionStrings("RegConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)
        conn.Open()

        name.Text = name.Text.Replace("'", "''").Replace("<", "")
        feedback.Text = feedback.Text.Replace("'", "''").Replace("<", "")
        If email.Text = "" Then
            email.Text = "No"
        End If

        cmdstr = "insert into feedback_table(name1,email,feedback) values('" & name.Text & "','" & email.Text & "','" & feedback.Text & "')"
        cmd = New SqlCommand(cmdstr, conn)
        cmd.ExecuteNonQuery()
        lblerror.Text = "Thank you for your Feedback !!!!"
        name.Text = ""
        feedback.Text = ""
        email.Text = ""

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblerror.Text = ""
    End Sub
End Class
