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
        Me.txtnum = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.txtname = New System.Windows.Forms.TextBox()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.rb1 = New System.Windows.Forms.RadioButton()
        Me.rb2 = New System.Windows.Forms.RadioButton()
        Me.rb3 = New System.Windows.Forms.RadioButton()
        Me.rb4 = New System.Windows.Forms.RadioButton()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.chk1 = New System.Windows.Forms.CheckBox()
        Me.chk2 = New System.Windows.Forms.CheckBox()
        Me.chk3 = New System.Windows.Forms.CheckBox()
        Me.chk4 = New System.Windows.Forms.CheckBox()
        Me.lblresult = New System.Windows.Forms.Label()
        Me.btnresult = New System.Windows.Forms.Button()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.txtsum = New System.Windows.Forms.TextBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.txtavg = New System.Windows.Forms.TextBox()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.txtgrade = New System.Windows.Forms.TextBox()
        Me.txtvb = New System.Windows.Forms.TextBox()
        Me.txtjava = New System.Windows.Forms.TextBox()
        Me.txtc = New System.Windows.Forms.TextBox()
        Me.txthtml = New System.Windows.Forms.TextBox()
        Me.GroupBox1.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(42, 62)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(40, 16)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "학번"
        '
        'txtnum
        '
        Me.txtnum.Location = New System.Drawing.Point(143, 62)
        Me.txtnum.Name = "txtnum"
        Me.txtnum.Size = New System.Drawing.Size(100, 26)
        Me.txtnum.TabIndex = 1
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(345, 62)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(40, 16)
        Me.Label2.TabIndex = 0
        Me.Label2.Text = "이름"
        '
        'txtname
        '
        Me.txtname.Location = New System.Drawing.Point(447, 59)
        Me.txtname.Name = "txtname"
        Me.txtname.Size = New System.Drawing.Size(100, 26)
        Me.txtname.TabIndex = 2
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.rb4)
        Me.GroupBox1.Controls.Add(Me.rb3)
        Me.GroupBox1.Controls.Add(Me.rb2)
        Me.GroupBox1.Controls.Add(Me.rb1)
        Me.GroupBox1.Location = New System.Drawing.Point(55, 139)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(188, 212)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "학년"
        '
        'rb1
        '
        Me.rb1.AutoSize = True
        Me.rb1.Location = New System.Drawing.Point(16, 28)
        Me.rb1.Name = "rb1"
        Me.rb1.Size = New System.Drawing.Size(66, 20)
        Me.rb1.TabIndex = 0
        Me.rb1.TabStop = True
        Me.rb1.Text = "1학년"
        Me.rb1.UseVisualStyleBackColor = True
        '
        'rb2
        '
        Me.rb2.AutoSize = True
        Me.rb2.Location = New System.Drawing.Point(15, 73)
        Me.rb2.Name = "rb2"
        Me.rb2.Size = New System.Drawing.Size(66, 20)
        Me.rb2.TabIndex = 0
        Me.rb2.TabStop = True
        Me.rb2.Text = "2학년"
        Me.rb2.UseVisualStyleBackColor = True
        '
        'rb3
        '
        Me.rb3.AutoSize = True
        Me.rb3.Location = New System.Drawing.Point(16, 119)
        Me.rb3.Name = "rb3"
        Me.rb3.Size = New System.Drawing.Size(66, 20)
        Me.rb3.TabIndex = 0
        Me.rb3.TabStop = True
        Me.rb3.Text = "3학년"
        Me.rb3.UseVisualStyleBackColor = True
        '
        'rb4
        '
        Me.rb4.AutoSize = True
        Me.rb4.Location = New System.Drawing.Point(15, 166)
        Me.rb4.Name = "rb4"
        Me.rb4.Size = New System.Drawing.Size(67, 20)
        Me.rb4.TabIndex = 0
        Me.rb4.TabStop = True
        Me.rb4.Text = "4학년"
        Me.rb4.UseVisualStyleBackColor = True
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.txthtml)
        Me.GroupBox2.Controls.Add(Me.txtc)
        Me.GroupBox2.Controls.Add(Me.txtjava)
        Me.GroupBox2.Controls.Add(Me.txtvb)
        Me.GroupBox2.Controls.Add(Me.chk4)
        Me.GroupBox2.Controls.Add(Me.chk3)
        Me.GroupBox2.Controls.Add(Me.chk2)
        Me.GroupBox2.Controls.Add(Me.chk1)
        Me.GroupBox2.Location = New System.Drawing.Point(358, 139)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(234, 212)
        Me.GroupBox2.TabIndex = 3
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "수강과목"
        '
        'chk1
        '
        Me.chk1.AutoSize = True
        Me.chk1.Location = New System.Drawing.Point(18, 29)
        Me.chk1.Name = "chk1"
        Me.chk1.Size = New System.Drawing.Size(47, 20)
        Me.chk1.TabIndex = 8
        Me.chk1.Text = "VB"
        Me.chk1.UseVisualStyleBackColor = True
        '
        'chk2
        '
        Me.chk2.AutoSize = True
        Me.chk2.Location = New System.Drawing.Point(18, 74)
        Me.chk2.Name = "chk2"
        Me.chk2.Size = New System.Drawing.Size(63, 20)
        Me.chk2.TabIndex = 9
        Me.chk2.Text = "JAVA"
        Me.chk2.UseVisualStyleBackColor = True
        '
        'chk3
        '
        Me.chk3.AutoSize = True
        Me.chk3.Location = New System.Drawing.Point(18, 121)
        Me.chk3.Name = "chk3"
        Me.chk3.Size = New System.Drawing.Size(38, 20)
        Me.chk3.TabIndex = 10
        Me.chk3.Text = "C"
        Me.chk3.UseVisualStyleBackColor = True
        '
        'chk4
        '
        Me.chk4.AutoSize = True
        Me.chk4.Location = New System.Drawing.Point(18, 167)
        Me.chk4.Name = "chk4"
        Me.chk4.Size = New System.Drawing.Size(68, 20)
        Me.chk4.TabIndex = 11
        Me.chk4.Text = "HTML"
        Me.chk4.UseVisualStyleBackColor = True
        '
        'lblresult
        '
        Me.lblresult.AutoSize = True
        Me.lblresult.Location = New System.Drawing.Point(78, 406)
        Me.lblresult.Name = "lblresult"
        Me.lblresult.Size = New System.Drawing.Size(45, 16)
        Me.lblresult.TabIndex = 0
        Me.lblresult.Text = "결과:"
        '
        'btnresult
        '
        Me.btnresult.Location = New System.Drawing.Point(70, 447)
        Me.btnresult.Name = "btnresult"
        Me.btnresult.Size = New System.Drawing.Size(188, 71)
        Me.btnresult.TabIndex = 19
        Me.btnresult.Text = "처리"
        Me.btnresult.UseVisualStyleBackColor = True
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(355, 406)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(40, 16)
        Me.Label4.TabIndex = 0
        Me.Label4.Text = "합계"
        '
        'txtsum
        '
        Me.txtsum.Location = New System.Drawing.Point(432, 403)
        Me.txtsum.Name = "txtsum"
        Me.txtsum.Size = New System.Drawing.Size(100, 26)
        Me.txtsum.TabIndex = 16
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(355, 450)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(40, 16)
        Me.Label5.TabIndex = 0
        Me.Label5.Text = "평균"
        '
        'txtavg
        '
        Me.txtavg.Location = New System.Drawing.Point(432, 446)
        Me.txtavg.Name = "txtavg"
        Me.txtavg.Size = New System.Drawing.Size(100, 26)
        Me.txtavg.TabIndex = 17
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(355, 494)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(40, 16)
        Me.Label6.TabIndex = 0
        Me.Label6.Text = "등급"
        '
        'txtgrade
        '
        Me.txtgrade.Location = New System.Drawing.Point(432, 491)
        Me.txtgrade.Name = "txtgrade"
        Me.txtgrade.Size = New System.Drawing.Size(100, 26)
        Me.txtgrade.TabIndex = 18
        '
        'txtvb
        '
        Me.txtvb.Location = New System.Drawing.Point(112, 29)
        Me.txtvb.Name = "txtvb"
        Me.txtvb.Size = New System.Drawing.Size(81, 26)
        Me.txtvb.TabIndex = 12
        '
        'txtjava
        '
        Me.txtjava.Location = New System.Drawing.Point(112, 74)
        Me.txtjava.Name = "txtjava"
        Me.txtjava.Size = New System.Drawing.Size(81, 26)
        Me.txtjava.TabIndex = 13
        '
        'txtc
        '
        Me.txtc.Location = New System.Drawing.Point(112, 115)
        Me.txtc.Name = "txtc"
        Me.txtc.Size = New System.Drawing.Size(81, 26)
        Me.txtc.TabIndex = 14
        '
        'txthtml
        '
        Me.txthtml.Location = New System.Drawing.Point(112, 165)
        Me.txthtml.Name = "txthtml"
        Me.txthtml.Size = New System.Drawing.Size(81, 26)
        Me.txthtml.TabIndex = 15
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(9.0!, 16.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(726, 556)
        Me.Controls.Add(Me.txtgrade)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.txtavg)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.txtsum)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.btnresult)
        Me.Controls.Add(Me.lblresult)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.txtname)
        Me.Controls.Add(Me.txtnum)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Font = New System.Drawing.Font("굴림", 12.0!)
        Me.Margin = New System.Windows.Forms.Padding(4, 4, 4, 4)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents txtnum As System.Windows.Forms.TextBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents txtname As System.Windows.Forms.TextBox
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents rb4 As System.Windows.Forms.RadioButton
    Friend WithEvents rb3 As System.Windows.Forms.RadioButton
    Friend WithEvents rb2 As System.Windows.Forms.RadioButton
    Friend WithEvents rb1 As System.Windows.Forms.RadioButton
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents txthtml As System.Windows.Forms.TextBox
    Friend WithEvents txtc As System.Windows.Forms.TextBox
    Friend WithEvents txtjava As System.Windows.Forms.TextBox
    Friend WithEvents txtvb As System.Windows.Forms.TextBox
    Friend WithEvents chk4 As System.Windows.Forms.CheckBox
    Friend WithEvents chk3 As System.Windows.Forms.CheckBox
    Friend WithEvents chk2 As System.Windows.Forms.CheckBox
    Friend WithEvents chk1 As System.Windows.Forms.CheckBox
    Friend WithEvents lblresult As System.Windows.Forms.Label
    Friend WithEvents btnresult As System.Windows.Forms.Button
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents txtsum As System.Windows.Forms.TextBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents txtavg As System.Windows.Forms.TextBox
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents txtgrade As System.Windows.Forms.TextBox

End Class
