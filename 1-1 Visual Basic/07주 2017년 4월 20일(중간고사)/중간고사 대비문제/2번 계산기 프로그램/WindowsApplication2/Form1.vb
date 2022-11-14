Public Class Form1
    Dim num1, num2, result As Integer

    Private Sub TextBox3_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtresult.TextChanged

    End Sub

    Private Sub btnsum_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnsum.Click
        'txtresult.Text = Val(txtfirst.Text) + Val(txtsecond.Text)
        'Dim num1, num2, result As Integer

        '입력
        num1 = txtfirst.Text
        num2 = txtsecond.Text

        '처리
        result = num1 + num2

        txtresult.Text = result



    End Sub

    Private Sub btnsub_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnsub.Click
        'Dim num1, num2, result As Integer

        '입력
        num1 = txtfirst.Text
        num2 = txtsecond.Text

        '처리
        result = num1 - num2

        txtresult.Text = result

    End Sub

    Private Sub btnmulti_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnmulti.Click
        'Dim num1, num2, result As Integer


        num1 = txtfirst.Text
        num2 = txtsecond.Text

        result = num1 + num2

        txtresult.Text = result

    End Sub

    Private Sub btndiv_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btndiv.Click
        'Dim num1, num2, result As Integer

        num1 = txtfirst.Text
        num2 = txtsecond.Text

        result = num1 / num2

        txtresult.Text = result

    End Sub

    Private Sub btnmod_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnmod.Click
        'Dim num1,num2,result As Integer

        num1 = txtfirst.Text
        num2 = txtsecond.Text

        result = num1 Mod num2

        txtresult.Text = result

    End Sub
End Class
