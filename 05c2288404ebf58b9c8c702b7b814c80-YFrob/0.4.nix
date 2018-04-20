{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "YFrob";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2002-2009 Hanrik Nilsson and Yale University";
        maintainer = "Henrik Nilsson (nhn@cs.nott.ac.uk)";
        author = "Henrik Nilsson";
        homepage = "http://www.haskell.org/yampa/";
        url = "";
        synopsis = "Yampa-based library for programming robots";
        description = "Yampa-based, domain-specific language embedded in Haskell for programming\nrobots. At present, only simulated robots. However, the infrastructure is\nseparated into generic and robot-specific parts, and set up so as to make\nit possible to write robot code that depends only on specific features, as\nopposed to specific platforms or versions of those platforms. Thus, it is\nin principle possible to write quite generic robot code. (Once upon a time,\nthe Pioneer platform, a real robot, was supported.)";
        buildType = "Simple";
      };
      components = {
        YFrob = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.HGL
            hsPkgs.Yampa
          ];
        };
      };
    }