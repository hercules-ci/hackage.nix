{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack-handler-cgi";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/hack-handler-cgi/tree/master";
        url = "";
        synopsis = "Hack handler using CGI protocol.";
        description = "";
        buildType = "Simple";
      };
      components = {
        hack-handler-cgi = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.hack
          ];
        };
      };
    }