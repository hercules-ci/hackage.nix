{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "entropy";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        maintainer = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        homepage = "http://trac.haskell.org/crypto-api/wiki";
        url = "";
        synopsis = "A platform independent entropy source";
        description = "A platform independent method to obtain cryptographically strong entropy (/dev/urandom on Linux, CryptAPI on Windows, patches welcome)\nUsers looking for cryptographically strong (number-theoretically sound) PRNGs should see the 'DRBG' package too!";
        buildType = "Simple";
      };
      components = {
        entropy = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = pkgs.lib.optional system.isWindows pkgs.advapi32;
        };
      };
    }