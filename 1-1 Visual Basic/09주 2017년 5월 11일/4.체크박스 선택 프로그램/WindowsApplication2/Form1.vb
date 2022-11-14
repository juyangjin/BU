Public Class Form1

    Private Sub GroupBox1_Enter(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles GroupBox1.Enter

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        TextBox1.Text = ""

        If CheckBox1.Checked = True Then
            TextBox1.Text = TextBox1.Text & CheckBox1.Text
        End If

        If CheckBox2.Checked = True Then
            TextBox1.Text = TextBox1.Text & CheckBox2.Text
        End If

        If CheckBox3.Checked = True Then
            TextBox1.Text = TextBox1.Text & CheckBox3.Text
        End If

        If CheckBox4.Checked = True Then
            TextBox1.Text = TextBox1.Text & CheckBox4.Text
        End If

    End Sub
End Class
