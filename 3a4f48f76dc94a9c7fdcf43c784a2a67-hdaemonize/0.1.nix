{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hdaemonize";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Anton Tayanovskyy <name.surname@gmail.com>";
        author = "Anton Tayanovskyy";
        homepage = "http://github.com/toyvo/hdaemonize/tree/master";
        url = "";
        synopsis = "utilities for UNIX daemon writing";
        description = "Provides two functions that help writing better UNIX daemons,\ndaemonize and serviced: daemonize does what a daemon should do\n(forking and closing descriptors), while serviced does that and\nmore (syslog interface, PID file writing, start-stop-restart\ncommand line handling, dropping privileges).";
        buildType = "Simple";
      };
      components = {
        hdaemonize = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.haskell98
            hsPkgs.hsyslog
          ];
        };
      };
    }