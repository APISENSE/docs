---
layout: post
---

{% for post in site.posts %}

<h2>
<a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
<span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>
</h2>

{{ post.content | strip_html | truncatewords:75}}<br/>
<a href="{{ post.url }}">Read more...</a><br/>
<hr/>
{% endfor %}