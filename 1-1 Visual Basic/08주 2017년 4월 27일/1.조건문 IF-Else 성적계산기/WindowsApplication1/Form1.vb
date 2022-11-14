Public Class Form1
    Dim num As Integer
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        'Dim num As Integer
        num = 90

        If num >= 90 Then
            TextBox1.Text = "합격"
        End If

    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        'Dim num As Integer
        Dim result As String

        num = 90
        If num >= 90 Then
            result = "pass"
        Else
            result = "fail"
        End If
        TextBox2.Text = result

    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        '성적처리 프로그램
        num = 90
        If num >= 90 Then
            TextBox3.Text = "A"
        ElseIf num >= 80 Then
            TextBox3.Text = "B"
        ElseIf num >= 70 Then
            TextBox3.Text = "C"
        Else
            TextBox3.Text = "F"
        End If
    End Sub
End Class
