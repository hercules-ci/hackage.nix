{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      only_core = false;
      debug = false;
      osx_gui = true;
      osx_framework = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "java-bridge";
          version = "0.99";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        homepage = "";
        url = "";
        synopsis = "Bindings to the JNI and a high level interface generator.";
        description = "This package offers bindings to the\n/Java Native Interface/ and a high level interface\ngenerator.\n\n[@low level bindings to the JNI@]\nThe low level bindings are located in\n\"Foreign.Java.JNI.Safe\" and \"Foreign.Java.JNI.Unsafe\".\nWhen using these bindings you will have to deal with\npointers and manage global references manually.\n\n[@medium level interface@]\nThe medium level interface is located in\n\"Foreign.Java\". It offers an abstraction over the JNI,\ni.e. you will not have to deal with pointers\nexplicitly nor do you need to manually do conversions\nbetween native types and Haskell types.\nAlso references will automatically be released by\nthe Haskell runtime when no longer needed. You will\nstill need to manually lookup classes and methods in\norder to use them.\n\n\n>>> INSTALLATION / USAGE\n\nIt should suffice to do @cabal install@ (or\n@cabal install java-bridge@ when installing from\nhackageDB). /You need to have a JDK installed prior to\ninstalling this library/.\n\nSetup will try to find the location of your java\ninstallation automatically. This is needed in order to\nload @libjvm@. Note that this library is loaded\ndynamically, which  means that linking errors might not\nshow up during installation.\n\nYou can specify the location of @libjvm@ manually using\nthe environment variable @FFIJNI_LIBJVM@. This\nenvironment variable is consulted by @Setup.hs@ as well\nas by the library each time @libjvm@ is loaded - which\nmeans that you can override the path to @libjvm@ at any\ntime. The function @getCompiledLibjvmPath@ in\n\"Foreign.Java.JNI.Safe\" will tell you what path to\n@libjvm@ has been set during compilation of the library.\n\n\n>>> FUN WITH (cabal-) FLAGS\n\nThe following cabal flags are available to you for\nconfiguring your installation:\n\n[@ONLY_CORE@]\nBuild only the Core Modules which offer a\ndirect binding to the Java Native Interface.\nThe core modules are \"Foreign.Java.JNI\",\n\"Foreign.Java.JNI.Safe\",\nand \"Foreign.Java.JNI.Unsafe\".\nThis implies @NO_TOOLS@.\nDefaults to @False@.\n\n[@DEBUG@]\nEnable a debug build. Defaults to @False@.\n\n[@OSX_GUI@]\nBuild the library with special support for\nCocoa on Mac OS X (you will not be able to\nuse AWT or Swing without). Defaults to @True@\non Darwin (OS X).\n\n[@OSX_FRAMEWORK@]\nUse the JavaVM framework on MacOS X instead\nof loading the dynamic library. Defaults to\n@False@. Enable this flag if building on your\nOS X machine fails. Defaults to @False@.\n\nUse for example\n@cabal install -f OSX_FRAMEWORK -f EXAMPLES@\nor @cabal configure -f DEBUG@.";
        buildType = "Custom";
      };
      components = {
        java-bridge = {
          depends  = ([
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
          ] ++ pkgs.lib.optionals (!_flags.only_core) [
            hsPkgs.cpphs
            hsPkgs.strings
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.hx
          ]) ++ (if system.isOsx
            then [ hsPkgs.unix ]
            else pkgs.lib.optional system.isLinux hsPkgs.unix);
          frameworks = pkgs.lib.optionals system.isOsx (pkgs.lib.optional _flags.osx_gui pkgs.Cocoa ++ pkgs.lib.optional _flags.osx_framework pkgs.JavaVM);
        };
      };
    }