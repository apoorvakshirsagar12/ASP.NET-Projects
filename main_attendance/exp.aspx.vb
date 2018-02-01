
Partial Class exp
    Inherits System.Web.UI.Page

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim str, str1(10) As String
        str = Request.Form(txtfrom.UniqueID)
        str1 = Split(str, "/")

        For i = 0 To (str1.Length - 1)
            MsgBox(str1(i))
        Next
        MsgBox(Convert.ToInt32("02"))

    End Sub
End Class
