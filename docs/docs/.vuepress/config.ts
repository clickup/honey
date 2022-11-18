import { shikiPlugin } from "@vuepress/plugin-shiki";
import { defineUserConfig } from "vuepress";
import { defaultTheme } from "vuepress";
import { viteBundler } from "vuepress";
import * as path from "path";

export default defineUserConfig({
  locales: {
    "/": {
      lang: "en-US",
      title: "Honey Test Framework",
      description: "Painless E2E Testing for Flutter apps.",
    },
  },
  bundler: viteBundler({}),
  theme: defaultTheme({
    logo: "logo.svg",
    repo: "clickup/honey",
    docsRepo: "clickup/honey",
    docsDir: "docs/docs",
    contributors: true,
    locales: {
      "/": {
        sidebar: [
          {
            text: "TUTORIALS",
            children: ["/tutorials/quickstart.md"],
          },
          {
            text: "CONCEPTS",
            children: [],
          },
          {
            text: "RECIPES",
            children: [],
          },
          {
            text: "SAMPLES",
            link: "https://github.com/clickup/honey/tree/main/examples",
          },
          {
            text: "CHANGELOG",
            link: "https://github.com/clickup/honey/blob/main/honey/CHANGELOG.md",
          },
          {
            text: "CONTRIBUTORS",
            link: "https://github.com/clickup/honey/graphs/contributors",
          },
        ],
      },
    },
    navbar: [
      {
        text: "pub.dev",
        link: "https://pub.dev/packages/honey",
      },
      {
        text: "API",
        link: "https://pub.dev/documentation/honey/latest/honey/honey-library.html",
      },
    ],
    sidebarDepth: 1,
  }),
  markdown: {
    code: {
      lineNumbers: false,
    },
  },
  plugins: [
    [
      shikiPlugin({
        theme: "one-dark-pro",
        langs: [
          "dart",
          "yaml",
          {
            id: "honeytalk",
            scopeName: "source.honey",
            path: path.join(
              __dirname,
              "..",
              "..",
              "..",
              "honey_vscode",
              "honeytalk.tm.json"
            ),
          },
        ],
      }),
    ],
  ],
  head: [
    [
      "link",
      {
        rel: "icon",
        type: "image/png",
        sizes: "256x256",
        href: `/icon-256x256.png`,
      },
    ],
    [
      "link",
      {
        rel: "icon",
        type: "image/png",
        sizes: "512x512",
        href: `/icon-512x512.png`,
      },
    ],
    [
      "link",
      {
        rel: "stylesheet",
        href: "https://fonts.googleapis.com/css2?family=Montserrat:wght@800&display=swap",
      },
    ],
    ["meta", { name: "application-name", content: "Honey Test Framework" }],
    [
      "meta",
      { name: "apple-mobile-web-app-title", content: "Honey Test Framework" },
    ],
    [
      "meta",
      { name: "apple-mobile-web-app-status-bar-style", content: "black" },
    ],
    [
      "script",
      {
        async: "",
        src: "https://www.googletagmanager.com/gtag/js?id=G-0PGSYHHRSN",
      },
    ],
    [
      "script",
      {},
      `window.dataLayer = window.dataLayer || [];
                function gtag(){dataLayer.push(arguments);}
                gtag('js', new Date());
                gtag('config', 'G-0PGSYHHRSN');`,
    ],
    [
      "script",
      {},
      `(function(c,l,a,r,i,t,y){
            c[a]=c[a]||function(){(c[a].q=c[a].q||[]).push(arguments)};
            t=l.createElement(r);t.async=1;t.src="https://www.clarity.ms/tag/"+i;
            y=l.getElementsByTagName(r)[0];y.parentNode.insertBefore(t,y);
          })(window, document, "clarity", "script", "eco4c8cgpc");`,
    ],
  ],
});
