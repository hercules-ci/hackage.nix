{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      prisms = true;
      binary = true;
      cereal = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "libconfig";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Matthew Peddie <mpeddie@gmail.com>";
        maintainer = "mpeddie@gmail.com";
        author = "Matthew Peddie";
        homepage = "https://github.com/peddie/libconfig-haskell";
        url = "";
        synopsis = "Haskell bindings to libconfig";
        description = "Low-level FFI bindings to the <http://www.hyperrealm.com/libconfig/ libconfig>\nconfiguration file library.\n\nThis library only binds to version 1.4.9 of the libconfig\nlibrary, which is known as @libconfig9@ in Debian-like\ndistributions, including Ubuntu.  It will not work with\nolder versions of libconfig, including the @libconfig8@\ndistributed in Ubuntu 12.04.\n\nSee below for several flags you can use to reduce\ndependencies if this is a problem for you.  If you disable\neverything, this package will only depend on\n@transformers@, @text@, @hashable@ and @deepseq@.";
        buildType = "Simple";
      };
      components = {
        libconfig = {
          depends  = if _flags.prisms && _flags.binary && _flags.cereal
            then [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.hashable
              hsPkgs.deepseq
              hsPkgs.transformers
              hsPkgs.transformers-compat
              hsPkgs.profunctors
              hsPkgs.binary
              hsPkgs.text-binary
              hsPkgs.cereal
              hsPkgs.cereal-text
            ]
            else if _flags.prisms && _flags.binary
              then [
                hsPkgs.base
                hsPkgs.text
                hsPkgs.hashable
                hsPkgs.deepseq
                hsPkgs.transformers
                hsPkgs.transformers-compat
                hsPkgs.profunctors
                hsPkgs.binary
                hsPkgs.text-binary
              ]
              else if _flags.prisms && _flags.cereal
                then [
                  hsPkgs.base
                  hsPkgs.text
                  hsPkgs.hashable
                  hsPkgs.deepseq
                  hsPkgs.transformers
                  hsPkgs.transformers-compat
                  hsPkgs.profunctors
                  hsPkgs.cereal
                  hsPkgs.cereal-text
                ]
                else if _flags.binary && _flags.cereal
                  then [
                    hsPkgs.base
                    hsPkgs.text
                    hsPkgs.hashable
                    hsPkgs.deepseq
                    hsPkgs.transformers
                    hsPkgs.transformers-compat
                    hsPkgs.binary
                    hsPkgs.text-binary
                    hsPkgs.cereal
                    hsPkgs.cereal-text
                  ]
                  else if _flags.prisms
                    then [
                      hsPkgs.base
                      hsPkgs.text
                      hsPkgs.hashable
                      hsPkgs.deepseq
                      hsPkgs.transformers
                      hsPkgs.transformers-compat
                      hsPkgs.profunctors
                    ]
                    else if _flags.binary
                      then [
                        hsPkgs.base
                        hsPkgs.text
                        hsPkgs.hashable
                        hsPkgs.deepseq
                        hsPkgs.transformers
                        hsPkgs.transformers-compat
                        hsPkgs.binary
                        hsPkgs.text-binary
                      ]
                      else if _flags.cereal
                        then [
                          hsPkgs.base
                          hsPkgs.text
                          hsPkgs.hashable
                          hsPkgs.deepseq
                          hsPkgs.transformers
                          hsPkgs.transformers-compat
                          hsPkgs.cereal
                          hsPkgs.cereal-text
                        ]
                        else [
                          hsPkgs.base
                          hsPkgs.text
                          hsPkgs.hashable
                          hsPkgs.deepseq
                          hsPkgs.transformers
                          hsPkgs.transformers-compat
                        ];
          libs = [ pkgs.config ];
        };
        tests = {
          doctest = {
            depends  = if _flags.prisms
              then [
                hsPkgs.base
                hsPkgs.libconfig
                hsPkgs.doctest
                hsPkgs.doctest-prop
                hsPkgs.lens
              ]
              else [
                hsPkgs.base
                hsPkgs.libconfig
                hsPkgs.doctest
                hsPkgs.doctest-prop
              ];
          };
        };
      };
    }