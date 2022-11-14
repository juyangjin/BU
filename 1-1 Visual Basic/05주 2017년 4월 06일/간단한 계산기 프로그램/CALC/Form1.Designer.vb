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
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.txtfirst = New System.Windows.Forms.TextBox()
        Me.txtsecond = New System.Windows.Forms.TextBox()
        Me.btnsum = New System.Windows.Forms.Button()
        Me.btnsub = New System.Windows.Forms.Button()
        Me.btnmulti = New System.Windows.Forms.Button()
        Me.btndiv = New System.Windows.Forms.Button()
        Me.btnmod = New System.Windows.Forms.Button()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.txtresult = New System.Windows.Forms.TextBox()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.Label1.Location = New System.Drawing.Point(53, 52)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(77, 16)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "첫번째 수"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.Label2.Location = New System.Drawing.Point(53, 141)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(77, 16)
        Me.Label2.TabIndex = 0
        Me.Label2.Text = "두번째 수"
        '
        'txtfirst
        '
        Me.txtfirst.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.txtfirst.Location = New System.Drawing.Point(168, 52)
        Me.txtfirst.Name = "txtfirst"
        Me.txtfirst.Size = New System.Drawing.Size(123, 26)
        Me.txtfirst.TabIndex = 1
        '
        'txtsecond
        '
        Me.txtsecond.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.txtsecond.Location = New System.Drawing.Point(168, 138)
        Me.txtsecond.Name = "txtsecond"
        Me.txtsecond.Size = New System.Drawing.Size(123, 26)
        Me.txtsecond.TabIndex = 1
        '
        'btnsum
        '
        Me.btnsum.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.btnsum.Location = New System.Drawing.Point(43, 230)
        Me.btnsum.Name = "btnsum"
        Me.btnsum.Size = New System.Drawing.Size(52, 37)
        Me.btnsum.TabIndex = 2
        Me.btnsum.Text = "+"
        Me.btnsum.UseVisualStyleBackColor = True
        '
        'btnsub
        '
        Me.btnsub.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.btnsub.Location = New System.Drawing.Point(101, 230)
        Me.btnsub.Name = "btnsub"
        Me.btnsub.Size = New System.Drawing.Size(52, 37)
        Me.btnsub.TabIndex = 2
        Me.btnsub.Text = "-"
        Me.btnsub.UseVisualStyleBackColor = True
        '
        'btnmulti
        '
        Me.btnmulti.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.btnmulti.Location = New System.Drawing.Point(197, 230)
        Me.btnmulti.Name = "btnmulti"
        Me.btnmulti.Size = New System.Drawing.Size(52, 37)
        Me.btnmulti.TabIndex = 2
        Me.btnmulti.Text = "*"
        Me.btnmulti.UseVisualStyleBackColor = True
        '
        'btndiv
        '
        Me.btndiv.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.btndiv.Location = New System.Drawing.Point(267, 230)
        Me.btndiv.Name = "btndiv"
        Me.btndiv.Size = New System.Drawing.Size(52, 37)
        Me.btndiv.TabIndex = 2
        Me.btndiv.Text = "/"
        Me.btndiv.UseVisualStyleBackColor = True
        '
        'btnmod
        '
        Me.btnmod.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.btnmod.Location = New System.Drawing.Point(392, 230)
        Me.btnmod.Name = "btnmod"
        Me.btnmod.Size = New System.Drawing.Size(52, 37)
        Me.btnmod.TabIndex = 2
        Me.btnmod.Text = "MOD"
        Me.btnmod.UseVisualStyleBackColor = True
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.Label3.Location = New System.Drawing.Point(141, 336)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(61, 16)
        Me.Label3.TabIndex = 3
        Me.Label3.Text = "결과 값"
        '
        'txtresult
        '
        Me.txtresult.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.txtresult.Location = New System.Drawing.Point(256, 336)
        Me.txtresult.Name = "txtresult"
        Me.txtresult.Size = New System.Drawing.Size(100, 26)
        Me.txtresult.TabIndex = 4
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 12.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(561, 482)
        Me.Controls.Add(Me.txtresult)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.btnmod)
        Me.Controls.Add(Me.btndiv)
        Me.Controls.Add(Me.btnmulti)
        Me.Controls.Add(Me.btnsub)
        Me.Controls.Add(Me.btnsum)
        Me.Controls.Add(Me.txtsecond)
        Me.Controls.Add(Me.txtfirst)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Name = "Form1"
        Me.Text = "진주양의 초간단 계산기"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents txtfirst As System.Windows.Forms.TextBox
    Friend WithEvents txtsecond As System.Windows.Forms.TextBox
    Friend WithEvents btnsum As System.Windows.Forms.Button
    Friend WithEvents btnsub As System.Windows.Forms.Button
    Friend WithEvents btnmulti As System.Windows.Forms.Button
    Friend WithEvents btndiv As System.Windows.Forms.Button
    Friend WithEvents btnmod As System.Windows.Forms.Button
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents txtresult As System.Windows.Forms.TextBox

End Class
