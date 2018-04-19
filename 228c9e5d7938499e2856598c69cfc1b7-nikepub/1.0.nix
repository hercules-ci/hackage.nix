{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "nikepub";
          version = "1.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "uwe@codemanic.com";
        author = "Uwe Hoffmann";
        homepage = "http://www.codemanic.com/uwe";
        url = "";
        synopsis = "Command line utility publishes Nike+ runs on blogs and Twitter";
        description = "Simple commandline program that given a Nike+ user id will fetch the\nmost recent Nike+ run and publish it to any blog and/or Twitter account.\nAssumes the Nike+ user profile is public. Supports customizable templates\nfor the blog entry title, body and Twitter status update. Any blogging\nsystem with XML-RPC support for metaWeblog.newPost\n(like WordPress or MovableType) is supported.";
        buildType = "Simple";
      };
      components = {
        exes = {
          nikepub = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.regex-compat
              hsPkgs.old-time
              hsPkgs.old-locale
              hsPkgs.time
              hsPkgs.syb
              hsPkgs.network
              hsPkgs.HTTP
              hsPkgs.GoogleChart
              hsPkgs.haxr
              hsPkgs.hxt
              hsPkgs.hs-twitter
              hsPkgs.HStringTemplate
            ];
          };
        };
      };
    }