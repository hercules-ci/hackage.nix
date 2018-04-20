{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      pedantic = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "endo";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013-2016, Peter Trško";
        maintainer = "peter.trsko@gmail.com";
        author = "Peter Trško";
        homepage = "https://github.com/trskop/endo";
        url = "";
        synopsis = "Endomorphism utilities.";
        description = "Package defines extra functions for 'Data.Monoid.Endo' data type, and also\ngeneric endomorphism folding machinery. Generic endomorphism folding can be\nused for various purposes, including as a builder.\n\nHere is an example how to use it with\n<http://hackage.haskell.org/package/optparse-applicative optparse-applicative>\npackage:\n\n> data Verbosity = Silent | Normal | Verbose | Annoying\n>   deriving (Show)\n\n> data Config = Config Verbosity FilePath\n>   deriving (Show)\n\n> options :: Parser Config\n> options = runIdentityT \$ runEndo defaultConfig <\$> options'\n>   where\n>     -- All this IdentityT clutter is here to avoid orphan instances.\n>     options' :: IdentityT Parser (Endo Config)\n>     options' = foldEndo\n>         <*> outputOption     -- :: IdentityT Parser (Maybe (E Config))\n>         <*> verbosityOption  -- :: IdentityT Parser (Maybe (E Config))\n>         <*> annoyingFlag     -- :: IdentityT Parser (E Config)\n>         <*> silentFlag       -- :: IdentityT Parser (E Config)\n>         <*> verboseFlag      -- :: IdentityT Parser (E Config)\n>\n>     defaultConfig :: Config\n>     defaultConfig = Config Normal \"\"\n\n> main :: IO ()\n> main = execParser (info options fullDesc) >>= print\n\n> ghci> :main -o an.out.put --annoying\n> Config Annoying \"an.out.put\"\n\nFor details how individual option parsers look like see module\n\"Data.Monoid.Endo.Fold\" which contains other examples as well as this one.";
        buildType = "Simple";
      };
      components = {
        endo = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.between
            hsPkgs.data-default-class
          ];
        };
      };
    }