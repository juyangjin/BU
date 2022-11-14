Public Class Form1

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        'TextBox1.Text = 20
        '변수선언
        'dim 변수명 as 데이터형(자료형)
        Dim age As Integer
        age = 20.6
        TextBox1.Text = age
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim age As Single
        age = 20.6
        TextBox3.Text = age

    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim dept As String
        dept = "정보통신학부"
        TextBox4.Text = dept
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim num As Integer
        num = TextBox1.Text
        TextBox2.Text = "총금액" & num * 1.1 & "입니다."
    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click

    End Sub

    Private Sub TextBox1_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextBox1.TextChanged

    End Sub
End Class
