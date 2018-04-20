{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "securemem";
          version = "0.1.5";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "vincent@snarc.org";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-securemem";
        url = "";
        synopsis = "abstraction to an auto scrubbing and const time eq, memory chunk.";
        description = "SecureMem is similar to ByteString, except that it provides a memory chunk that\nwill be auto-scrubbed after it run out of scope.";
        buildType = "Simple";
      };
      components = {
        securemem = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.byteable
            hsPkgs.ghc-prim
          ];
        };
      };
    }