{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "primitive";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Roman Leshchinskiy 2009-2010";
        maintainer = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
        author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
        homepage = "http://code.haskell.org/primitive";
        url = "";
        synopsis = "Wrappers for primitive operations";
        description = "\nThis package provides wrappers for primitive array operations from\nGHC.Prim.\n\nChanges in version 0.4.1\n\n* New module \"Data.Primitive.MutVar\"\n\nChanges in version 0.4.0.1\n\n* Critical bug fix in @fillByteArray@\n\nChanges in version 0.4\n\n* Support for GHC 7.2 array copying primitives\n\n* New in \"Data.Primitive.ByteArray\": @copyByteArray@,\n@copyMutableByteArray@, @moveByteArray@, @fillByteArray@\n\n* Deprecated in \"Data.Primitive.ByteArray\": @memcpyByteArray@,\n@memcpyByteArray'@, @memmoveByteArray@, @memsetByteArray@\n\n* New in \"Data.Primitive.Array\": @copyArray@, @copyMutableByteArray@\n\n* New in \"Data.Primitive.Addr\": @copyAddr@, @moveAddr@\n\n* Deprecated in \"Data.Primitive.Addr\": @memcpyAddr@\n";
        buildType = "Simple";
      };
      components = {
        primitive = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
      };
    }