APISENSE® Technical Documentation [![Build Status](https://travis-ci.org/APISENSE/docs.svg?branch=master)](https://travis-ci.org/APISENSE/docs)
=======================

Requirements
------------

This documentation is running on top of [Jekyll](http://jekyllrb.com/). Install it.

	gem install jekyll

Additionnaly it uses [Rouge](https://github.com/jneen/rouge) which is a code snippets highlighter. Install it.

	gem install rouge

Note: Github only supports pygments, rouge is no longer used.

How to run
----------

Github doesn't allow to run custom plugin directly. Using Travis we can build on the branch master everything. All you've to do is to merge _site from master into gh-pages.

How to run
----------

By default the server is running on port 4000, you can change its configuration in the `_config.yml` file and then run it !

	jekyll serve
