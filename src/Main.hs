module Main where

import           App
import           Data.Text          as T
import           Paths_silkscreen
import           System.Environment
import           Util.Data

main :: IO ()
main = do
    arg <- getArgs
    colorsFileName <- getDataFileName "colors"
    colors <- Prelude.words <$> readFile colorsFileName
    templateFileName <- getDataFileName "template.silk"
    template <- readFile templateFileName
    content <- readFile $ head arg
    print "Generating HTML file..."
    let htmlGenerated =
            case getArgsIndex 1 arg of
                Just "--weezer" ->
                    applyWeezerTheme $
                    generateFullPage
                        (removeExtensionMD (head arg))
                        content
                        template
                        ["#009CCF", "#BDD639", "#EF1831", "#ECECEC"]
                _ ->
                    generateFullPage
                        (removeExtensionMD (head arg))
                        content
                        template
                        colors
    writeFile (removeExtensionMD (head arg) ++ ".html") $ T.unpack htmlGenerated
    print "File successfully created"
