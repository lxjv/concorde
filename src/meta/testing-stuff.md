---
title: testing
permalink: /testing
layout: page
eleventyExcludeFromCollections: true
---

heya! welcome to my playground where i test all of the weird links and features i'm not sure are working yet

- [sitemap](/sitemap)

### wellknown etc
- [robots.txt](/robots.txt)
- [security.txt](/.well-known/security.txt)
- [pgp](/.well-known/pgp)
- [webfinger](/.well-known/webfinger)

### all footer quotes

{% for quote in footer %}<blockquote>{{ quote }}</blockquote>{% endfor %}
