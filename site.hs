--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll
--------------------------------------------------------------------------------

main :: IO ()
main = hakyll $ do
    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match "web-fonts/**" $ do
        route   idRoute
        compile copyFileCompiler

    match "images/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "static/*" $ do
        route   idRoute
        compile  copyFileCompiler

    -- match (fromList ["index.markdown"]) $ do
    --     route   $ setExtension "html"
    --     compile $ pandocCompiler
    --         >>= loadAndApplyTemplate "templates/default.html" defaultContext
    --         >>= relativizeUrls

    match "publications/*" $ do
        route $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/publication.html" publicationCtx
            >>= loadAndApplyTemplate "templates/default.html"     publicationCtx
            >>= relativizeUrls

    match "index.markdown" $ do
        route   $ setExtension "html"
        compile $ do
            -- >>= loadAndApplyTemplate "templates/default.html" defaultContext
            -- >>= relativizeUrls
            publications <- recentFirst =<< loadAll "publications/*"
            let indexCtx =
                    listField "publications" publicationCtx (return publications) `mappend`
                    defaultContext
            pandocCompiler
                >>= applyAsTemplate indexCtx
                >>= loadAndApplyTemplate "templates/default.html" indexCtx
                >>= relativizeUrls

    match "templates/*" $ compile templateBodyCompiler

--------------------------------------------------------------------------------

publicationCtx :: Context String
publicationCtx =
    dateField "date" "%B %e, %Y" `mappend`
    defaultContext
