{ mkDerivation, aeson, base, blaze-builder, bytestring
, case-insensitive, conduit, conduit-extra, connection, cookie
, data-default-class, hspec, http-client, http-client-tls
, http-types, HUnit, mtl, network, resourcet, stdenv
, streaming-commons, temporary, text, time, transformers, unliftio
, unliftio-core, utf8-string, wai, wai-conduit, warp, warp-tls
}:
mkDerivation {
  pname = "http-conduit";
  version = "2.3.2";
  sha256 = "7596448325d8b3ad31b2100fe6ba4a3447a470a461cfb7fbcc0bc90a32245ec5";
  revision = "1";
  editedCabalFile = "0g6rg8r33q5rmrx5287vjfcqwjacchgzyfc8aqqrhrfz3fq5ll0g";
  libraryHaskellDepends = [
    aeson base bytestring conduit conduit-extra http-client
    http-client-tls http-types mtl resourcet transformers unliftio-core
  ];
  testHaskellDepends = [
    aeson base blaze-builder bytestring case-insensitive conduit
    conduit-extra connection cookie data-default-class hspec
    http-client http-types HUnit network resourcet streaming-commons
    temporary text time transformers unliftio utf8-string wai
    wai-conduit warp warp-tls
  ];
  doCheck = false;
  homepage = "http://www.yesodweb.com/book/http-conduit";
  description = "HTTP client package with conduit interface and HTTPS support";
  license = stdenv.lib.licenses.bsd3;
}
