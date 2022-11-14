Public Class Form1

    Private Sub sum_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles sum.Click
        '변수선언
        Dim ten, fifty, hundred, fivehundred As Integer
        Dim sum As Integer

        ten = txtten.Text * 10
        fifty = txtfifty.Text * 50
        hundred = txthundred.Text * 100
        fivehundred = txtfivehundred.Text * 500

        '합계
        sum = ten + fifty + hundred + fivehundred

        '출력
        txtsum.Text = sum

    End Sub

    Private Sub clear_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles clear.Click
        '변수선언
        Dim ten, fifty, hundred, fivehundred As Integer
        Dim sum As Integer

        '합계
        sum = ten + fifty + hundred + fivehundred

        '지우기
        txtsum.Text = ""

    End Sub

    Private Sub txtfivehundred_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtfivehundred.TextChanged

    End Sub

    Private Sub txtten_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtten.TextChanged

    End Sub
End Class
