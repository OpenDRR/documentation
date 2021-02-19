---
altLangPrefix: index
authorName: Natural Resources Canada
authorUrl:
contentTitle:
  en: OpenDRR Documentation
  fr: Documentation d'OpenDRR
dateModified: 2021-02-19
description:
  en: Documentation
  fr: Documentation
noContentTitle: true
pageclass: wb-prettify all-pre
subject:
  en: [GV Government and Politics, Government services]
  fr: [GV Gouvernement et vie politique, Services gouvernementaux]
title: OpenDRR - Canada.ca
---

# {{ page.contentTitle.en }}

_[Note: This page is currently a work-in-progress proof-of-concept.]_

Welcome to the OpenDRR documentation site. Here you will find research papers about the OpenDRR platform.

## Research Papers

* [A Federated OpenDRR Platform to Support Disaster Resilience Planning in Canada: High Level Requirements](../docs/opendrr-platform.html)

* For comparison:
    * [The same document rendered with plain Asciidoctor](../docs/opendrr-platform-asciidoctor.html)
    * [The same document rendered by GitHub](https://github.com/OpenDRR/documentation/blob/master/docs/opendrr-platform.adoc)


{% if false %}

{{page.description.en}}

<ul>
  {% for page in site.pages %}
  {% if page.path contains 'en/data' %}
    <li>
      <a href="{{ site.baseurl }}{{ page.url }}">{{ page.contentTitle.en }}</a>
    </li>
    {% endif %}
  {% endfor %}
</ul>

{% endif %}
