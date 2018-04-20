{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "json-autotype";
          version = "0.2.5.13";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright by Michal J. Gajda '2014-'2015";
        maintainer = "mjgajda@gmail.com";
        author = "Michal J. Gajda";
        homepage = "https://github.com/mgajda/json-autotype";
        url = "";
        synopsis = "Automatic type declaration for JSON input data";
        description = "Generates datatype declarations with Aeson's \"FromJSON\" instances\nfrom a set of example \".json\" files.\n\nTo get started you need to install the package,\nand run \"json-autotype\" binary on an input \".json\" file.\nThat will generate a new Aeson-based JSON parser.\n\n\"\$ json-autotype input.json -o JSONTypes.hs\"\n\nFeel free to tweak the by changing types of the fields\n- any field type that is instance of \"FromJSON\" should work.\n\nYou may immediately test the parser by calling it as a script:\n\n\"\$ runghc JSONTypes.hs input.json\"\n\nSee introduction on  <https://github.com/mgajda/json-autotype>\nfor details.";
        buildType = "Simple";
      };
      components = {
        json-autotype = {
          depends  = [
            hsPkgs.base
            hsPkgs.GenericPretty
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.hint
            hsPkgs.hflags
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.uniplate
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        exes = {
          json-autotype = {
            depends  = [
              hsPkgs.base
              hsPkgs.GenericPretty
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.hashable
              hsPkgs.hflags
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.uniplate
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
          json-autotype-random-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.GenericPretty
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hashable
              hsPkgs.hflags
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.uniplate
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.QuickCheck
            ];
          };
          json-autotype-qc-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.GenericPretty
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hashable
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.uniplate
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }