Public Class Form1

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnsum.Click
        Dim vb, db, c As Integer
        Dim sum As Integer

        vb = txtvb.Text
        db = txtdb.Text
        c = txtc.Text

        sum = vb + db + c

        txtsum.Text = sum

        
    End Sub

    Private Sub btnavg_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnavg.Click
        Dim vb, db, c As Integer
        Dim sum, avg As Integer

        vb = txtvb.Text
        db = txtdb.Text
        c = txtc.Text

        sum = vb + db + c
        avg = sum / 3

        txtavg.Text = avg


    End Sub
End Class
