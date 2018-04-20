{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      transformers = true;
      extensibleexceptions = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "control-monad-exception";
          version = "0.4.5";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "pepeiborra@gmail.com";
        author = "Pepe Iborra";
        homepage = "http://safe-tools.dsic.upv.es/mediawiki/index.php/Jose_Iborra/Papers/Exceptions";
        url = "";
        synopsis = "Explicitly typed, checked exceptions with stack traces";
        description = "This package provides explicitly typed, checked exceptions as a library.\n/Example/\n\n> data Expr = Add Expr Expr | Div Expr Expr | Val Double\n> eval (Val x)     = return x\n> eval (Add a1 a2) = do\n>    v1 <- eval a1\n>    v2 <- eval a2\n>    let sum = v1 + v2\n>    if sum < v1 || sum < v2 then throw SumOverflow else return sum\n> eval (Div a1 a2) = do\n>    v1 <- eval a1\n>    v2 <- eval a2\n>    if v2 == 0 then throw DivideByZero else return (v1 / v2)\n\n> data DivideByZero = DivideByZero deriving (Show, Typeable)\n> data SumOverflow  = SumOverflow  deriving (Show, Typeable)\n\n> instance Exception DivideByZero\n> instance Exception SumOverflow\n\nGHCi infers the following types\n\n> eval :: (Throws DivideByZero l, Throws SumOverflow l) => Expr -> EM l Double\n> eval `catch` \\ (e::DivideByZero) -> return (-1)  :: Throws SumOverflow l => Expr -> EM l Double\n> runEM(eval `catch` \\ (e::SomeException) -> return (-1))  :: Expr -> Double\n\nNew in version 0.4:\n\n* Support for unchecked exceptions (with 'UncaughtException')\n\n* Support for exception stack traces (with 'WithSrcLoc'). /Example/\n\n>       f () = \$withLocTH \$ throw MyException\n>       g a  = \$withLocTH \$ f a\n>\n>       main = runEMT \$ \$withLocTH \$ do\n>       g () `catchWithSrcLoc` \\loc MyException ->\n>              lift \$ putStrLn (showExceptionWithTrace loc MyException)\n\n> -- Running main produces the output:\n\n>       *Main> main\n>       MyException\n>        in Main(example.hs): (12,6)\n>           Main(example.hs): (11,7)\n";
        buildType = "Simple";
      };
      components = {
        control-monad-exception = {
          depends  = ([
            hsPkgs.pretty
            hsPkgs.template-haskell
          ] ++ (if _flags.extensibleexceptions
            then [
              hsPkgs.extensible-exceptions
              hsPkgs.base
            ]
            else [
              hsPkgs.base
            ])) ++ (if _flags.transformers
            then [
              hsPkgs.transformers
              hsPkgs.monads-fd
            ]
            else [ hsPkgs.mtl ]);
        };
      };
    }