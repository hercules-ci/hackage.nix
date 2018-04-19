{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gogol-replicapool-updater";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2015 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/gogol";
        url = "";
        synopsis = "Google Compute Engine Instance Group Updater SDK.";
        description = "The Google Compute Engine Instance Group Updater API provides services\nfor updating groups of Compute Engine Instances.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nThis library is compatible with version @v1beta1@\nof the API.\n\nLabels:\n\n* Limited Availability";
        buildType = "Simple";
      };
      components = {
        gogol-replicapool-updater = {
          depends  = [
            hsPkgs.gogol-core
            hsPkgs.base
          ];
        };
      };
    }