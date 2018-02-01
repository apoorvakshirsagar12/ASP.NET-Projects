Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.Data
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data.OleDb
Imports System.IO

Partial Class feedcourse
    Inherits System.Web.UI.Page

    Dim conn As SqlConnection
    Dim cmd, cmd2 As SqlCommand
    Dim count, excelcounter, exvaluesem As Integer
    Dim f1 As New fetch
    Dim cmdstr, cmdstr2, constr As String
    Dim reader As SqlDataReader
    Dim excourse_code, ccode, excourse_name, exiselective, exstaff_name, excourse_type, exuniqueid As String
    Dim sheet As String = "Sheet1$"

    Protected Sub btnimport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnimport.Click


        If FileUpload1.FileName = "" Or txtyear.Text = "" Then
            lblmsg.Text = "Please fill all the fields"
        ElseIf txtyear.Text.Length <> 7 Or txtyear.Text.Substring(4, 1) <> "-" Then
            lblmsg.Text = "Please follow the given year format"

        ElseIf System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName) <> ".xlsx" Then
            lblmsg.Text = "Please import only Excel files"
        Else
            Session("degree") = ddldegree.SelectedItem.Value



            constr = ConfigurationManager.ConnectionStrings("attendanceConnectionString").ConnectionString.ToString()
            conn = New SqlConnection(constr)

            conn.Open()
            cmdstr = "select s.annual_year from staff_info s,course_info c where s.annual_year='" & txtyear.Text & "' and s.semester=" & ddlsem.SelectedValue & " and s.dept_name='" & Session("dept") & "' and s.class='" & ddlclass.SelectedItem.Value & "' and s.annual_year=c.annual_year and s.dept_name=c.dept_name and c.degree='" & Session("degree") & "'"
            cmd = New SqlCommand(cmdstr, conn)
            reader = cmd.ExecuteReader()

            If (reader.Read) Then
                lblmsg.Text = "courses for this year already exist "
                reader.Close()
            Else
                reader.Close()
                Dim i, iselect As Integer
                Dim query As String
                Dim data As OleDbDataAdapter
                Dim path As String = Server.MapPath(FileUpload1.PostedFile.FileName)
                FileUpload1.SaveAs(path)
                Dim dtExcel As New DataTable()
                Dim SourceConstr As String = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source='" & path & "';Extended Properties= 'Excel 8.0;HDR=Yes;IMEX=1'"
                Dim con As OleDbConnection = New OleDbConnection(SourceConstr)

                query = "Select * from [" & sheet & "]"
                data = New OleDbDataAdapter(query, con)
                data.Fill(dtExcel)
                If f1.checkexcel(dtExcel, Session("dept")) Then
                    excelcounter = 1
                End If

                dtExcel.Reset()

                If excelcounter = 1 Then

                    If Session("dept") = "MCA" Then
                        If ddlsem.SelectedItem.Value = "1" Then

                            If ddlclass.SelectedItem.Value = "FY" Then
                                exvaluesem = 1
                            ElseIf ddlclass.SelectedItem.Value = "SY" Then
                                exvaluesem = 3
                            ElseIf ddlclass.SelectedItem.Value = "TY" Then
                                exvaluesem = 5
                            End If
                        Else

                            If ddlclass.SelectedItem.Value = "FY" Then
                                exvaluesem = 2
                            ElseIf ddlclass.SelectedItem.Value = "SY" Then
                                exvaluesem = 4
                            ElseIf ddlclass.SelectedItem.Value = "TY" Then
                                exvaluesem = 6
                            End If
                        End If

                    Else

                        If ddlsem.SelectedItem.Value = "1" Then

                            If ddlclass.SelectedItem.Value = "FE" Then
                                exvaluesem = 1
                            ElseIf ddlclass.SelectedItem.Value = "SE" Then
                                exvaluesem = 3
                            ElseIf ddlclass.SelectedItem.Value = "TE" Then
                                exvaluesem = 5
                            ElseIf ddlclass.SelectedItem.Value = "BE" Then
                                exvaluesem = 7
                            End If

                        Else

                            If ddlclass.SelectedItem.Value = "FE" Then
                                exvaluesem = 2
                            ElseIf ddlclass.SelectedItem.Value = "SE" Then
                                exvaluesem = 4
                            ElseIf ddlclass.SelectedItem.Value = "TE" Then
                                exvaluesem = 6
                            ElseIf ddlclass.SelectedItem.Value = "BE" Then
                                exvaluesem = 8
                            End If
                        End If
                    End If



                    query = "Select * from [" & sheet & "]"
                    data = New OleDbDataAdapter(query, con)
                    data.Fill(dtExcel)

                    For i = 0 To (dtExcel.Rows.Count - 1)
                        ccode = Convert.ToString(dtExcel.Rows(i)(0)).ToUpper
                        excourse_code = String.Concat(Convert.ToString(dtExcel.Rows(i)(0)), "#", txtyear.Text).ToUpper
                        excourse_name = Convert.ToString(dtExcel.Rows(i)(1))
                        exiselective = Convert.ToString(dtExcel.Rows(i)(2)).ToLower
                        exstaff_name = Convert.ToString(dtExcel.Rows(i)(3))
                        excourse_type = Convert.ToString(dtExcel.Rows(i)(4)).ToLower
                        exuniqueid = Convert.ToString(dtExcel.Rows(i)(5)).ToLower


                        If exiselective = "y" Then
                            iselect = 1
                        Else
                            iselect = 0
                        End If

                        cmdstr = "insert into course_info(course_code,course_name,sys_date,dept_name,degree,annual_year,iselective,ccode,course_type) values('" & excourse_code & "','" & excourse_name & "','" & DateAndTime.Now.ToString("MM/dd/yyyy") & "','" & Session("dept") & "','" & ddldegree.SelectedValue & "','" & txtyear.Text & "'," & iselect & ",'" & ccode & "','" & excourse_type & "')"
                        cmd = New SqlCommand(cmdstr, conn)
                        cmd.ExecuteNonQuery()


                        cmdstr2 = "insert into staff_info(course_code,sys_date,dept_name,semester,annual_year,staff_name,class,unique_id,value_sem) values('" & excourse_code & "','" & DateAndTime.Now.ToString("MM/dd/yyyy") & "','" & Session("dept") & "'," & ddlsem.SelectedItem.Value & ",'" & txtyear.Text & "','" & exstaff_name & "','" & ddlclass.SelectedItem.Value & "','" & exuniqueid & "'," & exvaluesem & ")"
                        cmd2 = New SqlCommand(cmdstr2, conn)
                        cmd2.ExecuteNonQuery()

                    Next

                    lblmsg.Text = "File is imported successfully"
                    lblmsg.ForeColor = Drawing.Color.Blue

                Else

                    lblmsg.Text = "Format of Imported Excel document is invalid..Please follow the below instructions properly"
                    lblmsg.ForeColor = Drawing.Color.Red

                End If

            End If
            conn.Close()
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Session("admin") = "" Then
        '    Response.Redirect("login.aspx")
        'End If

        lblmsg.Text = ""
        lblmsg.ForeColor = Drawing.Color.Red

        If Not IsPostBack Then
            ddldegree.SelectedValue = Session("degree")
            ddldegree.Enabled = False
        End If

    End Sub

    Protected Sub ddldegree_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddldegree.SelectedIndexChanged
        ddlclass.Items.Clear()

        If Session("dept") = "MCA" Then
            ddlclass.Items.Add("FY")
            ddlclass.Items.Add("SY")
            ddlclass.Items.Add("TY")

        ElseIf ddldegree.SelectedItem.Value = "UG" Then
            ddlclass.Items.Add("FE")
            ddlclass.Items.Add("SE")
            ddlclass.Items.Add("TE")
            ddlclass.Items.Add("BE")

        Else
            ddlclass.Items.Add("FE")
            ddlclass.Items.Add("SE")
        End If
    End Sub


End Class