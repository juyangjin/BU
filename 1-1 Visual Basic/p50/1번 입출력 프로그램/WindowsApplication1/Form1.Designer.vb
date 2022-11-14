<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form은 Dispose를 재정의하여 구성 요소 목록을 정리합니다.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Windows Form 디자이너에 필요합니다.
    Private components As System.ComponentModel.IContainer

    '참고: 다음 프로시저는 Windows Form 디자이너에 필요합니다.
    '수정하려면 Windows Form 디자이너를 사용하십시오.  
    '코드 편집기를 사용하여 수정하지 마십시오.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.lab = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.txtBox1 = New System.Windows.Forms.TextBox()
        Me.btn1 = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'lab
        '
        Me.lab.AutoEllipsis = True
        Me.lab.AutoSize = True
        Me.lab.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.lab.Location = New System.Drawing.Point(137, 56)
        Me.lab.Name = "lab"
        Me.lab.Size = New System.Drawing.Size(203, 20)
        Me.lab.TabIndex = 0
        Me.lab.Text = "글자를 입력해 보세요"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.Label2.Location = New System.Drawing.Point(92, 207)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(310, 20)
        Me.Label2.TabIndex = 0
        Me.Label2.Text = "버튼이 눌리면 여기에 출력해보자"
        '
        'txtBox1
        '
        Me.txtBox1.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.txtBox1.Location = New System.Drawing.Point(79, 127)
        Me.txtBox1.Name = "txtBox1"
        Me.txtBox1.Size = New System.Drawing.Size(323, 30)
        Me.txtBox1.TabIndex = 1
        '
        'btn1
        '
        Me.btn1.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.btn1.Location = New System.Drawing.Point(188, 292)
        Me.btn1.Name = "btn1"
        Me.btn1.Size = New System.Drawing.Size(75, 36)
        Me.btn1.TabIndex = 2
        Me.btn1.Text = "출력"
        Me.btn1.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 15.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(508, 428)
        Me.Controls.Add(Me.btn1)
        Me.Controls.Add(Me.txtBox1)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.lab)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents lab As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents txtBox1 As System.Windows.Forms.TextBox
    Friend WithEvents btn1 As System.Windows.Forms.Button

End Class
