{ mkDerivation, base, http-conduit, stdenv, xml-conduit }:
mkDerivation {
  pname = "rss-agg";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base http-conduit xml-conduit ];
  license = stdenv.lib.licenses.bsd3;
}
