{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "soap";
          version = "0.2.3.5";
        };
        license = "MIT";
        copyright = "(c) 2013-2017 Alexander Bondarenko";
        maintainer = "aenor.realm@gmail.com";
        author = "Alexander Bondarenko";
        homepage = "https://bitbucket.org/dpwiz/haskell-soap";
        url = "";
        synopsis = "SOAP client tools";
        description = "Tools to build SOAP clients using xml-conduit.\n\nA mildly-complicated example:\n\n> import Network.SOAP\n> import Network.SOAP.Transport.HTTP\n>\n> import Text.XML.Writer\n> import Text.XML.Stream.Parse as Parse\n> import           Data.Text (Text)\n> import qualified Data.Text as T\n>\n> main :: IO ()\n> main = do\n>     -- Initial one-time preparations.\n>     transport <- initTransport \"http://example.com/soap/endpoint\" id (iconv \"cp-1251\")\n>\n>     -- Making queries\n>     activeStaff <- listStaff transport True\n>     print activeStaff\n>\n> data Person = Person Text Int deriving Show\n>\n> listStaff :: Transport -> Bool -> IO [Person]\n> listStaff t active = invokeWS t \"urn:dummy:listStaff\" () body parser\n>     where\n>         body = element \"request\" \$ element \"listStaff\" \$ do\n>                    element \"active\" active\n>                    element \"order\" \$ T.pack \"age\"\n>                    element \"limit\" (10 :: Int)\n>\n>         parser = StreamParser \$ force \"no people\" \$ tagNoAttr \"people\" \$ Parse.many parsePerson\n>\n>         parsePerson = tagName \"person\" (requireAttr \"age\") \$ \\age -> do\n>                           name <- Parse.content\n>                           return \$ Person name (read . T.unpack \$ age)\n\nNotice: to invoke HTTPS services you need to initialize a transport from soap-tls or soap-openssl.\n\nFull examples available at source repo: <https://bitbucket.org/dpwiz/haskell-soap/src/HEAD/soap/examples/>";
        buildType = "Simple";
      };
      components = {
        soap = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.configurator
            hsPkgs.data-default
            hsPkgs.exceptions
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.iconv
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.xml-conduit
            hsPkgs.xml-conduit-writer
            hsPkgs.xml-types
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.soap
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.xml-conduit
              hsPkgs.xml-conduit-writer
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }