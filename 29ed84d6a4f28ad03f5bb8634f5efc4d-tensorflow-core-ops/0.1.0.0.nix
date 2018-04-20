{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "tensorflow-core-ops";
          version = "0.1.0.0";
        };
        license = "LicenseRef-Apache";
        copyright = "Google Inc.";
        maintainer = "tensorflow-haskell@googlegroups.com";
        author = "TensorFlow authors";
        homepage = "https://github.com/tensorflow/haskell#readme";
        url = "";
        synopsis = "Haskell wrappers for Core Tensorflow Ops.";
        description = "Code generated signatures for the Ops in libtensorflow.";
        buildType = "Custom";
      };
      components = {
        tensorflow-core-ops = {
          depends  = [
            hsPkgs.bytestring
            hsPkgs.proto-lens
            hsPkgs.tensorflow
            hsPkgs.base
            hsPkgs.lens-family
            hsPkgs.text
          ];
        };
      };
    }