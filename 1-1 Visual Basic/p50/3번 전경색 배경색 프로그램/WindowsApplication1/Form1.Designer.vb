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
        Me.btnfored = New System.Windows.Forms.Button()
        Me.btnfogreen = New System.Windows.Forms.Button()
        Me.btnforblue = New System.Windows.Forms.Button()
        Me.btnbacred = New System.Windows.Forms.Button()
        Me.btnbacgreen = New System.Windows.Forms.Button()
        Me.btnbacblue = New System.Windows.Forms.Button()
        Me.labfore = New System.Windows.Forms.Label()
        Me.labback = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'TextBox1
        '
        Me.TextBox1.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.TextBox1.Location = New System.Drawing.Point(108, 132)
        Me.TextBox1.Name = "TextBox1"
        Me.TextBox1.Size = New System.Drawing.Size(384, 30)
        Me.TextBox1.TabIndex = 0
        '
        'btnfored
        '
        Me.btnfored.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.btnfored.Location = New System.Drawing.Point(182, 62)
        Me.btnfored.Name = "btnfored"
        Me.btnfored.Size = New System.Drawing.Size(98, 37)
        Me.btnfored.TabIndex = 1
        Me.btnfored.Text = "red"
        Me.btnfored.UseVisualStyleBackColor = True
        '
        'btnfogreen
        '
        Me.btnfogreen.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.btnfogreen.Location = New System.Drawing.Point(302, 62)
        Me.btnfogreen.Name = "btnfogreen"
        Me.btnfogreen.Size = New System.Drawing.Size(98, 37)
        Me.btnfogreen.TabIndex = 1
        Me.btnfogreen.Text = "green"
        Me.btnfogreen.UseVisualStyleBackColor = True
        '
        'btnforblue
        '
        Me.btnforblue.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.btnforblue.Location = New System.Drawing.Point(413, 62)
        Me.btnforblue.Name = "btnforblue"
        Me.btnforblue.Size = New System.Drawing.Size(98, 37)
        Me.btnforblue.TabIndex = 1
        Me.btnforblue.Text = "blue"
        Me.btnforblue.UseVisualStyleBackColor = True
        '
        'btnbacred
        '
        Me.btnbacred.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.btnbacred.Location = New System.Drawing.Point(182, 199)
        Me.btnbacred.Name = "btnbacred"
        Me.btnbacred.Size = New System.Drawing.Size(98, 37)
        Me.btnbacred.TabIndex = 1
        Me.btnbacred.Text = "red"
        Me.btnbacred.UseVisualStyleBackColor = True
        '
        'btnbacgreen
        '
        Me.btnbacgreen.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.btnbacgreen.Location = New System.Drawing.Point(302, 199)
        Me.btnbacgreen.Name = "btnbacgreen"
        Me.btnbacgreen.Size = New System.Drawing.Size(98, 37)
        Me.btnbacgreen.TabIndex = 1
        Me.btnbacgreen.Text = "green"
        Me.btnbacgreen.UseVisualStyleBackColor = True
        '
        'btnbacblue
        '
        Me.btnbacblue.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.btnbacblue.Location = New System.Drawing.Point(413, 199)
        Me.btnbacblue.Name = "btnbacblue"
        Me.btnbacblue.Size = New System.Drawing.Size(98, 37)
        Me.btnbacblue.TabIndex = 1
        Me.btnbacblue.Text = "blue"
        Me.btnbacblue.UseVisualStyleBackColor = True
        '
        'labfore
        '
        Me.labfore.AutoSize = True
        Me.labfore.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.labfore.Location = New System.Drawing.Point(12, 70)
        Me.labfore.Name = "labfore"
        Me.labfore.Size = New System.Drawing.Size(155, 20)
        Me.labfore.TabIndex = 2
        Me.labfore.Text = "전경색(forecolor)"
        '
        'labback
        '
        Me.labback.AutoSize = True
        Me.labback.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.labback.Location = New System.Drawing.Point(12, 207)
        Me.labback.Name = "labback"
        Me.labback.Size = New System.Drawing.Size(162, 20)
        Me.labback.TabIndex = 2
        Me.labback.Text = "배경색(backcolor)"
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 15.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(587, 323)
        Me.Controls.Add(Me.labback)
        Me.Controls.Add(Me.labfore)
        Me.Controls.Add(Me.btnbacblue)
        Me.Controls.Add(Me.btnforblue)
        Me.Controls.Add(Me.btnbacgreen)
        Me.Controls.Add(Me.btnfogreen)
        Me.Controls.Add(Me.btnbacred)
        Me.Controls.Add(Me.btnfored)
        Me.Controls.Add(Me.TextBox1)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents TextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents btnfored As System.Windows.Forms.Button
    Friend WithEvents btnfogreen As System.Windows.Forms.Button
    Friend WithEvents btnforblue As System.Windows.Forms.Button
    Friend WithEvents btnbacred As System.Windows.Forms.Button
    Friend WithEvents btnbacgreen As System.Windows.Forms.Button
    Friend WithEvents btnbacblue As System.Windows.Forms.Button
    Friend WithEvents labfore As System.Windows.Forms.Label
    Friend WithEvents labback As System.Windows.Forms.Label

End Class
