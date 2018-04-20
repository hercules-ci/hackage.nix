{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      usestm = true;
      usetmvar = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "stateref";
          version = "0.3";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "http://code.haskell.org/~mokus/stateref/";
        url = "";
        synopsis = "Abstraction for things that work like IORef.";
        description = "A collection of type-classes generalizing the\nread\\/write\\/modify operations for stateful variables\nprovided by things like IORef, TVar, &c.\nNote that The interface has changed a bit from the\n0.2.* version.  \\\"*Ref\\\" functions are now called\n\\\"*Reference\\\" and new \\\"*Ref\\\" function exist with\nsimpler signatures.\nThe new 'Ref' existential type provides a convenient\nmonad-indexed reference type, and the HasRef class\nindicates monads for which there is a default\nreference type for every referent.";
        buildType = "Simple";
      };
      components = {
        stateref = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ] ++ pkgs.lib.optional _flags.usestm hsPkgs.stm;
        };
      };
    }