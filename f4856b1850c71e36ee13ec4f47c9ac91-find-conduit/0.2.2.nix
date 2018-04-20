{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "find-conduit";
          version = "0.2.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "johnw@newartisans.com";
        author = "John Wiegley";
        homepage = "";
        url = "";
        synopsis = "A file-finding conduit that allows user control over traversals.";
        description = "A file-finding conduit that allows user control over traversals.";
        buildType = "Simple";
      };
      components = {
        find-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.conduit-combinators
            hsPkgs.attoparsec
            hsPkgs.system-filepath
            hsPkgs.unix
            hsPkgs.text
            hsPkgs.regex-posix
            hsPkgs.profunctors
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.time
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.find-conduit
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.attoparsec
              hsPkgs.system-filepath
              hsPkgs.unix
              hsPkgs.text
              hsPkgs.regex-posix
              hsPkgs.mtl
              hsPkgs.time
              hsPkgs.semigroups
              hsPkgs.hspec
            ];
          };
        };
      };
    }