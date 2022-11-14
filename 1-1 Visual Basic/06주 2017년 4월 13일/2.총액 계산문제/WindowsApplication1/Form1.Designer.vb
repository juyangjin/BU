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
        Me.ten = New System.Windows.Forms.Label()
        Me.fifty = New System.Windows.Forms.Label()
        Me.hundred = New System.Windows.Forms.Label()
        Me.fivehundred = New System.Windows.Forms.Label()
        Me.txtten = New System.Windows.Forms.TextBox()
        Me.txtfifty = New System.Windows.Forms.TextBox()
        Me.txthundred = New System.Windows.Forms.TextBox()
        Me.txtfivehundred = New System.Windows.Forms.TextBox()
        Me.txtsum = New System.Windows.Forms.TextBox()
        Me.sum = New System.Windows.Forms.Button()
        Me.clear = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'ten
        '
        Me.ten.AutoSize = True
        Me.ten.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.ten.Location = New System.Drawing.Point(70, 61)
        Me.ten.Name = "ten"
        Me.ten.Size = New System.Drawing.Size(46, 18)
        Me.ten.TabIndex = 0
        Me.ten.Text = "10원"
        '
        'fifty
        '
        Me.fifty.AutoSize = True
        Me.fifty.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.fifty.Location = New System.Drawing.Point(70, 116)
        Me.fifty.Name = "fifty"
        Me.fifty.Size = New System.Drawing.Size(46, 18)
        Me.fifty.TabIndex = 0
        Me.fifty.Text = "50원"
        '
        'hundred
        '
        Me.hundred.AutoSize = True
        Me.hundred.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.hundred.Location = New System.Drawing.Point(70, 172)
        Me.hundred.Name = "hundred"
        Me.hundred.Size = New System.Drawing.Size(56, 18)
        Me.hundred.TabIndex = 0
        Me.hundred.Text = "100원"
        '
        'fivehundred
        '
        Me.fivehundred.AutoSize = True
        Me.fivehundred.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.fivehundred.Location = New System.Drawing.Point(70, 238)
        Me.fivehundred.Name = "fivehundred"
        Me.fivehundred.Size = New System.Drawing.Size(56, 18)
        Me.fivehundred.TabIndex = 0
        Me.fivehundred.Text = "500원"
        '
        'txtten
        '
        Me.txtten.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.txtten.Location = New System.Drawing.Point(219, 58)
        Me.txtten.Name = "txtten"
        Me.txtten.Size = New System.Drawing.Size(100, 27)
        Me.txtten.TabIndex = 1
        '
        'txtfifty
        '
        Me.txtfifty.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.txtfifty.Location = New System.Drawing.Point(219, 113)
        Me.txtfifty.Name = "txtfifty"
        Me.txtfifty.Size = New System.Drawing.Size(100, 27)
        Me.txtfifty.TabIndex = 1
        '
        'txthundred
        '
        Me.txthundred.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.txthundred.Location = New System.Drawing.Point(219, 172)
        Me.txthundred.Name = "txthundred"
        Me.txthundred.Size = New System.Drawing.Size(100, 27)
        Me.txthundred.TabIndex = 1
        '
        'txtfivehundred
        '
        Me.txtfivehundred.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.txtfivehundred.Location = New System.Drawing.Point(219, 235)
        Me.txtfivehundred.Name = "txtfivehundred"
        Me.txtfivehundred.Size = New System.Drawing.Size(100, 27)
        Me.txtfivehundred.TabIndex = 1
        '
        'txtsum
        '
        Me.txtsum.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.txtsum.Location = New System.Drawing.Point(144, 361)
        Me.txtsum.Name = "txtsum"
        Me.txtsum.Size = New System.Drawing.Size(100, 27)
        Me.txtsum.TabIndex = 2
        '
        'sum
        '
        Me.sum.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.sum.Location = New System.Drawing.Point(72, 303)
        Me.sum.Name = "sum"
        Me.sum.Size = New System.Drawing.Size(87, 34)
        Me.sum.TabIndex = 3
        Me.sum.Text = "총액"
        Me.sum.UseVisualStyleBackColor = True
        '
        'clear
        '
        Me.clear.Font = New System.Drawing.Font("굴림", 13.0!)
        Me.clear.Location = New System.Drawing.Point(244, 303)
        Me.clear.Name = "clear"
        Me.clear.Size = New System.Drawing.Size(75, 34)
        Me.clear.TabIndex = 3
        Me.clear.Text = "지우기"
        Me.clear.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 12.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(370, 457)
        Me.Controls.Add(Me.clear)
        Me.Controls.Add(Me.sum)
        Me.Controls.Add(Me.txtsum)
        Me.Controls.Add(Me.txtfivehundred)
        Me.Controls.Add(Me.txthundred)
        Me.Controls.Add(Me.txtfifty)
        Me.Controls.Add(Me.txtten)
        Me.Controls.Add(Me.fivehundred)
        Me.Controls.Add(Me.hundred)
        Me.Controls.Add(Me.fifty)
        Me.Controls.Add(Me.ten)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents ten As System.Windows.Forms.Label
    Friend WithEvents fifty As System.Windows.Forms.Label
    Friend WithEvents hundred As System.Windows.Forms.Label
    Friend WithEvents fivehundred As System.Windows.Forms.Label
    Friend WithEvents txtten As System.Windows.Forms.TextBox
    Friend WithEvents txtfifty As System.Windows.Forms.TextBox
    Friend WithEvents txthundred As System.Windows.Forms.TextBox
    Friend WithEvents txtfivehundred As System.Windows.Forms.TextBox
    Friend WithEvents txtsum As System.Windows.Forms.TextBox
    Friend WithEvents sum As System.Windows.Forms.Button
    Friend WithEvents clear As System.Windows.Forms.Button

End Class
