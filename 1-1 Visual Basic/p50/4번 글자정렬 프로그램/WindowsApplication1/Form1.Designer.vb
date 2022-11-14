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
        Me.TextBox1 = New System.Windows.Forms.TextBox()
        Me.btnleft = New System.Windows.Forms.Button()
        Me.btncenter = New System.Windows.Forms.Button()
        Me.btnright = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'TextBox1
        '
        Me.TextBox1.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.TextBox1.Location = New System.Drawing.Point(117, 83)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(371, 30)
        Me.TextBox1.TabIndex = 0
        '
        'btnleft
        '
        Me.btnleft.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.btnleft.Location = New System.Drawing.Point(67, 171)
        Me.btnleft.Name = "btnleft"
        Me.btnleft.Size = New System.Drawing.Size(129, 52)
        Me.btnleft.TabIndex = 1
        Me.btnleft.Text = "왼쪽"
        Me.btnleft.UseVisualStyleBackColor = True
        '
        'btncenter
        '
        Me.btncenter.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.btncenter.Location = New System.Drawing.Point(234, 171)
        Me.btncenter.Name = "btncenter"
        Me.btncenter.Size = New System.Drawing.Size(129, 52)
        Me.btncenter.TabIndex = 1
        Me.btncenter.Text = "가운데"
        Me.btncenter.UseVisualStyleBackColor = True
        '
        'btnright
        '
        Me.btnright.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.btnright.Location = New System.Drawing.Point(402, 171)
        Me.btnright.Name = "btnright"
        Me.btnright.Size = New System.Drawing.Size(129, 52)
        Me.btnright.TabIndex = 1
        Me.btnright.Text = "오른쪽"
        Me.btnright.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 15.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(631, 371)
        Me.Controls.Add(Me.btnright)
        Me.Controls.Add(Me.btncenter)
        Me.Controls.Add(Me.btnleft)
        Me.Controls.Add(Me.TextBox1)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents btnleft As System.Windows.Forms.Button
    Friend WithEvents btncenter As System.Windows.Forms.Button
    Friend WithEvents btnright As System.Windows.Forms.Button

End Class
