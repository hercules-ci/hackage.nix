{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "epub-metadata";
          version = "4.4";
        };
        license = "BSD-3-Clause";
        copyright = "2010-2016 Dino Morelli";
        maintainer = "Dino Morelli <dino@ui3.info>";
        author = "Dino Morelli";
        homepage = "http://hub.darcs.net/dino/epub-metadata";
        url = "";
        synopsis = "Library for parsing epub document metadata";
        description = "Library for parsing and manipulating epub document metadata. Supports epub versions 2 and 3.\nThis library was constructed by studying the IDPF specifications for epub documents found here <http://www.idpf.org/epub/20/spec/OPF_2.0.1_draft.htm> and here <http://www.idpf.org/epub/30/spec/epub30-publications.html>";
        buildType = "Simple";
      };
      components = {
        epub-metadata = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hxt
            hsPkgs.mtl
            hsPkgs.regex-compat
            hsPkgs.zip-archive
          ];
        };
        exes = {
          epub-metadata-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.epub-metadata
              hsPkgs.mtl
            ];
          };
        };
        tests = {
          test-epub-metadata = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.hxt
              hsPkgs.mtl
              hsPkgs.regex-compat
              hsPkgs.zip-archive
            ];
          };
        };
      };
    }