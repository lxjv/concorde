---
title: Sitemap
permalink: /sitemap
layout: page
eleventyExcludeFromCollections: true
---

Welcome to my slightly terrible site map. This isnt sorted in any way so get your CTRL-F out :D

{% for page in collections.all %}
<a href="{{ page.url }}">{{ page.data.title }}</a>
{% endfor %}