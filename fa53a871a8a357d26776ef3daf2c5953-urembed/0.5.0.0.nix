{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "urembed";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "grrwlf@gmail.com";
        author = "Sergey Mironov";
        homepage = "http://github.com/grwlf/urembed";
        url = "";
        synopsis = "Ur/Web static content generator";
        description = "Urembed converts a set of FILEs into the Ur/Web modules. Each Module will contain\nfollowing functions:\nval binary : unit -> transaction blob\nval blobpage : unit -> transaction page\nval text : unit -> transaction string\nAdditionally, FFI signatures will be provided for JavaScript files. In order\nto enable this, you have to name your JS functions using the name__type\nscheme. See README for details. Also, uru project uses this a lot.\n(NOTE: the interface is not stable. Pleas, fork the Urembed sources\nbefore using)\nThe master project (specified with -o FILE.urp) will contain a dictionary\nversion of those functions taking the datatype key as an argument, instead of\nunit. In order to actually compile the binaries, you have to call\nmake -f FILE.mk CC=.. LD=.. UR_INCLUDE_DIR=.. urp\nWhere FILE.mk is the Makefile, generated by urembed.\nExample: urembed -o static/Static.urp Style.css Script.js\nmake -C static -f Static.mk CC=gcc LD=ld UR_INCLUDE_DIR=/usr/local/include/urweb urp\nNote: output directory should exist";
        buildType = "Simple";
      };
      components = {
        exes = {
          urembed = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.language-javascript
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.syb
              hsPkgs.optparse-applicative
              hsPkgs.directory
              hsPkgs.mime-types
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.cake3
            ];
          };
        };
      };
    }