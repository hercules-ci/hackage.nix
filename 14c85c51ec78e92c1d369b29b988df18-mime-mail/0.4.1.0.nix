{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mime-mail";
          version = "0.4.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/mime-mail";
        url = "";
        synopsis = "Compose MIME email messages.";
        description = "This package provides some high-level datatypes for declaring MIME email messages, functions for automatically composing these into bytestrings, and the ability to send bytestrings via the sendmail executable. You can also use any other library you wish to send via different methods, eg directly to SMTP.";
        buildType = "Simple";
      };
      components = {
        mime-mail = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.process
            hsPkgs.random
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.filepath
          ];
        };
      };
    }