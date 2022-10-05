from hashlib import sha256 as SHA
import codecs

SIZE = 1024*256


def getFileHash(filename):
    sha = SHA()
    h = open(filename,'rb')
    content = h.read(SIZE)
    while content:
        sha.update(content)
        content = h.read(SIZE)
    h.close()


    hashval = sha.digest()
    return hashval



def hashCheck(file1,file2):
    hashval1 = getFileHash(file1)
    hashval2 = getFileHash(file2)

    if hashval1 == hashval2:
        print('파일 A의 해시값:\n%s' %codecs.encode(hashval1,'hex_codec'))
        print('파일 B의 해시값:\n%s\n' %codecs.encode(hashval2,'hex_codec'))
        print('두 파일이 같습니다.')
    else:
        print('파일 A의 해시값:\n%s' %codecs.encode(hashval1,'hex_codec'))
        print('파일 B의 해시값:\n%s\n' %codecs.encode(hashval2,'hex_codec'))
        print('두 파일이 다릅니다.')


def main():
    file1 = 'A.txt'
    file2 = 'C.txt.'
    hashCheck(file1,file2)

main()
