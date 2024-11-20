from Crypto.Cipher import DES3
from Crypto.Hash import SHA256 as SHA
class myDES():
    def __init_(self,keytext,ivtext):
        hash = SHA.new()
        hash.update(keytext.encode('utf-8'))
        key = hash.digest()
        self.key = key[:24]
        hash.update(ivtext.encode('utf-8'))
        iv = hash.digest()
        self.iv=iv[:8]

    def enc(self,plaintext):
        des3 = DES3.new(self.key,DES3.MODE_CBC,self
