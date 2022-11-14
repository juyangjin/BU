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
        Me.txtvb = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.txtdb = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.txtc = New System.Windows.Forms.TextBox()
        Me.btnsum = New System.Windows.Forms.Button()
        Me.btnavg = New System.Windows.Forms.Button()
        Me.txtsum = New System.Windows.Forms.TextBox()
        Me.txtavg = New System.Windows.Forms.TextBox()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.Label1.Location = New System.Drawing.Point(59, 47)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(25, 16)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "vb"
        '
        'txtvb
        '
        Me.txtvb.Location = New System.Drawing.Point(187, 25)
        Me.txtvb.Multiline = True
        Me.txtvb.Name = "txtvb"
        Me.txtvb.Size = New System.Drawing.Size(123, 40)
        Me.txtvb.TabIndex = 1
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.Label2.Location = New System.Drawing.Point(59, 107)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(26, 16)
        Me.Label2.TabIndex = 0
        Me.Label2.Text = "db"
        '
        'txtdb
        '
        Me.txtdb.Location = New System.Drawing.Point(187, 85)
        Me.txtdb.Multiline = True
        Me.txtdb.Name = "txtdb"
        Me.txtdb.Size = New System.Drawing.Size(123, 40)
        Me.txtdb.TabIndex = 1
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.Label3.Location = New System.Drawing.Point(59, 174)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(17, 16)
        Me.Label3.TabIndex = 0
        Me.Label3.Text = "c"
        '
        'txtc
        '
        Me.txtc.Location = New System.Drawing.Point(187, 152)
        Me.txtc.Multiline = True
        Me.txtc.Name = "txtc"
        Me.txtc.Size = New System.Drawing.Size(123, 40)
        Me.txtc.TabIndex = 1
        '
        'btnsum
        '
        Me.btnsum.Location = New System.Drawing.Point(62, 295)
        Me.btnsum.Name = "btnsum"
        Me.btnsum.Size = New System.Drawing.Size(72, 33)
        Me.btnsum.TabIndex = 2
        Me.btnsum.Text = "합계"
        Me.btnsum.UseVisualStyleBackColor = True
        '
        'btnavg
        '
        Me.btnavg.Location = New System.Drawing.Point(62, 363)
        Me.btnavg.Name = "btnavg"
        Me.btnavg.Size = New System.Drawing.Size(72, 33)
        Me.btnavg.TabIndex = 2
        Me.btnavg.Text = "평균"
        Me.btnavg.UseVisualStyleBackColor = True
        '
        'txtsum
        '
        Me.txtsum.Location = New System.Drawing.Point(190, 284)
        Me.txtsum.Multiline = True
        Me.txtsum.Name = "txtsum"
        Me.txtsum.Size = New System.Drawing.Size(123, 40)
        Me.txtsum.TabIndex = 3
        '
        'txtavg
        '
        Me.txtavg.Location = New System.Drawing.Point(190, 356)
        Me.txtavg.Multiline = True
        Me.txtavg.Name = "txtavg"
        Me.txtavg.Size = New System.Drawing.Size(123, 40)
        Me.txtavg.TabIndex = 3
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 12.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(550, 551)
        Me.Controls.Add(Me.txtavg)
        Me.Controls.Add(Me.txtsum)
        Me.Controls.Add(Me.btnavg)
        Me.Controls.Add(Me.btnsum)
        Me.Controls.Add(Me.txtc)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.txtdb)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.txtvb)
        Me.Controls.Add(Me.Label1)
        Me.Name = "Form1"
        Me.Text = "진주양 합계와 평균"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents txtvb As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents txtdb As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents txtc As System.Windows.Forms.TextBox
    Friend WithEvents btnsum As System.Windows.Forms.Button
    Friend WithEvents btnavg As System.Windows.Forms.Button
    Friend WithEvents txtsum As System.Windows.Forms.TextBox
    Friend WithEvents txtavg As System.Windows.Forms.TextBox

End Class
