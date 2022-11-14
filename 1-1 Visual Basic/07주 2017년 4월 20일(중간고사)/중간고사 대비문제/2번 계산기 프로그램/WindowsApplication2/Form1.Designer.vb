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
        Me.txtfirst = New System.Windows.Forms.TextBox()
        Me.txtsecond = New System.Windows.Forms.TextBox()
        Me.txtresult = New System.Windows.Forms.TextBox()
        Me.btnsum = New System.Windows.Forms.Button()
        Me.btnsub = New System.Windows.Forms.Button()
        Me.btnmulti = New System.Windows.Forms.Button()
        Me.btndiv = New System.Windows.Forms.Button()
        Me.btnmod = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'txtfirst
        '
        Me.txtfirst.Location = New System.Drawing.Point(148, 60)
        Me.txtfirst.Name = "txtfirst"
        Me.txtfirst.Size = New System.Drawing.Size(114, 25)
        Me.txtfirst.TabIndex = 0
        '
        'txtsecond
        '
        Me.txtsecond.Location = New System.Drawing.Point(333, 60)
        Me.txtsecond.Name = "txtsecond"
        Me.txtsecond.Size = New System.Drawing.Size(114, 25)
        Me.txtsecond.TabIndex = 0
        '
        'txtresult
        '
        Me.txtresult.Location = New System.Drawing.Point(239, 256)
        Me.txtresult.Name = "txtresult"
        Me.txtresult.Size = New System.Drawing.Size(114, 25)
        Me.txtresult.TabIndex = 0
        '
        'btnsum
        '
        Me.btnsum.Location = New System.Drawing.Point(46, 147)
        Me.btnsum.Name = "btnsum"
        Me.btnsum.Size = New System.Drawing.Size(89, 51)
        Me.btnsum.TabIndex = 1
        Me.btnsum.Text = "+"
        Me.btnsum.UseVisualStyleBackColor = True
        '
        'btnsub
        '
        Me.btnsub.Location = New System.Drawing.Point(157, 147)
        Me.btnsub.Name = "btnsub"
        Me.btnsub.Size = New System.Drawing.Size(89, 51)
        Me.btnsub.TabIndex = 1
        Me.btnsub.Text = "-"
        Me.btnsub.UseVisualStyleBackColor = True
        '
        'btnmulti
        '
        Me.btnmulti.Location = New System.Drawing.Point(264, 147)
        Me.btnmulti.Name = "btnmulti"
        Me.btnmulti.Size = New System.Drawing.Size(89, 51)
        Me.btnmulti.TabIndex = 1
        Me.btnmulti.Text = "*"
        Me.btnmulti.UseVisualStyleBackColor = True
        '
        'btndiv
        '
        Me.btndiv.Location = New System.Drawing.Point(376, 147)
        Me.btndiv.Name = "btndiv"
        Me.btndiv.Size = New System.Drawing.Size(89, 51)
        Me.btndiv.TabIndex = 1
        Me.btndiv.Text = "/"
        Me.btndiv.UseVisualStyleBackColor = True
        '
        'btnmod
        '
        Me.btnmod.Location = New System.Drawing.Point(482, 147)
        Me.btnmod.Name = "btnmod"
        Me.btnmod.Size = New System.Drawing.Size(96, 51)
        Me.btnmod.TabIndex = 2
        Me.btnmod.Text = "MOD"
        Me.btnmod.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(181, 31)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(57, 15)
        Me.Label1.TabIndex = 3
        Me.Label1.Text = "첫째 수"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(374, 32)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(57, 15)
        Me.Label2.TabIndex = 4
        Me.Label2.Text = "둘째 수"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(261, 223)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(72, 15)
        Me.Label3.TabIndex = 5
        Me.Label3.Text = "계산 결과"
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 15.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(601, 305)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.btnmod)
        Me.Controls.Add(Me.btndiv)
        Me.Controls.Add(Me.btnmulti)
        Me.Controls.Add(Me.btnsub)
        Me.Controls.Add(Me.btnsum)
        Me.Controls.Add(Me.txtresult)
        Me.Controls.Add(Me.txtsecond)
        Me.Controls.Add(Me.txtfirst)
        Me.Name = "Form1"
        Me.Text = "계산기 프로그램"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents txtfirst As System.Windows.Forms.TextBox
    Friend WithEvents txtsecond As System.Windows.Forms.TextBox
    Friend WithEvents txtresult As System.Windows.Forms.TextBox
    Friend WithEvents btnsum As System.Windows.Forms.Button
    Friend WithEvents btnsub As System.Windows.Forms.Button
    Friend WithEvents btnmulti As System.Windows.Forms.Button
    Friend WithEvents btndiv As System.Windows.Forms.Button
    Friend WithEvents btnmod As System.Windows.Forms.Button
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label

End Class
