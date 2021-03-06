declaration template common/nagios/send_nsca/schema;

# Note: The encryption method you specify here must match the
#       decryption method the nsca daemon uses (as specified in
#       the nsca.cfg file)!!
# Values: 0 = None        (Do NOT use this option)
#         1 = Simple XOR  (No security, just obfuscation, but very fast)
#         2 = DES 3 = 3DES (Triple DES) 4 = CAST-128 5 = CAST-256 6 = xTEA
#         7 = 3WAY 8 = BLOWFISH 9 = TWOFISH 10 = LOKI97 11 = RC2 12 = ARCFOUR
#         14 = RIJNDAEL-128 15 = RIJNDAEL-192 16 = RIJNDAEL-256 19 = WAKE
#         20 = SERPENT 22 = ENIGMA (Unix crypt) 23 = GOST 24 = SAFER64
#         25 = SAFER128 26 = SAFER+

type nagios_send_nsca = {
    "password" : string
    "encryption_method" : long (1..26) = 1
};

