Public Class Form1

    Private Sub TextBox1_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtvb.TextChanged

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnsum.Click
        '변수선언
        Dim vb, db, c As Integer
        Dim sum As Integer
        Dim avg As Single

        '입력
        vb = txtvb.Text
        db = txtdb.Text
        c = txtc.Text

        '합계
        sum = vb + db + c


        '출력
        txtsum.Text = sum



    End Sub

    Private Sub btnavg_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnavg.Click

        '변수선언
        Dim vb, db, c As Integer
        Dim sum As Integer
        Dim avg As Single

        '입력
        vb = txtvb.Text
        db = txtdb.Text
        c = txtc.Text


        '평균
        sum = vb + db + c
        avg = sum / 3

        '출력
        txtavg.Text = avg

    End Sub
End Class
