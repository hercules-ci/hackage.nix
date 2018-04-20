{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-routing";
          version = "0.11";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) 2014 Toralf Wittner";
        maintainer = "Toralf Wittner <tw@dtex.org>";
        author = "Toralf Wittner";
        homepage = "https://github.com/twittner/wai-routing/";
        url = "";
        synopsis = "Declarative routing for WAI.";
        description = "Enables the declaration of \\\"routes\\\" which handle requests to a\nspecific URL.\n\nThe set of possible handlers can be restricted by \\\"predicates\\\",\nwhich operate on WAI requests and have to be true or else the\nhandler will not be called.\n\nExample:\n\n>import Data.ByteString (ByteString)\n>import Data.Text (Text)\n>import Network.Wai\n>import Network.Wai.Predicate\n>import Network.Wai.Routing\n>import Network.Wai.Handler.Warp\n>\n>main :: IO ()\n>main = run 8080 (route (prepare start))\n>\n>start :: Monad m => Routes a m ()\n>start = do\n>    get \"/user/:name\" (continue fetchUser) \$\n>        capture \"name\"\n>\n>    get \"/user/find\" (continue findUser) \$\n>        query \"byName\" ||| query \"byId\"\n>\n>    delete \"/user/:name\" rmUser \$\n>        capture \"name\" .&. opt (cookie \"foo\")\n>\n>fetchUser :: Monad m => Text -> m Response\n>fetchUser name = ...\n>\n>findUser :: Monad m => Either ByteString Word64 -> m Response\n>findUser (Left  name)  = ...\n>findUser (Right ident) = ...\n>\n>rmUser :: Monad m => Text ::: Maybe Int -> Continue m -> m ResponseReceived\n>rmUser (name ::: foo) k = k \$ ...";
        buildType = "Simple";
      };
      components = {
        wai-routing = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-conversion
            hsPkgs.cookie
            hsPkgs.case-insensitive
            hsPkgs.http-types
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.wai-predicates
            hsPkgs.wai-route
          ];
        };
        tests = {
          wai-routing-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.bytestring-conversion
              hsPkgs.case-insensitive
              hsPkgs.http-types
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.wai
              hsPkgs.wai-predicates
              hsPkgs.wai-routing
            ];
          };
        };
        benchmarks = {
          wai-routing-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.http-types
              hsPkgs.wai
              hsPkgs.wai-predicates
              hsPkgs.wai-routing
            ];
          };
        };
      };
    }