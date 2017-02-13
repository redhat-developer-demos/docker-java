#!/bin/bash

asciidoctor -a source-highlighter=coderay -a imagesdir=chapters -a data-uri! readme.adoc
open readme.html
