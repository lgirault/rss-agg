{ mkDerivation, base, bytestring, conduit, http-conduit, stdenv
, xml-conduit, xml-types, zlib
}:
mkDerivation {
  pname = "rss-agg";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base bytestring conduit http-conduit xml-conduit xml-types
  ];
  executablePkgconfigDepends = [ zlib ];
  license = stdenv.lib.licenses.bsd3;
}
