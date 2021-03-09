# PowerShell
# ProxyLogonHashes.ps1
# Checks for .aspx Hashes of exploit from CVE-2021-26855, 26858, 26857, and 27065.
#
# Reference
# 1) Hashes from Microsoft (sha256):  https://www.microsoft.com/security/blog/2021/03/02/hafnium-targeting-exchange-servers/
#	b75f163ca9b9240bf4b37ad92bc7556b40a17e27c2b8ed5c8991385fe07d17d0
#	097549cf7d0f76f0d99edf8b2d91c60977fd6a96e4b8c3c94b0b1733dc026d3e
#	2b6f1ebb2208e93ade4a6424555d6a8341fd6d9f60c25e44afe11008f5c1aad1
#	65149e036fff06026d80ac9ad4d156332822dc93142cf1a122b1841ec8de34b5
#	511df0e2df9bfa5521b588cc4bb5f8c5a321801b803394ebc493db1ef3c78fa1
#	4edc7770464a14f54d17f36dc9d0fe854f68b346b27b35a6f5839adf1f13f8ea
#	811157f9c7003ba8d17b45eb3cf09bef2cecd2701cedb675274949296a6a183d
#	1631a90eb5395c4e19c7dbcbf611bbe6444ff312eb7937e286e4637cb9e72944
# 2) Hashes from FireEyd (MD5): https://www.fireeye.com/blog/threat-research/2021/03/detection-response-to-exploitation-of-microsoft-exchange-zero-day-vulnerabilities.html
#	4b3039cf227c611c45d2242d1228a121
#	0fd9bffa49c76ee12e51e3b8ae0609ac
#	79eb217578bed4c250803bd573b10151
# 3) Hashes from Volexity: https://www.volexity.com/blog/2021/03/02/active-exploitation-of-microsoft-exchange-zero-day-vulnerabilities/
#	893cd3583b49cb706b3e55ecb2ed0757b977a21f5c72e041392d1256f31166e2
#	406b680edc9a1bb0e2c7c451c56904857848b5f15570401450b73b232ff38928
#	2fa06333188795110bba14a482020699a96f76fb1ceb80cbfa2df9d3008b5b0a
