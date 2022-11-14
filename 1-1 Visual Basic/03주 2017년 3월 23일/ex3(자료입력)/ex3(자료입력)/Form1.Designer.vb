<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class 자료입력
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
        Me.Label1 = New System.Windows.Forms.Label()
        Me.txtname = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.txtpassward = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.txtaddr = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.txtphone = New System.Windows.Forms.TextBox()
        Me.btnOK = New System.Windows.Forms.Button()
        Me.btnCancel = New System.Windows.Forms.Button()
        Me.btnEnd = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("굴림", 12.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(129, Byte))
        Me.Label1.Location = New System.Drawing.Point(63, 58)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(44, 17)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "이름"
        '
        'txtname
        '
        Me.txtname.Location = New System.Drawing.Point(184, 55)
        Me.txtname.Name = "txtname"
        Me.txtname.Size = New System.Drawing.Size(169, 27)
        Me.txtname.TabIndex = 0
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("굴림", 12.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(129, Byte))
        Me.Label2.Location = New System.Drawing.Point(63, 123)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(80, 17)
        Me.Label2.TabIndex = 0
        Me.Label2.Text = "비밀번호"
        '
        'txtpassward
        '
        Me.txtpassward.Location = New System.Drawing.Point(184, 120)
        Me.txtpassward.Name = "txtpassward"
        Me.txtpassward.PasswordChar = Global.Microsoft.VisualBasic.ChrW(42)
        Me.txtpassward.Size = New System.Drawing.Size(169, 27)
        Me.txtpassward.TabIndex = 1
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("굴림", 12.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(129, Byte))
        Me.Label3.Location = New System.Drawing.Point(63, 188)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(44, 17)
        Me.Label3.TabIndex = 0
        Me.Label3.Text = "주소"
        '
        'txtaddr
        '
        Me.txtaddr.Location = New System.Drawing.Point(184, 185)
        Me.txtaddr.Multiline = True
        Me.txtaddr.Name = "txtaddr"
        Me.txtaddr.Size = New System.Drawing.Size(364, 164)
        Me.txtaddr.TabIndex = 2
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Font = New System.Drawing.Font("굴림", 12.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(129, Byte))
        Me.Label4.Location = New System.Drawing.Point(63, 384)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(80, 17)
        Me.Label4.TabIndex = 0
        Me.Label4.Text = "전화번호"
        '
        'txtphone
        '
        Me.txtphone.Location = New System.Drawing.Point(184, 381)
        Me.txtphone.Name = "txtphone"
        Me.txtphone.Size = New System.Drawing.Size(169, 27)
        Me.txtphone.TabIndex = 3
        '
        'btnOK
        '
        Me.btnOK.Location = New System.Drawing.Point(83, 457)
        Me.btnOK.Name = "btnOK"
        Me.btnOK.Size = New System.Drawing.Size(77, 50)
        Me.btnOK.TabIndex = 4
        Me.btnOK.Text = "확인"
        Me.btnOK.UseVisualStyleBackColor = True
        '
        'btnCancel
        '
        Me.btnCancel.Location = New System.Drawing.Point(207, 457)
        Me.btnCancel.Name = "btnCancel"
        Me.btnCancel.Size = New System.Drawing.Size(77, 50)
        Me.btnCancel.TabIndex = 5
        Me.btnCancel.Text = "취소"
        Me.btnCancel.UseVisualStyleBackColor = True
        '
        'btnEnd
        '
        Me.btnEnd.Location = New System.Drawing.Point(338, 457)
        Me.btnEnd.Name = "btnEnd"
        Me.btnEnd.Size = New System.Drawing.Size(77, 50)
        Me.btnEnd.TabIndex = 6
        Me.btnEnd.Text = "종료"
        Me.btnEnd.UseVisualStyleBackColor = True
        '
        '자료입력
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(9.0!, 17.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(672, 558)
        Me.Controls.Add(Me.btnEnd)
        Me.Controls.Add(Me.btnCancel)
        Me.Controls.Add(Me.btnOK)
        Me.Controls.Add(Me.txtphone)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.txtaddr)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.txtpassward)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.txtname)
        Me.Controls.Add(Me.Label1)
        Me.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.Name = "자료입력"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents txtname As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents txtpassward As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents txtaddr As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents txtphone As System.Windows.Forms.TextBox
    Friend WithEvents btnOK As System.Windows.Forms.Button
    Friend WithEvents btnCancel As System.Windows.Forms.Button
    Friend WithEvents btnEnd As System.Windows.Forms.Button

End Class
