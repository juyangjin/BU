Public Class Form1

    Private Sub btnleft_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnleft.Click
        TextBox1.TextAlign = HorizontalAlignment.Left
    End Sub

    Private Sub btncenter_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btncenter.Click
        TextBox1.TextAlign = HorizontalAlignment.Center
    End Sub

    Private Sub btnright_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnright.Click
        TextBox1.TextAlign = HorizontalAlignment.Right
    End Sub
End Class
