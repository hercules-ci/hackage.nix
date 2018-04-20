{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      old-locale = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "options-time";
          version = "1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "John Millikin <john@john-millikin.com>";
        author = "John Millikin <john@john-millikin.com>";
        homepage = "https://john-millikin.com/software/haskell-options/";
        url = "";
        synopsis = "Command-line option types for dates and times.";
        description = "";
        buildType = "Simple";
      };
      components = {
        options-time = {
          depends  = [
            hsPkgs.base
            hsPkgs.options
          ] ++ (if _flags.old-locale
            then [
              hsPkgs.time
              hsPkgs.old-locale
            ]
            else [ hsPkgs.time ]);
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.chell
              hsPkgs.options
              hsPkgs.options-time
              hsPkgs.time
            ];
          };
        };
      };
    }