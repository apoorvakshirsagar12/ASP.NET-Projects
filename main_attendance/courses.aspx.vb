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

Partial Class courses
    Inherits System.Web.UI.Page
    Dim code, degree As String
    Dim conn As SqlConnection
    Dim sem As Integer
    Dim constr As String
    Dim reader, reader1 As SqlDataReader
    Dim cmd, cmd1 As SqlCommand
    Dim cmdstr, cmdstr1 As String
    Dim confirm As Integer
    Dim dept As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        lblmsg.Text = ""
        constr = ConfigurationManager.ConnectionStrings("attendanceConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)

        dept = Session("dept")
        If Not IsPostBack Then

            If Session("dept") = "MCA" Then
                ddlclass.Items.Add("FY")
                ddlclass.Items.Add("SY")
                ddlclass.Items.Add("TY")
            Else
                ddlclass.Items.Add("FE")
                ddlclass.Items.Add("SE")
                ddlclass.Items.Add("TE")
                ddlclass.Items.Add("BE")
            End If

            btncancle.Enabled = False
            btnupdate.Enabled = False

        End If


        If Not IsPostBack Then

            ddldegree.SelectedValue = Session("degree")
            ddldegree.Enabled = False

            conn.Open()
            cmdstr = "select distinct annual_year from course_info where dept_name='" & dept & "' and degree='" & Session("degree") & "'"
            cmd = New SqlCommand(cmdstr, conn)
            reader = cmd.ExecuteReader

            ddlannualyear.Items.Add("None")
            While (reader.Read)
                ddlannualyear.Items.Add(reader("annual_year"))
            End While
            reader.Close()
            conn.Close()

        End If


    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand


        Static flag As Int32 = 1
        If (flag = 1) Then

            code = Convert.ToString(e.CommandArgument)

            If e.CommandName = "DeleteR" Then

                SqlDataSource1.DeleteCommand = "DELETE from course_info where course_code='" & code & "' and annual_year='" & ddlannualyear.SelectedValue & "'"
                SqlDataSource1.Delete()

            ElseIf e.CommandName = "EditR" Then

                GridView1.Enabled = False

                btncancle.Enabled = True
                btnupdate.Enabled = True
                conn.Open()
                txtname.ReadOnly = False

                cmdstr = "select c.ccode,c.course_code,c.course_name,c.sys_date,c.dept_name,c.degree,s.semester,s.class from course_info c,staff_info s where c.course_code='" & code & "' and c.course_code=s.course_code"
                cmd = New SqlCommand(cmdstr, conn)
                reader = cmd.ExecuteReader

                If (reader.Read) Then

                    txtcode.Text = reader("ccode")
                    txtdate.Text = reader("sys_date")
                    txtdept.Text = reader("dept_name")
                    txtname.Text = reader("course_name")
                    ddlsem.SelectedValue = reader("semester")
                    ddlclass.SelectedValue = reader("class")


                End If

                conn.Close()
            End If

            flag = 0

        End If
        SqlDataSource1.SelectCommand = "SELECT c.course_code,c.annual_year,c.ccode,c.iselective,c.course_type,c.course_name, c.sys_date, c.dept_name,s.semester,s.value_sem,s.class,c.degree FROM course_info c,staff_info s where c.course_code=s.course_code and c.dept_name='" & Session("dept") & "' and c.degree='" & Session("degree") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by s.value_sem"
        SqlDataSource1.Select(DataSourceSelectArguments.Empty)


    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click

        If txtname.Text <> "" Then
            Dim name, c_code As String
            name = txtname.Text
            c_code = String.Concat(txtcode.Text, "#", ddlannualyear.SelectedValue)

            SqlDataSource1.UpdateCommand = "UPDATE [course_info] SET course_name='" & name & "' where course_code='" & c_code & "'"
            SqlDataSource1.Update()
            GridView1.Enabled = True
            txtname.ReadOnly = True
            btnupdate.Enabled = False
            btncancle.Enabled = False
            txtname.Text = ""
            txtdate.Text = ""
            txtcode.Text = ""
            txtdept.Text = ""


            SqlDataSource1.SelectCommand = "SELECT c.course_code,c.annual_year,c.ccode,c.iselective,c.course_type,c.course_name, c.sys_date, c.dept_name,s.semester,s.value_sem,s.class,c.degree FROM course_info c,staff_info s where c.course_code=s.course_code and c.dept_name='" & Session("dept") & "' and c.degree='" & Session("degree") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by s.value_sem"
            SqlDataSource1.Select(DataSourceSelectArguments.Empty)

        Else
            lblmsg.Text = "Please Fill all the Fields"
            'MsgBox("Please Fill all the Fields", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Exclamation, "Warning")
        End If



    End Sub

    Protected Sub btncancle_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancle.Click

        txtname.ReadOnly = True
        btnupdate.Enabled = False
        btncancle.Enabled = False
        ddlclass.Enabled = False
        ddlsem.Enabled = False
        ddldegree.Enabled = False
        txtname.Text = ""
        txtdate.Text = ""
        txtcode.Text = ""
        txtdept.Text = ""
        GridView1.Enabled = True

    End Sub


    Protected Sub ddlannualyear_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlannualyear.SelectedIndexChanged

        SqlDataSource1.SelectCommand = "SELECT c.course_code,c.annual_year,c.ccode,c.iselective,c.course_type,c.course_name, c.sys_date, c.dept_name,s.semester,s.value_sem,s.class,c.degree FROM course_info c,staff_info s where c.course_code=s.course_code and c.dept_name='" & Session("dept") & "' and c.degree='" & Session("degree") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by s.value_sem"
        SqlDataSource1.Select(DataSourceSelectArguments.Empty)

    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting

    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing

    End Sub

    Protected Sub GridView1_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating

    End Sub

    Protected Sub btnimport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnimport.Click
        Response.Redirect("feedcourse.aspx")
    End Sub
End Class
