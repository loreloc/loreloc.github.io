--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid (mappend)
import           Hakyll
--------------------------------------------------------------------------------

root :: String
root = "https://loreloc.github.io"


main :: IO ()
main = hakyll $ do
    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    match "static/**" $ do
        route   idRoute
        compile copyFileCompiler

    match "authors/**" $ do
        route   idRoute
        compile copyFileCompiler

    match "js/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "favicon.ico" $ do
        route   idRoute
        compile copyFileCompiler

    match "publications/*" $ do
        route $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/publication.html" publicationCtx
            >>= loadAndApplyTemplate "templates/default.html"     publicationCtx
            >>= relativizeUrls

    match "index.markdown" $ do
        route   $ setExtension "html"
        compile $ do
            publications <- recentFirst =<< loadAll "publications/*"
            let indexCtx =
                    listField "publications" publicationCtx (return publications) `mappend`
                    defaultContext
            pandocCompiler
                >>= applyAsTemplate indexCtx
                >>= loadAndApplyTemplate "templates/default.html" indexCtx
                >>= relativizeUrls

    match "templates/*" $ compile templateBodyCompiler

    create ["sitemap.xml"] $ do
        route idRoute
        compile $ do
            publications <- recentFirst =<< loadAll "publications/*"
            singlePages <- loadAll (fromList ["index.markdown"])
            let pages = publications `mappend` singlePages
                sitemapCtx =
                    constField "root" root `mappend`
                    listField "pages" publicationCtx (return pages)
            makeItem ""
                >>= loadAndApplyTemplate "templates/sitemap.xml" sitemapCtx


publicationCtx :: Context String
publicationCtx =
    constField "root" root `mappend`
    dateField "published" "%B %e, %Y" `mappend`
    defaultContext
