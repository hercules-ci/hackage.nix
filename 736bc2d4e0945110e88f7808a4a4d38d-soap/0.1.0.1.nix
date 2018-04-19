{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "soap";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "aenor.realm@gmail.com";
        author = "Alexander Bondarenko";
        homepage = "https://bitbucket.org/dpwiz/haskell-soap";
        url = "";
        synopsis = "SOAP client tools";
        description = "Tools to build SOAP clients using xml-conduit.";
        buildType = "Simple";
      };
      components = {
        soap = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-conduit
            hsPkgs.xml-conduit
            hsPkgs.iconv
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
      };
    }