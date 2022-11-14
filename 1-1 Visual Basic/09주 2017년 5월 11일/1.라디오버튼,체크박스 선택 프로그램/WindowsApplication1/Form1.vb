Public Class Form1

    Private Sub RadioButton1_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RadioButton1.CheckedChanged, RadioButton3.CheckedChanged, RadioButton2.CheckedChanged

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If RadioButton1.Checked = True Then
            TextBox1.Text = RadioButton1.Text
        ElseIf RadioButton2.Checked = True Then
            TextBox1.Text = RadioButton2.Text
        Else
            TextBox1.Text = RadioButton3.Text
        End If
    End Sub
End Class
