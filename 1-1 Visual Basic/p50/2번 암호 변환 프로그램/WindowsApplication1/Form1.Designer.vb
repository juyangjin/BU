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
        Me.lab1 = New System.Windows.Forms.Label()
        Me.lab2 = New System.Windows.Forms.Label()
        Me.txt1 = New System.Windows.Forms.TextBox()
        Me.txtpassword = New System.Windows.Forms.TextBox()
        Me.btn1 = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'lab1
        '
        Me.lab1.AutoSize = True
        Me.lab1.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.lab1.Location = New System.Drawing.Point(43, 46)
        Me.lab1.Name = "lab1"
        Me.lab1.Size = New System.Drawing.Size(193, 22)
        Me.lab1.TabIndex = 0
        Me.lab1.Text = "암호를 입력하시오"
        '
        'lab2
        '
        Me.lab2.AutoSize = True
        Me.lab2.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.lab2.Location = New System.Drawing.Point(43, 151)
        Me.lab2.Name = "lab2"
        Me.lab2.Size = New System.Drawing.Size(149, 22)
        Me.lab2.TabIndex = 0
        Me.lab2.Text = "입력된 암호는"
        '
        'txt1
        '
        Me.txt1.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.txt1.Location = New System.Drawing.Point(108, 87)
        Me.txt1.Name = "txt1"
        Me.txt1.PasswordChar = Global.Microsoft.VisualBasic.ChrW(42)
        Me.txt1.Size = New System.Drawing.Size(147, 32)
        Me.txt1.TabIndex = 0
        '
        'txtpassword
        '
        Me.txtpassword.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.txtpassword.Location = New System.Drawing.Point(203, 141)
        Me.txtpassword.Name = "txtpassword"
        Me.txtpassword.Size = New System.Drawing.Size(147, 32)
        Me.txtpassword.TabIndex = 1
        '
        'btn1
        '
        Me.btn1.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.btn1.Location = New System.Drawing.Point(133, 211)
        Me.btn1.Name = "btn1"
        Me.btn1.Size = New System.Drawing.Size(122, 58)
        Me.btn1.TabIndex = 2
        Me.btn1.Text = "출력"
        Me.btn1.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 15.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(426, 358)
        Me.Controls.Add(Me.btn1)
        Me.Controls.Add(Me.txtpassword)
        Me.Controls.Add(Me.txt1)
        Me.Controls.Add(Me.lab2)
        Me.Controls.Add(Me.lab1)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents lab1 As System.Windows.Forms.Label
    Friend WithEvents lab2 As System.Windows.Forms.Label
    Friend WithEvents txt1 As System.Windows.Forms.TextBox
    Friend WithEvents txtpassword As System.Windows.Forms.TextBox
    Friend WithEvents btn1 As System.Windows.Forms.Button

End Class
