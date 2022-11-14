Public Class Form1

    Private Sub btnresult_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnresult.Click
        '학번/이름/학년 출력
        Dim result1, result2 As String
        '합계,평균,학점 변수선언
        Dim sum As Integer
        Dim avg As String
        Dim grade As String
        Dim cnt As Integer

        '각 과목에 대한 변수
        'Dim vb, java, c, html As Integer

        '학번,이름 출력
        result1 = txtnum.Text + txtname.Text
        lblresult.Text = result1

        '학년처리
        If rb1.Checked = True Then
            result2 = rb1.Text
        ElseIf rb2.Checked = True Then
            result2 = rb2.Text
        ElseIf rb3.Checked = True Then
            result2 = rb3.Text
        Else
            result2 = rb4.Text
        End If


        lblresult.Text = result1 + result2

        '각 과목에 대한 점수합계/과목의 수
        If chk1.Checked = True Then
            cnt = cnt + 1
            sum = sum + Val(txtvb.Text)
        End If

        If chk2.Checked = True Then
            cnt = cnt + 1
            sum = sum + Val(txtjava.Text)
        End If

        If chk3.Checked = True Then
            cnt = cnt + 1
            sum = sum + Val(txtc.Text)
        End If

        If chk4.Checked = True Then
            cnt = cnt + 1
            sum = sum + Val(txthtml.Text)
        End If

        avg = sum / cnt

        ''입력
        'vb = txtvb.Text
        'java = txtjava.Text
        'c = txtc.Text
        'html = txthtml.Text
        ''합계와 평균
        'sum = vb + java + c + html
        'avg = sum / 4
        '학점
        If avg >= 90 Then
            grade = "A"
        ElseIf avg >= 80 Then
            grade = "B"
        ElseIf avg >= 70 Then
            grade = "C"
        ElseIf avg >= 60 Then
            grade = "D"
        Else
            grade = "F"
        End If

        '합계,평균,학점 출력
        txtsum.Text = sum
        txtavg.Text = avg
        txtgrade.Text = grade & "학점"


    End Sub
End Class
