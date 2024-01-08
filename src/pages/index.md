---
title: Home
permalink: /
layout: base
---

Hi! I'm Laker Turner. I'm an 18 year old student from the UK, writer, amateur programmer and leather jacket enthusiast.

<img class="u-photo" src="/cdn/image/hat.jpg" height=80 width=80>

Feel free to walk around and see what's going on, maybe [check out my blog](/blog)?

{% for post in collections.post reversed | first %}
<div class="postlist-item">
    <h2><a href="{{ post.url }}">{{ post.data.title }}</a></h2>
    <p>{{ post.date | postDate }} - {{ post.data.subtitle }}</p>
</div>
{% endfor %}