{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gogol-dns";
          version = "0.1.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2015-2016 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/gogol";
        url = "";
        synopsis = "Google Cloud DNS SDK.";
        description = "Configures and serves authoritative DNS records.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v2beta1@\nof the API.";
        buildType = "Simple";
      };
      components = {
        gogol-dns = {
          depends  = [
            hsPkgs.gogol-core
            hsPkgs.base
          ];
        };
      };
    }