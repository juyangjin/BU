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
        Me.vb = New System.Windows.Forms.Label()
        Me.txtvb = New System.Windows.Forms.TextBox()
        Me.db = New System.Windows.Forms.Label()
        Me.txtdb = New System.Windows.Forms.TextBox()
        Me.c = New System.Windows.Forms.Label()
        Me.txtc = New System.Windows.Forms.TextBox()
        Me.btnsum = New System.Windows.Forms.Button()
        Me.btnavg = New System.Windows.Forms.Button()
        Me.txtsum = New System.Windows.Forms.TextBox()
        Me.txtavg = New System.Windows.Forms.TextBox()
        Me.SuspendLayout()
        '
        'vb
        '
        Me.vb.AutoSize = True
        Me.vb.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.vb.Location = New System.Drawing.Point(74, 67)
        Me.vb.Name = "vb"
        Me.vb.Size = New System.Drawing.Size(33, 22)
        Me.vb.TabIndex = 0
        Me.vb.Text = "vb"
        '
        'txtvb
        '
        Me.txtvb.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.txtvb.Location = New System.Drawing.Point(242, 69)
        Me.txtvb.Name = "txtvb"
        Me.txtvb.Size = New System.Drawing.Size(100, 32)
        Me.txtvb.TabIndex = 1
        '
        'db
        '
        Me.db.AutoSize = True
        Me.db.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.db.Location = New System.Drawing.Point(74, 174)
        Me.db.Name = "db"
        Me.db.Size = New System.Drawing.Size(32, 22)
        Me.db.TabIndex = 0
        Me.db.Text = "db"
        '
        'txtdb
        '
        Me.txtdb.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.txtdb.Location = New System.Drawing.Point(242, 174)
        Me.txtdb.Name = "txtdb"
        Me.txtdb.Size = New System.Drawing.Size(100, 32)
        Me.txtdb.TabIndex = 1
        '
        'c
        '
        Me.c.AutoSize = True
        Me.c.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.c.Location = New System.Drawing.Point(74, 278)
        Me.c.Name = "c"
        Me.c.Size = New System.Drawing.Size(21, 22)
        Me.c.TabIndex = 0
        Me.c.Text = "c"
        '
        'txtc
        '
        Me.txtc.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.txtc.Location = New System.Drawing.Point(242, 280)
        Me.txtc.Name = "txtc"
        Me.txtc.Size = New System.Drawing.Size(100, 32)
        Me.txtc.TabIndex = 1
        '
        'btnsum
        '
        Me.btnsum.Location = New System.Drawing.Point(78, 363)
        Me.btnsum.Name = "btnsum"
        Me.btnsum.Size = New System.Drawing.Size(104, 35)
        Me.btnsum.TabIndex = 2
        Me.btnsum.Text = "합계"
        Me.btnsum.UseVisualStyleBackColor = True
        '
        'btnavg
        '
        Me.btnavg.Location = New System.Drawing.Point(78, 448)
        Me.btnavg.Name = "btnavg"
        Me.btnavg.Size = New System.Drawing.Size(99, 40)
        Me.btnavg.TabIndex = 3
        Me.btnavg.Text = "평균"
        Me.btnavg.UseVisualStyleBackColor = True
        '
        'txtsum
        '
        Me.txtsum.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.txtsum.Location = New System.Drawing.Point(242, 363)
        Me.txtsum.Name = "txtsum"
        Me.txtsum.Size = New System.Drawing.Size(100, 32)
        Me.txtsum.TabIndex = 1
        '
        'txtavg
        '
        Me.txtavg.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.txtavg.Location = New System.Drawing.Point(242, 456)
        Me.txtavg.Name = "txtavg"
        Me.txtavg.Size = New System.Drawing.Size(100, 32)
        Me.txtavg.TabIndex = 1
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 15.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(532, 538)
        Me.Controls.Add(Me.btnavg)
        Me.Controls.Add(Me.btnsum)
        Me.Controls.Add(Me.txtavg)
        Me.Controls.Add(Me.txtsum)
        Me.Controls.Add(Me.txtc)
        Me.Controls.Add(Me.txtdb)
        Me.Controls.Add(Me.txtvb)
        Me.Controls.Add(Me.c)
        Me.Controls.Add(Me.db)
        Me.Controls.Add(Me.vb)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents vb As System.Windows.Forms.Label
    Friend WithEvents txtvb As System.Windows.Forms.TextBox
    Friend WithEvents db As System.Windows.Forms.Label
    Friend WithEvents txtdb As System.Windows.Forms.TextBox
    Friend WithEvents c As System.Windows.Forms.Label
    Friend WithEvents txtc As System.Windows.Forms.TextBox
    Friend WithEvents btnsum As System.Windows.Forms.Button
    Friend WithEvents btnavg As System.Windows.Forms.Button
    Friend WithEvents txtsum As System.Windows.Forms.TextBox
    Friend WithEvents txtavg As System.Windows.Forms.TextBox

End Class
