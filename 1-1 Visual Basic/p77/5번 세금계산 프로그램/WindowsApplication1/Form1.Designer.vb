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
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.txtnum = New System.Windows.Forms.TextBox()
        Me.SuspendLayout()
        '
        'Button1
        '
        Me.Button1.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.Button1.Location = New System.Drawing.Point(170, 202)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(128, 31)
        Me.Button1.TabIndex = 0
        Me.Button1.Text = "금액 계산"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.Label1.Location = New System.Drawing.Point(113, 142)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(185, 22)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "세금은 5%입니다."
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.Label2.Location = New System.Drawing.Point(35, 57)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(149, 22)
        Me.Label2.TabIndex = 1
        Me.Label2.Text = "제품의 가격은"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.Label3.Location = New System.Drawing.Point(35, 270)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(149, 22)
        Me.Label3.TabIndex = 1
        Me.Label3.Text = "지불할 금액은"
        '
        'txtnum
        '
        Me.txtnum.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.txtnum.Location = New System.Drawing.Point(209, 54)
        Me.txtnum.Name = "txtnum"
        Me.txtnum.Size = New System.Drawing.Size(153, 32)
        Me.txtnum.TabIndex = 2
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 15.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(473, 341)
        Me.Controls.Add(Me.txtnum)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.Button1)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents txtnum As System.Windows.Forms.TextBox

End Class
