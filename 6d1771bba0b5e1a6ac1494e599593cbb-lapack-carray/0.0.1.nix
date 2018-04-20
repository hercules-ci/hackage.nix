{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "lapack-carray";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://hub.darcs.net/thielema/lapack-carray/";
        url = "";
        synopsis = "Auto-generated interface to Fortran LAPACK via CArrays";
        description = "LAPACK is a package for efficient numerically robust linear algebra.\nThe original implementation is written in FORTRAN.\nThis is a semi-automatically generated mid-level wrapper.\nThe functions are not ready to use for high-level applications,\nbut they are a step closer.\n\nThe functions are all in IO monad because they are auto-generated and\nwe cannot make sure automatically that unsafePerformIO is always safe.\nInstead of raw pointers we use CArrays and IOCArrays\nand assign and check array bounds to LAPACK function parameters,\nas far we can retrieve this information from the FORTRAN comments.\nWe check consistency of dimensions where consistent dimensions are required,\nbut we cannot do all kind of bound checks.\nWe use immutable CArray for input and output parameters\nand mutable IOCArray for input/output parameters.\nLAPACK plays some nasty tricks of in-place array updates\non input/output arrays\neven if the dimensions of input and output array differ (see e.g. GELS).\nThe wrappers also manage allocation of memory for function parameters.\nThis is necessary since FORTRAN passes all parameters by reference.\nFurther on, the wrappers convert from Haskell values like @Int@\nto low-level values like @CInt@.\n\nWe provide bindings to functions of all variants\nfor @Float@, @Double@, @Complex Float@ and @Complex Double@.\nWe do not use TemplateHaskell nor HSC nor CHS, but instead Haskell 98 code\ngenerated by the custom @lapack-ffi-tools@ package.";
        buildType = "Simple";
      };
      components = {
        lapack-carray = {
          depends  = [
            hsPkgs.lapack-ffi
            hsPkgs.netlib-carray
            hsPkgs.netlib-ffi
            hsPkgs.carray
            hsPkgs.storable-complex
            hsPkgs.transformers
            hsPkgs.base
          ];
        };
      };
    }