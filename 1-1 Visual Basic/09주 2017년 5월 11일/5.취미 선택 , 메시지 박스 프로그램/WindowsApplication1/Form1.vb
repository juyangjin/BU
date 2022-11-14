Public Class Form1

    Dim CheckBox As String
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cnt As Integer

        Label1.Text = "선택된 스포츠는  "

        If CheckBox1.Checked = True Then
            Label1.Text = Label1.Text & CheckBox1.Text
            cnt = cnt + 1
        End If
        If CheckBox2.Checked = True Then
            Label1.Text = Label1.Text & CheckBox2.Text
            cnt = cnt + 1
        End If
        If CheckBox3.Checked = True Then
            Label1.Text = Label1.Text & CheckBox3.Text
            cnt = cnt + 1
        End If
        If CheckBox4.Checked = True Then
            Label1.Text = Label1.Text & CheckBox4.Text
            cnt = cnt + 1
        End If
        If CheckBox5.Checked = True Then
            Label1.Text = Label1.Text & CheckBox5.Text
            cnt = cnt + 1
        End If
        If CheckBox6.Checked = True Then
            Label1.Text = Label1.Text & CheckBox6.Text
            cnt = cnt + 1
        End If

        MsgBox(cnt & "개의 취미가 선택되었습니다.", MsgBoxStyle.OkOnly, "확인")
    End Sub
End Class
