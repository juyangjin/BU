Public Class Form1
    Dim num1, num2 As Integer '입력
    Dim max, min, diff As Integer '출력
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click

        '입력
        num1 = TextBox1.Text
        num2 = TextBox2.Text

        '처리
        If num1 > num2 Then
            max = num1
            min = num2
            diff = num1 - num2

        Else
            max = num2
            min = num1
            diff = num2 - num1

            '출력
            TextBox3.Text = max
            TextBox4.Text = min
            TextBox5.Text = diff
        End If

    End Sub
End Class
