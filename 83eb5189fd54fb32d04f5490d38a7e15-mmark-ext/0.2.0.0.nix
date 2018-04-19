{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "mmark-ext";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/mmark-md/mmark-ext";
        url = "";
        synopsis = "Commonly useful extensions for MMark markdown processor";
        description = "Commonly useful extensions for MMark markdown processor.\nClick on \"Text.MMark.Extension.Common\" to get started.";
        buildType = "Simple";
      };
      components = {
        mmark-ext = {
          depends  = [
            hsPkgs.base
            hsPkgs.foldl
            hsPkgs.lucid
            hsPkgs.microlens
            hsPkgs.mmark
            hsPkgs.modern-uri
            hsPkgs.skylighting
            hsPkgs.text
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.lucid
              hsPkgs.mmark
              hsPkgs.mmark-ext
              hsPkgs.text
            ];
          };
        };
      };
    }