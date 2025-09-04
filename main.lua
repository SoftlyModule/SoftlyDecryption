local encryption = require("Cryption")

local secret = encryption.encrypt("Hello World", 3)
print("Encrypted:", secret)

local plain = encryption.decrypt(secret, 3)
print("Decrypted:", plain)