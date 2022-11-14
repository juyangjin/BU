Public Class Form1

    Private Sub RadioButton1_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RadioButton1.CheckedChanged, RadioButton3.CheckedChanged, RadioButton2.CheckedChanged

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim result As String
        If RadioButton1.Checked = True Then
            result = RadioButton1.Text
        ElseIf RadioButton2.Checked = True Then
            result = RadioButton2.Text
        Else
            result = RadioButton3.Text
        End If
        TextBox1.Text = "당신의 이상형은" & result & "입니다."
    End Sub
End Class
