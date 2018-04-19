{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "MissingPy";
          version = "0.10.3";
        };
        license = "MIT";
        copyright = "Copyright (c) 2005-2008 John Goerzen";
        maintainer = "Simon Hengel <simon.hengel@wiktory.org>";
        author = "John Goerzen";
        homepage = "";
        url = "";
        synopsis = "Haskell interface to Python";
        description = "MissingPy is two things:\n\nA Haskell binding for many C and Python libraries for tasks such as\ndata compression, databases, etc.  This can be found in the\nMissingPy module tree.\n\nAlso, it's a low-level Haskell binding to the Python interpreter to\nenable development of hybrid applications that use both\nenvironments.  This can be found in the Python module tree.  The\nHaskell bindings above use this environment.\n\nMissingPy permits you to call Python code from Haskell.  It does NOT\npermit you to call Haskell code from Python.\n\nMissingPy is the companion to my MissingH library, and integrates with\nit.";
        buildType = "Custom";
      };
      components = {
        MissingPy = {
          depends  = [
            hsPkgs.base
            hsPkgs.MissingH
            hsPkgs.anydbm
          ];
        };
      };
    }