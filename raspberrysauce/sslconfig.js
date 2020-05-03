var sslconfig = {};

sslconfig = {};

sslconfig.passphrase = "";
sslconfig.cacertpath = "/etc/letsencrypt/live/INSERTDOMAINHERE/";
sslconfig.cacert = "chain.pem";
sslconfig.servercertpath = sslconfig.cacertpath;
sslconfig.servercert = "cert.pem";
sslconfig.serverkey = "privkey.pem"

module.exports = sslconfig;
