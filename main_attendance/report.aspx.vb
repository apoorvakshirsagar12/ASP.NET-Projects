Imports System.Data.Sql
Imports System.Data.SqlClient

Partial Class report
    Inherits System.Web.UI.Page

    Dim conn As SqlConnection
    Dim constr, cmdstr As String
    Dim cmd As SqlCommand
    Dim studname(200), studid(200) As String
    Dim deg As String
    Dim reader As SqlDataReader
    Dim tbreport As New Table

    Protected Sub btndisplayreport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndisplayreport.Click
        Dim i, j, studnum, studcount As Integer
        Dim calfrom(4), calto(4) As String
        Dim thead1 As New TableHeaderRow
        Dim presenty(50) As String
        Dim leccount(50) As Integer
        Dim percent As Double
        Dim dates(50) As String
        Dim studpresenty As Integer
        Dim totallec As Double
        Dim totalpresentlec As Double
        Dim splitarray(50) As String
        Dim splitdates(50) As String

        thead1.HorizontalAlign = HorizontalAlign.Center
        thead1.Cells.Add(New TableCell())
        thead1.Cells.Add(New TableCell())
        thead1.Cells.Add(New TableCell())
        thead1.Cells.Add(New TableCell())
        thead1.Cells.Add(New TableCell())
        thead1.Cells.Add(New TableCell())

        thead1.Cells(0).Text = "Sr. NO."
        thead1.Cells(1).Text = "Enrollment No."
        thead1.Cells(2).Text = "Name"
        thead1.Cells(3).Text = "Lectures Attended"
        thead1.Cells(4).Text = "Attendance(In %) "
        thead1.Cells(5).Text = "Is detained ?"

        tbreport.Caption = String.Concat("Attendance List")
        tbreport.BorderColor = Drawing.Color.Gray
        tbreport.BorderWidth = 3
        tbreport.BorderStyle = BorderStyle.Groove
        tbreport.CellPadding = 10
        tbreport.CellSpacing = 2
        tbreport.GridLines = GridLines.Both
        tbreport.HorizontalAlign = HorizontalAlign.Center
        thead1.BackColor = Drawing.Color.LightGray
        tbreport.Rows.Add(thead1)
        Panel1.Controls.Add(tbreport)

        conn.Open()
        cmdstr = "select stud_name,stud_id from stud_info where course_code='" & ddlcourses.SelectedItem.Value & "' and dept_name='" & ddldept.SelectedItem.Value & "'"
        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader()

        i = 0
        While reader.Read()
            studname(i) = reader("stud_name")
            studid(i) = reader("stud_id")
            i = i + 1
        End While
        studcount = i - 1
        reader.Close()

        calfrom = Split(Request.Form(txtfrom.UniqueID), "/")
        calto = Split(Request.Form(txtto.UniqueID), "/")

        Dim startyear As Integer = Convert.ToInt32(calfrom(2))
        Dim startmonth As Integer = Convert.ToInt32(calfrom(1))
        Dim startdate As Integer = Convert.ToInt32(calfrom(0))
        Dim endyear As Integer = Convert.ToInt32(calto(2))
        Dim endmonth As Integer = Convert.ToInt32(calto(1))
        Dim enddate As Integer = Convert.ToInt32(calto(0))

        For studnum = 0 To studcount
            studpresenty = 0
            totallec = 0
            totalpresentlec = 0

            Array.Clear(dates, 0, dates.Length)
            Array.Clear(presenty, 0, presenty.Length)

            While startyear <= endyear
                cmdstr = "select date,presenty,total_lec from attendance where stud_id='" & studid(studnum) & "' and course_code='" & ddlcourses.SelectedItem.Value & "' and month=" & startmonth & " and year=" & startyear & " and annual_year='" & Session("annual_year") & "' and semester='" & Session("annual_sem") & "'"
                cmd = New SqlCommand(cmdstr, conn)
                reader = cmd.ExecuteReader()

                If reader.Read Then
                    dates(studpresenty) = reader("date")
                    presenty(studpresenty) = reader("presenty")
                    leccount(studpresenty) = reader("total_lec")
                End If
                reader.Close()
                studpresenty = studpresenty + 1

                If startmonth = 12 Then
                    startmonth = 1
                    startyear = startyear + 1
                Else
                    startmonth = startmonth + 1
                End If

                If startmonth > endmonth Then
                    GoTo donewitharrays
                End If

            End While

