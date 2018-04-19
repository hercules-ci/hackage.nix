{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cereal";
          version = "0.3.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Trevor Elliott <trevor@galois.com>";
        author = "Lennart Kolmodin <kolmodin@dtek.chalmers.se>,\nGalois Inc.,\nLemmih <lemmih@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A binary serialization library";
        description = "A binary serialization library, similar to binary, that introduces an isolate\nprimitive for parser isolation, and replaces the asynchronous errors with a\nuser-handleable Either type.  Similar to binary in performance, but uses a\nstrict ByteString instead of a lazy ByteString, thus restricting it to\noperating on finite inputs.";
        buildType = "Simple";
      };
      components = {
        cereal = {
          depends  = [
            hsPkgs.bytestring
          ] ++ (if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
            ]
            else [ hsPkgs.base ]);
        };
      };
    }