{ compiler ? "ghc843" }:
let
  config = {
    packageOverrides = pkgs: rec {
      haskell = pkgs.haskell // { 
        packages = pkgs.haskell.packages // {
           "${compiler}" = pkgs.haskell.packages."${compiler}".override {
                overrides = haskellPackagesNew: haskellPackagesOld: rec {
                  rss-agg =
                    haskellPackagesNew.callPackage ./default.nix { };

                  conduit =
                    haskellPackagesNew.callPackage ./deps/conduit.nix { };

                  conduit-extra =
                    haskellPackagesNew.callPackage ./deps/conduit-extra.nix { };

                  http-client =
                    haskellPackagesNew.callPackage ./deps/http-client.nix { };

                  http-conduit =
                    haskellPackagesNew.callPackage ./deps/http-conduit.nix { };

                  resourcet =
                    haskellPackagesNew.callPackage ./deps/resourcet.nix { };

                  xml-conduit =
                    haskellPackagesNew.callPackage ./deps/xml-conduit.nix { };

                  xml-types =
                    haskellPackagesNew.callPackage ./deps/xml-types.nix { };
            };
          };
        };
      };
    };
  };


 pkgs = import <nixpkgs> { inherit config; };
  
### Pin nixpkg
#  bootstrap = import <nixpkgs> { };
#
#  nixpkgs = builtins.fromJSON (builtins.readFile ./nixpkgs.json);
#
#  src = bootstrap.fetchFromGitHub {
#    owner = "NixOS";
#    repo  = "nixpkgs";
#    inherit (nixpkgs) rev sha256;
#  };
#
#  pkgs = import src { inherit config; };

in
  { rss-agg = pkgs.haskell.packages.${compiler}.rss-agg;
  }