donewitharrays:

            If studpresenty >= 3 Then

                'to split first row of a student
                splitarray = Split(presenty(0), "#")
                splitdates = Split(dates(0), "#")

                For i = 0 To (leccount(0) - 1)

                    If Convert.ToInt32(splitdates(i)) >= startdate Then
                        totallec = totallec + 1
                        If splitarray(i) = "p" Then
                            totalpresentlec = totalpresentlec + 1
                        End If
                    End If
                Next

                'to split last row of a student
                splitarray = Split(presenty(studpresenty - 1), "#")
                splitdates = Split(dates(studpresenty - 1), "#")

                For i = 0 To (leccount(studpresenty - 1) - 1)

                    If Convert.ToInt32(splitdates(i)) <= enddate Then
                        totallec = totallec + 1
                        If splitarray(i) = "p" Then
                            totalpresentlec = totalpresentlec + 1
                        End If
                    End If
                Next

                'to split middle rows of a student
                For j = 1 To (studpresenty - 2)
                    splitarray = Split(presenty(j), "#")

                    For i = 0 To (leccount(j) - 1)
                        totallec = totallec + 1
                        If splitarray(i) = "p" Then
                            totalpresentlec = totalpresentlec + 1
                        End If
                    Next
                Next


            ElseIf dates.Length = 2 Then

                'to split first row of a student
                splitarray = Split(presenty(0), "#")
                splitdates = Split(dates(0), "#")

                For i = 0 To (leccount(0) - 1)

                    If Convert.ToInt32(splitdates(i)) >= startdate Then
                        totallec = totallec + 1
                        If splitarray(i) = "p" Then
                            totalpresentlec = totalpresentlec + 1
                        End If
                    End If
                Next

                'to split last row of a student
                splitarray = Split(presenty(studpresenty - 1), "#")
                splitdates = Split(dates(studpresenty - 1), "#")

                For i = 0 To (leccount(studpresenty - 1) - 1)

                    If Convert.ToInt32(splitdates(i)) <= enddate Then
                        totallec = totallec + 1
                        If splitarray(i) = "p" Then
                            totalpresentlec = totalpresentlec + 1
                        End If
                    End If
                Next

            ElseIf dates.Length = 1 Then

                splitarray = Split(presenty(0), "#")
                splitdates = Split(dates(0), "#")

                For i = 0 To (leccount(0) - 1)

                    If Convert.ToInt32(splitdates(i)) >= startdate And Convert.ToInt32(splitdates(i)) <= enddate Then
                        totallec = totallec + 1
                        If splitarray(i) = "p" Then
                            totalpresentlec = totalpresentlec + 1
                        End If
                    End If

                Next
            End If

            percent = (totalpresentlec / totallec) * 100

            Dim trow As New TableRow
            trow.HorizontalAlign = HorizontalAlign.Center
            trow.Cells.Add(New TableCell())
            trow.Cells.Add(New TableCell())
            trow.Cells.Add(New TableCell())
            trow.Cells.Add(New TableCell())
            trow.Cells.Add(New TableCell())
            trow.Cells.Add(New TableCell())

            trow.Cells(0).Text = studnum + 1
            trow.Cells(1).Text = studid(studnum)
            trow.Cells(2).Text = studname(studnum)

            If totallec = 0 Then
                trow.Cells(3).Text = "-"
                trow.Cells(4).Text = "-"
                trow.Cells(5).Text = "-"
            Else

                trow.Cells(3).Text = totalpresentlec
                trow.Cells(4).Text = percent

                If percent < 75 Then
                    trow.Cells(5).Text = "Yes"
                Else
                    trow.Cells(5).Text = "No"
                End If

            End If
            tbreport.Rows.Add(trow)
        Next
        lbltotallec.Text = Convert.ToString(totallec)
        conn.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        constr = ConfigurationManager.ConnectionStrings("attendanceConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)
        lblstaffname.Text = Session("staff_name")

    End Sub

    Protected Sub rbug_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rbug.CheckedChanged
        fillcourses()
    End Sub

    Protected Sub rbpg_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rbpg.CheckedChanged
        fillcourses()
    End Sub


    Public Sub fillcourses()
        Dim i As Integer
        ddlcourses.Items.Clear()
        ddlcourses.Items.Add("None")

        If rbpg.Checked Then
            deg = "PG"
        Else
            deg = "UG"
        End If

        conn.Open()
        cmdstr = "select c.ccode,c.course_code,c.course_name from staff_info s,course_info c where s.unique_id='" & Session("unique_id") & "' and c.dept_name='" & ddldept.SelectedItem.Value & "' and s.annual_year='" & Session("annual_year") & "' and s.semester=" & Convert.ToInt32(Session("annual_sem")) & " and c.degree='" & deg & "' and c.course_code=s.course_code"
        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader()

        i = 1

        While reader.Read()
            ddlcourses.Items.Add(reader("course_name"))
            ddlcourses.Items(i).Value = reader("course_code")
            i = i + 1

        End While
        conn.Close()

    End Sub

    Protected Sub ddldept_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddldept.SelectedIndexChanged
        fillcourses()
    End Sub

    Protected Sub ddlcourses_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlcourses.SelectedIndexChanged
        conn.Open()
        cmdstr = "select class from staff_info where course_code='" & ddlcourses.SelectedItem.Value & "' and unique_id='" & Session("unique_id") & "'"
        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader()

        If reader.Read Then
            lblclass.Text = reader("class")
        End If

        conn.Close()
    End Sub
End Class
