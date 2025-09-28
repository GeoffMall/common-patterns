workspace "Common Patterns" "" {
    !docs workspace-docs

    model {
        properties {
            "structurizr.groupSeparator" "/"
        }

    }

    views {
        properties {
            "c4plantuml.elementProperties" "true"
            "c4plantuml.tags" "true"
            // Primary site color, used for header bar background and active menu background.
            "generatr.style.colors.primary" "#485fc7"
            // Secondary site color, used for font color in header bar and for active menu.
            "generatr.style.colors.secondary" "#ffffff"
//            "generatr.style.faviconPath" "site/favicon.ico"
//            "generatr.style.logoPath" "site/logo.png"

            // Absolute URL's like "https://example.com/custom.css" are also supported
//            "generatr.style.customStylesheet" "site/custom.css"

            "generatr.svglink.target" "_self"
            // Full list of available "generatr.markdown.flexmark.extensions"
            // "Abbreviation,Admonition,AnchorLink,Aside,Attributes,Autolink,Definition,Emoji,EnumeratedReference,Footnotes,GfmIssues,GfmStrikethroughSubscript,GfmTaskList,GfmUsers,GitLab,Ins,Macros,MediaTags,ResizableImage,Superscript,Tables,TableOfContents,SimulatedTableOfContents,Typographic,WikiLinks,XWikiMacro,YAMLFrontMatter,YouTubeLink"
            // see https://github.com/vsch/flexmark-java/wiki/Extensions
            // ATTENTION:
            // * "generatr.markdown.flexmark.extensions" values must be separated by comma
            // * it's not possible to use "GitLab" and "ResizableImage" extensions together
            // default behaviour, if no generatr.markdown.flexmark.extensions property is specified, is to load the Tables extension only
            "generatr.markdown.flexmark.extensions" "Abbreviation,Admonition,AnchorLink,Attributes,Autolink,Definition,Emoji,Footnotes,GfmTaskList,GitLab,MediaTags,Tables,TableOfContents,Typographic"

            "generatr.site.exporter" "structurizr"
            "generatr.site.externalTag" "External System"
            "generatr.site.nestGroups" "false"
            "generatr.site.cdn" "https://cdn.jsdelivr.net/npm"
            "generatr.site.theme" "auto"
        }


        styles {
            element "Person" {
                color #ffffff
                shape Person
            }
        }
    }
}