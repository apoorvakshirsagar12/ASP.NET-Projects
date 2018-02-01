Imports System.Data.SqlClient
Imports System.Data.Sql
Partial Class staff
    Inherits System.Web.UI.Page

    Dim code, c_code As String
    Dim conn As SqlConnection
    Dim constr As String
    Dim reader As SqlDataReader
    Dim cmd As SqlCommand
    Dim dept As String
    Dim cmdstr As String

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand

        Static flag As Int32 = 1
        If (flag = 1) Then

            code = Convert.ToString(e.CommandArgument)

            If e.CommandName = "EditR" Then

                GridView1.Enabled = False
                btncancle.Enabled = True
                btnupdate.Enabled = True
                conn.Open()
                txtstaffname.ReadOnly = False
                txtaadhaar.ReadOnly = False

                cmdstr = "select c.ccode,c.course_code,c.course_name,c.dept_name,c.degree,s.semester,s.class,c.course_type,s.staff_name,s.unique_id from course_info c,staff_info s where c.course_code='" & code & "' and c.course_code=s.course_code"
                cmd = New SqlCommand(cmdstr, conn)
                reader = cmd.ExecuteReader()

                If (reader.Read) Then

                    txtcoursename.Text = reader("course_name")
                    txtcode.Text = reader("ccode")
                    txtdept.Text = reader("dept_name")
                    ddlsem.SelectedValue = reader("semester")
                    ddlclass.SelectedValue = reader("class")
                    ddltype.SelectedValue = reader("course_type")
                    txtstaffname.Text = reader("staff_name")
                    txtaadhaar.Text = reader("unique_id")

                End If

                conn.Close()
            End If

            flag = 0

        End If

        SqlDataSource1.SelectCommand = "SELECT c.course_code,c.course_name,c.dept_name,c.degree,c.annual_year,c.ccode,c.course_type,s.course_code,s.semester,s.value_sem,s.class,s.staff_name,s.unique_id FROM course_info c,staff_info s where c.course_code=s.course_code and c.dept_name='" & Session("dept") & "' and c.degree='" & Session("degree") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by s.value_sem"
        SqlDataSource1.Select(DataSourceSelectArguments.Empty)

    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing

    End Sub

    Protected Sub GridView1_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating

    End Sub

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

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click

        If txtstaffname.Text <> "" And txtaadhaar.Text <> "" Then

            c_code = String.Concat(txtcode.Text, "#", ddlannualyear.SelectedValue)

            SqlDataSource1.UpdateCommand = "UPDATE [staff_info] SET staff_name='" & txtstaffname.Text & "' where course_code='" & c_code & "'"
            SqlDataSource1.Update()
            SqlDataSource1.UpdateCommand = "UPDATE [staff_info] SET unique_id='" & txtaadhaar.Text & "' where course_code='" & c_code & "'"
            SqlDataSource1.Update()

            GridView1.Enabled = True
            txtstaffname.ReadOnly = True
            txtaadhaar.ReadOnly = True
            btnupdate.Enabled = False
            btncancle.Enabled = False

            txtcode.Text = ""
            txtcoursename.Text = ""
            txtdept.Text = ""
            txtstaffname.Text = ""
            txtaadhaar.Text = ""

            SqlDataSource1.SelectCommand = "SELECT c.course_code,c.course_name,c.dept_name,c.degree,c.annual_year,c.ccode,c.course_type,s.course_code,s.semester,s.value_sem,s.class,s.staff_name,s.unique_id FROM course_info c,staff_info s where c.course_code=s.course_code and c.dept_name='" & Session("dept") & "' and c.degree='" & Session("degree") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by s.value_sem"
            SqlDataSource1.Select(DataSourceSelectArguments.Empty)
        Else
            lblmsg.Text = "Please Fill all the Fields"
            'MsgBox("Please Fill all the Fields", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Exclamation, "Warning")
        End If

    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancle.Click
       
        GridView1.Enabled = True
        txtstaffname.ReadOnly = True
        txtaadhaar.ReadOnly = True
        btnupdate.Enabled = False
        btncancle.Enabled = False

        txtcode.Text = ""
        txtcoursename.Text = ""
        txtdept.Text = ""
        txtstaffname.Text = ""
        txtaadhaar.Text = ""


    End Sub

    Protected Sub ddlannualyear_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlannualyear.SelectedIndexChanged
        SqlDataSource1.SelectCommand = "SELECT c.course_code,c.course_name,c.dept_name,c.degree,c.annual_year,c.ccode,c.course_type,s.course_code,s.semester,s.value_sem,s.class,s.staff_name,s.unique_id FROM course_info c,staff_info s where c.course_code=s.course_code and c.dept_name='" & Session("dept") & "' and c.degree='" & Session("degree") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by s.value_sem"
        SqlDataSource1.Select(DataSourceSelectArguments.Empty)
    End Sub
End Class
