Imports System.Data.SqlClient
Imports System.Data.Sql
Partial Class signup
    Inherits System.Web.UI.Page

    Dim conn As SqlConnection
    Dim constr, cmdstr, dept As String
    Dim cmd As SqlCommand
    Dim reader1 As SqlDataReader


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblmsg.Text = ""

        constr = ConfigurationManager.ConnectionStrings("attendanceConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)

    End Sub

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
    
        Dim pass As String
      
        If ((txtstaffname.Text <> "") And (txtid.Text <> "") And (txtpasswd.Text <> "") And (txtrepasswd.Text <> "") And (txtfavbook.Text <> "") And (txtfavdish.Text <> "") And (ddldept.SelectedIndex <> 0)) Then

            If String.Compare(txtpasswd.Text, txtrepasswd.Text) <> 0 Then
                lblmsg.ForeColor = Drawing.Color.Red
                lblmsg.Text = "Password mismatch"

            Else
                pass = txtpasswd.Text

                conn.Open()
                cmdstr = "select * from staff_reg where unique_id='" & txtid.Text & "'"
                cmd = New SqlCommand(cmdstr, conn)
                reader1 = cmd.ExecuteReader()

                If reader1.Read() Then
                    lblmsg.ForeColor = Drawing.Color.Red
                    lblmsg.Text = "The E-mail is already Registered.."
                Else
                    reader1.Close()
                    cmdstr = "insert into staff_reg(unique_id,staff_name,staff_dept,password,sys_date,sec_ans1,sec_ans2) values('" & txtid.Text & "','" & txtstaffname.Text & "','" & ddldept.SelectedValue & "','" & pass & "','" & DateAndTime.Now & "','" & txtfavbook.Text & "','" & txtfavdish.Text & "')"
                    cmd = New SqlCommand(cmdstr, conn)
                    cmd.ExecuteNonQuery()
                    conn.Close()

                    clearfields()

                    lblmsg.ForeColor = Drawing.Color.Blue
                    lblmsg.Text = "Information saved successfully.."
                End If
                
            End If

        Else
            lblmsg.ForeColor = Drawing.Color.Red
            lblmsg.Text = "* Please Fill all the Fields"

        End If

    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        clearfields()
    End Sub

    Protected Sub clearfields()
        txtid.Text = ""
        txtpasswd.Text = ""
        txtrepasswd.Text = ""
        txtstaffname.Text = ""
        txtfavbook.Text = ""
        txtfavdish.Text = ""
        ddldept.SelectedIndex = 0
    End Sub


End Class
