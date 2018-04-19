{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "regex-do";
          version = "1.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Imants Cekusins";
        author = "Imants Cekusins";
        homepage = "https://github.com/ciez/regex-do";
        url = "";
        synopsis = "PCRE regex wrapper functions ! bug in replaceGroup";
        description = "search, replace, format String | ByteString with PCRE regex  Utf8-safe";
        buildType = "Simple";
      };
      components = {
        regex-do = {
          depends  = [
            hsPkgs.base
            hsPkgs.regex-base
            hsPkgs.regex-pcre
            hsPkgs.stringsearch
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.text
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.regex-base
              hsPkgs.regex-pcre
              hsPkgs.stringsearch
              hsPkgs.bytestring
              hsPkgs.array
              hsPkgs.text
              hsPkgs.regex-do
            ];
          };
        };
      };
    }