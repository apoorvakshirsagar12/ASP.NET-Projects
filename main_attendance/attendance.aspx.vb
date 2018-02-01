Imports System.Data.SqlClient
Imports System.Data.Sql
Partial Class attendance
    Inherits System.Web.UI.Page
    'Dim code As String
    'Dim conn As SqlConnection
    'Dim constr As String
    'Dim reader As SqlDataReader
    'Dim cmd As SqlCommand
    'Dim cmdstr, dept, sname, ccode As String

    'Protected Sub ddlcoursename_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlcoursename.SelectedIndexChanged

    '    lblcal.Visible = True
    '    lbldate.Visible = True
    '    lbldateans.Visible = True
    '    lbllec.Visible = True
    '    lbllecans.Visible = True
    '    lblyear.Visible = True
    '    lblyearans.Visible = True
    '    btnshow.Visible = True
    '    Calendar.Visible = True
    '    conn.Open()
    '    cmdstr = "select course_code from course_info where course_name='" & ddlcoursename.SelectedValue & "'"
    '    cmd = New SqlCommand(cmdstr, conn)
    '    reader = cmd.ExecuteReader
    '    If reader.Read Then
    '        ccode = reader("course_code")
    '    End If
    '    reader.Close()

    '    cmdstr = "select year from staff_info where course_code='" & ccode & "'"
    '    cmd = New SqlCommand(cmdstr, conn)
    '    reader = cmd.ExecuteReader
    '    If reader.Read Then
    '        lblyearans.Text = reader("year")
    '    End If
    '    reader.Close()
    '    conn.Close()

    'End Sub

    'Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    '    constr = ConfigurationManager.ConnectionStrings("attendanceConnectionString").ConnectionString.ToString()
    '    conn = New SqlConnection(constr)
    '    conn.Open()
    '    dept = Session("dept")
    '    cmdstr = "select staff_name from user_info where user_id='" & Session("uid") & "'"
    '    cmd = New SqlCommand(cmdstr, conn)
    '    reader = cmd.ExecuteReader

    '    If reader.Read Then
    '        sname = reader("staff_name")
    '    End If
    '    reader.Close()

    '    cmdstr = "select c.course_name,c.course_code,s.year from course_info c,staff_info s where s.staff_name='" & sname & "' and s.dept_name='" & Session("dept") & "' and c.course_code=s.course_code"
    '    cmd = New SqlCommand(cmdstr, conn)
    '    reader = cmd.ExecuteReader
    '    ddlcoursename.Items.Add("None")
    '    While reader.Read
    '        ddlcoursename.Items.Add(reader("course_name"))
    '    End While
    '    reader.Close()
    '    conn.Close()
    'End Sub

    'Protected Sub btnshow_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnshow.Click

    'End Sub
End Class
