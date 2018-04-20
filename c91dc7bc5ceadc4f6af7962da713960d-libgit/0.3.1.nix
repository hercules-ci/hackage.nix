{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "libgit";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "https://github.com/vincenthz/hs-libgit";
        url = "";
        synopsis = "Simple Git Wrapper";
        description = "Simple git wrapper to access common git functions in a simple haskell way.";
        buildType = "Simple";
      };
      components = {
        libgit = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.process
          ];
        };
      };
    }