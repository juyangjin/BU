passwd = input ("암호를 입력하세요:")
passwd_s = "" #암호화한 비밀번호 저장
passwd2 = "" #복호화한 암호, 첫번째 비밀번호랑 같은지 확인
print("입력한 암호는 [%s] 입니다. > 암호화를 진행하겠습니다." % passwd)
c = '' #문자 하나 따오기
ac = 0 #아스키 코드로 변환

for i in range(len(passwd)) :
    c = passwd[i] #개별문자
    ac = ord(c) #개별문자의 아스키코드
    ac += 2 #개별 아스키코드 값 2 증가
    c = chr(ac) #아스키 코드를 문자로 변환
    passwd_s += c #변환된(암호화한) 암호 저장

print("암호화된 비밀번호 %s " % passwd_s)
print("암호화된 비밀번호를 복호화하겠습니다.")

for i in range(len(passwd)) :
    c = passwd_s[i] #개별문자
    ac = ord(c) #개별문자의 아스키코드
    ac -= 2 #개별 아스키코드 값 2 감소
    c = chr(ac) #아스키 코드를 문자로 변환
    passwd2 += c #변환된(복호화한) 암호 저장

if passwd == passwd2 :
    print("복호화한 암호를 공개합니다. : %s" % passwd2)
    print("처음 입력했던 암호와, 복호화한 암호가 일치합니다.")

