{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      disable-git-info = false;
      hide-dependency-versions = false;
      integration-tests = false;
      static = false;
      supported-build = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stack";
          version = "1.6.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "manny@fpcomplete.com";
        author = "Commercial Haskell SIG";
        homepage = "http://haskellstack.org";
        url = "";
        synopsis = "The Haskell Tool Stack";
        description = "Please see the README.md for usage information, and the wiki on Github for more details.  Also, note that the API for the library is not currently stable, and may change significantly, even between minor releases. It is currently only intended for use by the executable.";
        buildType = "Custom";
      };
      components = {
        stack = {
          depends  = [
            hsPkgs.Cabal
            hsPkgs.aeson
            hsPkgs.annotated-wl-pprint
            hsPkgs.ansi-terminal
            hsPkgs.async
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.clock
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.containers
            hsPkgs.cryptonite
            hsPkgs.cryptonite-conduit
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.echo
            hsPkgs.exceptions
            hsPkgs.extra
            hsPkgs.fast-logger
            hsPkgs.file-embed
            hsPkgs.filelock
            hsPkgs.filepath
            hsPkgs.fsnotify
            hsPkgs.generic-deriving
            hsPkgs.hackage-security
            hsPkgs.hashable
            hsPkgs.hastache
            hsPkgs.hpack
            hsPkgs.hpc
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.memory
            hsPkgs.microlens
            hsPkgs.microlens-mtl
            hsPkgs.mintty
            hsPkgs.monad-logger
            hsPkgs.mono-traversable
            hsPkgs.mtl
            hsPkgs.neat-interpolation
            hsPkgs.network-uri
            hsPkgs.open-browser
            hsPkgs.optparse-applicative
            hsPkgs.path
            hsPkgs.path-io
            hsPkgs.persistent
            hsPkgs.persistent-sqlite
            hsPkgs.persistent-template
            hsPkgs.pretty
            hsPkgs.primitive
            hsPkgs.process
            hsPkgs.project-template
            hsPkgs.regex-applicative-text
            hsPkgs.resourcet
            hsPkgs.retry
            hsPkgs.semigroups
            hsPkgs.split
            hsPkgs.stm
            hsPkgs.store
            hsPkgs.store-core
            hsPkgs.streaming-commons
            hsPkgs.tar
            hsPkgs.template-haskell
            hsPkgs.temporary
            hsPkgs.text
            hsPkgs.text-metrics
            hsPkgs.th-reify-many
            hsPkgs.time
            hsPkgs.tls
            hsPkgs.transformers
            hsPkgs.unicode-transforms
            hsPkgs.unix-compat
            hsPkgs.unliftio
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.yaml
            hsPkgs.zip-archive
            hsPkgs.zlib
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [
              hsPkgs.bindings-uname
              hsPkgs.pid1
              hsPkgs.unix
            ]);
        };
        exes = {
          stack = {
            depends  = ([
              hsPkgs.Cabal
              hsPkgs.aeson
              hsPkgs.annotated-wl-pprint
              hsPkgs.ansi-terminal
              hsPkgs.async
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.base64-bytestring
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.clock
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.cryptonite
              hsPkgs.cryptonite-conduit
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.echo
              hsPkgs.exceptions
              hsPkgs.extra
              hsPkgs.fast-logger
              hsPkgs.file-embed
              hsPkgs.filelock
              hsPkgs.filepath
              hsPkgs.fsnotify
              hsPkgs.generic-deriving
              hsPkgs.hackage-security
              hsPkgs.hashable
              hsPkgs.hastache
              hsPkgs.hpack
              hsPkgs.hpc
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.memory
              hsPkgs.microlens
              hsPkgs.microlens-mtl
              hsPkgs.mintty
              hsPkgs.monad-logger
              hsPkgs.mono-traversable
              hsPkgs.mtl
              hsPkgs.neat-interpolation
              hsPkgs.network-uri
              hsPkgs.open-browser
              hsPkgs.optparse-applicative
              hsPkgs.path
              hsPkgs.path-io
              hsPkgs.persistent
              hsPkgs.persistent-sqlite
              hsPkgs.persistent-template
              hsPkgs.pretty
              hsPkgs.primitive
              hsPkgs.process
              hsPkgs.project-template
              hsPkgs.regex-applicative-text
              hsPkgs.resourcet
              hsPkgs.retry
              hsPkgs.semigroups
              hsPkgs.split
              hsPkgs.stack
              hsPkgs.stm
              hsPkgs.store
              hsPkgs.store-core
              hsPkgs.streaming-commons
              hsPkgs.tar
              hsPkgs.template-haskell
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.text-metrics
              hsPkgs.th-reify-many
              hsPkgs.time
              hsPkgs.tls
              hsPkgs.transformers
              hsPkgs.unicode-transforms
              hsPkgs.unix-compat
              hsPkgs.unliftio
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.yaml
              hsPkgs.zip-archive
              hsPkgs.zlib
            ] ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [
                hsPkgs.bindings-uname
                hsPkgs.pid1
                hsPkgs.unix
              ])) ++ optionals (!_flags.disable-git-info) [
              hsPkgs.gitrev
              hsPkgs.optparse-simple
            ];
          };
        };
        tests = {
          stack-integration-test = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.aeson
              hsPkgs.annotated-wl-pprint
              hsPkgs.ansi-terminal
              hsPkgs.async
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.base64-bytestring
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.clock
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.cryptonite
              hsPkgs.cryptonite-conduit
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.echo
              hsPkgs.exceptions
              hsPkgs.extra
              hsPkgs.fast-logger
              hsPkgs.file-embed
              hsPkgs.filelock
              hsPkgs.filepath
              hsPkgs.fsnotify
              hsPkgs.generic-deriving
              hsPkgs.hackage-security
              hsPkgs.hashable
              hsPkgs.hastache
              hsPkgs.hpack
              hsPkgs.hpc
              hsPkgs.hspec
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.memory
              hsPkgs.microlens
              hsPkgs.microlens-mtl
              hsPkgs.mintty
              hsPkgs.monad-logger
              hsPkgs.mono-traversable
              hsPkgs.mtl
              hsPkgs.neat-interpolation
              hsPkgs.network-uri
              hsPkgs.open-browser
              hsPkgs.optparse-applicative
              hsPkgs.path
              hsPkgs.path-io
              hsPkgs.persistent
              hsPkgs.persistent-sqlite
              hsPkgs.persistent-template
              hsPkgs.pretty
              hsPkgs.primitive
              hsPkgs.process
              hsPkgs.project-template
              hsPkgs.regex-applicative-text
              hsPkgs.resourcet
              hsPkgs.retry
              hsPkgs.semigroups
              hsPkgs.split
              hsPkgs.stm
              hsPkgs.store
              hsPkgs.store-core
              hsPkgs.streaming-commons
              hsPkgs.tar
              hsPkgs.template-haskell
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.text-metrics
              hsPkgs.th-reify-many
              hsPkgs.time
              hsPkgs.tls
              hsPkgs.transformers
              hsPkgs.unicode-transforms
              hsPkgs.unix-compat
              hsPkgs.unliftio
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.yaml
              hsPkgs.zip-archive
              hsPkgs.zlib
            ] ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [
                hsPkgs.bindings-uname
                hsPkgs.pid1
                hsPkgs.unix
              ]);
          };
          stack-test = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.annotated-wl-pprint
              hsPkgs.ansi-terminal
              hsPkgs.async
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.base64-bytestring
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.clock
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.cryptonite
              hsPkgs.cryptonite-conduit
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.echo
              hsPkgs.exceptions
              hsPkgs.extra
              hsPkgs.fast-logger
              hsPkgs.file-embed
              hsPkgs.filelock
              hsPkgs.filepath
              hsPkgs.fsnotify
              hsPkgs.generic-deriving
              hsPkgs.hackage-security
              hsPkgs.hashable
              hsPkgs.hastache
              hsPkgs.hpack
              hsPkgs.hpc
              hsPkgs.hspec
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.memory
              hsPkgs.microlens
              hsPkgs.microlens-mtl
              hsPkgs.mintty
              hsPkgs.monad-logger
              hsPkgs.mono-traversable
              hsPkgs.mtl
              hsPkgs.neat-interpolation
              hsPkgs.network-uri
              hsPkgs.open-browser
              hsPkgs.optparse-applicative
              hsPkgs.path
              hsPkgs.path-io
              hsPkgs.persistent
              hsPkgs.persistent-sqlite
              hsPkgs.persistent-template
              hsPkgs.pretty
              hsPkgs.primitive
              hsPkgs.process
              hsPkgs.project-template
              hsPkgs.regex-applicative-text
              hsPkgs.resourcet
              hsPkgs.retry
              hsPkgs.semigroups
              hsPkgs.smallcheck
              hsPkgs.split
              hsPkgs.stack
              hsPkgs.stm
              hsPkgs.store
              hsPkgs.store-core
              hsPkgs.streaming-commons
              hsPkgs.tar
              hsPkgs.template-haskell
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.text-metrics
              hsPkgs.th-reify-many
              hsPkgs.time
              hsPkgs.tls
              hsPkgs.transformers
              hsPkgs.unicode-transforms
              hsPkgs.unix-compat
              hsPkgs.unliftio
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.yaml
              hsPkgs.zip-archive
              hsPkgs.zlib
            ] ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [
                hsPkgs.bindings-uname
                hsPkgs.pid1
                hsPkgs.unix
              ]);
          };
        };
      };
    }