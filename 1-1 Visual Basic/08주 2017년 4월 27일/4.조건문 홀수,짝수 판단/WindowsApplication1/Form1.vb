Public Class Form1
    Dim num As Integer
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        num = TextBox1.Text

        If num Mod 2 = 0 Then
            TextBox2.Text = "짝수"
        Else
            TextBox2.Text = "홀수"
        End If

    End Sub
End Class
