Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data.OleDb
Imports System.Data

Partial Class stud_info
    Inherits System.Web.UI.Page
    Dim code, degree As String
    Dim conn As SqlConnection
    Dim sem As Integer
    Dim constr As String
    Dim reader, reader1 As SqlDataReader
    Dim cmd, cmd1 As SqlCommand
    Dim cmdstr, cmdstr1 As String
    Dim confirm, annual_sem As Integer
    Dim dept As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        lblmsg.Text = ""
        constr = ConfigurationManager.ConnectionStrings("attendanceConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)

        If Not IsPostBack Then
            ddldept.Items.Clear()
            ddldept.Items.Add("Select Your Department")

            conn.Open()
            annual_sem = Convert.ToInt32(Session("annual_sem"))
            cmdstr = "select distinct dept_name from staff_info where annual_year='" & Session("annual_year") & "' and semester=" & annual_sem & " and unique_id='" & Session("unique_id") & "'"
            cmd = New SqlCommand(cmdstr, conn)
            reader = cmd.ExecuteReader()

            While reader.Read()
                ddldept.Items.Add(reader("dept_name"))
            End While

            reader.Close()
            conn.Close()
        End If


    End Sub

    Protected Sub ddldept_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddldept.SelectedIndexChanged
        fillcourses()
        getgrid()
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand

    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting

    End Sub

    Protected Sub GridView1_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating

    End Sub

    Protected Sub rbug_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rbug.CheckedChanged
        fillcourses()
        getgrid()
    End Sub

    Protected Sub rbpg_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rbpg.CheckedChanged
        fillcourses()
        getgrid()
    End Sub

    Protected Sub ddlcourse_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlcourse.SelectedIndexChanged
        getgrid()
    End Sub

    Protected Sub getgrid()
        Dim coursecode As String = ""
        conn.Open()

        cmdstr = "select course_code from course_info where course_name='" & ddlcourse.SelectedItem.Value & "' and dept_name='" & ddldept.SelectedItem.Value & "'"
        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader()

        If reader.Read() Then
            coursecode = reader("course_code")
        End If

        reader.Close()
        conn.Close()

        SqlDataSource1.SelectCommand = "SELECT * from stud_info where course_code='" & coursecode & "' and dept_name='" & ddldept.SelectedItem.Value & "'"
        SqlDataSource1.Select(DataSourceSelectArguments.Empty)

    End Sub

    Protected Sub fillcourses()
        ddlcourse.Items.Clear()
        ddlcourse.Items.Add("None")

        conn.Open()
        annual_sem = Convert.ToInt32(Session("annual_sem"))

        If rbug.Checked Then
            degree = "UG"
        Else
            degree = "PG"
        End If

        cmdstr = "select distinct c.course_name from  staff_info s,course_info c where s.annual_year='" & Session("annual_year") & "' and s.semester=" & annual_sem & " and s.unique_id='" & Session("unique_id") & "' and s.dept_name='" & ddldept.SelectedItem.Value & "' and c.course_code=s.course_code and c.degree='" & degree & "'"
        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader()

        While reader.Read()
            ddlcourse.Items.Add(reader("course_name"))
        End While
        reader.Close()
        conn.Close()
    End Sub
End Class
