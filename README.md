http://andyinmatrix.blogspot.com/2021/03/a-quick-check-of-0-day-exploitation-on.html
# ProxyLogonHashes.ps1
Checks for suspicious.aspx Hashes of exploit from CVE-2021-26855, 26858, 26857, and 27065.

1) Hashes from Microsoft (sha256):  https://www.microsoft.com/security/blog/2021/03/02/hafnium-targeting-exchange-servers/
	b75f163ca9b9240bf4b37ad92bc7556b40a17e27c2b8ed5c8991385fe07d17d0
	097549cf7d0f76f0d99edf8b2d91c60977fd6a96e4b8c3c94b0b1733dc026d3e
	2b6f1ebb2208e93ade4a6424555d6a8341fd6d9f60c25e44afe11008f5c1aad1
	65149e036fff06026d80ac9ad4d156332822dc93142cf1a122b1841ec8de34b5
	511df0e2df9bfa5521b588cc4bb5f8c5a321801b803394ebc493db1ef3c78fa1
	4edc7770464a14f54d17f36dc9d0fe854f68b346b27b35a6f5839adf1f13f8ea
	811157f9c7003ba8d17b45eb3cf09bef2cecd2701cedb675274949296a6a183d
	1631a90eb5395c4e19c7dbcbf611bbe6444ff312eb7937e286e4637cb9e72944
2) Hashes from FireEye (MD5): https://www.fireeye.com/blog/threat-research/2021/03/detection-response-to-exploitation-of-microsoft-exchange-zero-day-vulnerabilities.html
	4b3039cf227c611c45d2242d1228a121
	0fd9bffa49c76ee12e51e3b8ae0609ac
	79eb217578bed4c250803bd573b10151
3) Hashes from Volexity (sha256): https://www.volexity.com/blog/2021/03/02/active-exploitation-of-microsoft-exchange-zero-day-vulnerabilities/
	
	893cd3583b49cb706b3e55ecb2ed0757b977a21f5c72e041392d1256f31166e2
	406b680edc9a1bb0e2c7c451c56904857848b5f15570401450b73b232ff38928
	2fa06333188795110bba14a482020699a96f76fb1ceb80cbfa2df9d3008b5b0a
4) Hashes from CISA (sha256): https://us-cert.cisa.gov/ncas/alerts/aa21-062a
	71ff78f43c60a61566dac1a923557670e5e832c4adfe5efb91cac7d8386b70e0 (zXkZu6bn.aspx)
	ee883200fb1c58d22e6c642808d651103ae09c1cea270ab0dc4ed7761cb87368 (shell.aspx)
	1e0803ffc283dd04279bf3351b92614325e643564ed5b4004985eb0486bf44ee (discover.aspx)
	c8a7b5ffcf23c7a334bb093dda19635ec06ca81f6196325bb2d811716c90f3c5 (RedirSuiteServerProxy.aspx)
	be17c38d0231ad593662f3b2c664b203e5de9446e858b7374864430e15fbf22d (Fc1b3WDP.aspx)
	c0caa9be0c1d825a8af029cc07207f2e2887fce4637a3d8498692d37a52b4014 (discover.aspx)
	d9c75da893975415663c4f334d2ad292e6001116d829863ab572c311e7edea77 (F48zhi6U.aspx)
	31a750f8dbdd5bd608cfec4218ccb5a3842821f7d03d0cff9128ad00a691f4bd (2XJHwN19.aspx)
	d637b9a4477778a2e32a22027a86d783e1511e999993aad7dca9b7b1b62250b8 (UwSPMsFi.aspx)
	bda1b5b349bfc15b20c3c9cbfabd7ae8473cee8d000045f78ca379a629d97a61 (E3MsTjP8.aspx)
	5ac7dec465b3a532d401afe83f40d336ffc599643501a40d95aa886c436bfc0f (web.config.aspx)
	5e09ea8b70a386f0812a8cafb94e2d2365849ce67fda42377389f18e56d860d0 (supp0rt.aspx)
	c7e1b386b472a26a36632f4ccc25e37458546b9c864b7ef0ec5ebece5e8cc704 (uHSPTWMG.aspx)
	0c5fd2b5d1bfe5ffca2784541c9ce2ad3d22a9cb64d941a8439ec1b2a411f7f8 (McYhCzdb.aspx)
	138f0a63c9a69b35195c49189837e899433b451f98ff72c515133d396d515659 (0q1iS7mn.aspx)
	36149efb63a0100f4fb042ad179945aab1939bcbf8b337ab08b62083c38642ac (8aUco9ZK.aspx)
	508ac97ea751daebe8a99fa915144036369fc9e831697731bf57c07f32db01e8 (ogu7zFil.aspx)
