{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      chart = false;
      vty = false;
      web = false;
      web610 = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hledger";
          version = "0.11.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Simon Michael <simon@joyful.com>";
        homepage = "http://hledger.org";
        url = "";
        synopsis = "A command-line (or curses or web-based) double-entry accounting tool.";
        description = "hledger reads a plain text general journal or time log\ndescribing your transactions and displays precise\nbalance and register reports via command-line, curses\nor web interface.  It is a remix, in haskell, of John\nWiegley's excellent c++ ledger.  hledger aims to be a\npractical, accessible tool for end users and a useful\nlibrary for finance-minded haskell programmers.";
        buildType = "Custom";
      };
      components = {
        hledger = {
          depends  = [
            hsPkgs.hledger-lib
            hsPkgs.HUnit
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.csv
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.regexpr
            hsPkgs.safe
            hsPkgs.time
            hsPkgs.utf8-string
          ];
        };
        exes = {
          hledger = {
            depends  = ((([
              hsPkgs.hledger-lib
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.csv
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.old-locale
              hsPkgs.old-time
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.regexpr
              hsPkgs.safe
              hsPkgs.time
              hsPkgs.utf8-string
            ] ++ optionals _flags.chart [
              hsPkgs.Chart
              hsPkgs.colour
            ]) ++ pkgs.lib.optional _flags.vty hsPkgs.vty) ++ optionals _flags.web [
              hsPkgs.io-storage
              hsPkgs.yesod
              hsPkgs.convertible-text
            ]) ++ optionals _flags.web610 [
              hsPkgs.hsp
              hsPkgs.hsx
              hsPkgs.xhtml
              hsPkgs.loli
              hsPkgs.io-storage
              hsPkgs.hack-contrib
              hsPkgs.hack
              hsPkgs.hack-handler-simpleserver
              hsPkgs.HTTP
              hsPkgs.applicative-extras
            ];
          };
        };
      };
    }