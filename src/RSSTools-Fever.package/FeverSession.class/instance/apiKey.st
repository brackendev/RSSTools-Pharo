public
apiKey
^ (MD5 hashMessage: self email , ':' , self password) hex.
