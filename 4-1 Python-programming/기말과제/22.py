from Crypto.Hash import SHA256 as SHA
SIZE = 1024 * 256

def getFileHash(filename):
    hash = SHA.new()
    h = open(filename, 'rb')
    content = h.read(SIZE)
    while content:
        hash.update(content)
        hashval = hash.digest()
        content = h.read(SIZE)
    h.close()
    return hashval

def hashCheck(file1, file2):
    hashval1 = getFileHash(file1)
    hashval2 = getFileHash(file2)
    if hashval1 == hashval2:
        print('Two file are same')
    else:
        print('Two file are different')

def main():
    file1 = 'plain.txt'
    file2 = 'plain.txt.enc.dec'
    hashCheck(file1, file2)
