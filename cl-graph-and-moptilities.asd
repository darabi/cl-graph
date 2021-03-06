;;; -*- Mode: Lisp; package: cl-user; Syntax: Common-lisp; Base: 10 -*-

(in-package #:common-lisp-user)
(defpackage #:cl-graph-system (:use #:cl #:asdf))
(in-package #:cl-graph-system)

(defsystem cl-graph-and-moptilities
  :requires (#:cl-graph #:moptilities)
  :components ((:module
                "dev"
                :components
                ((:file "subgraph-containing")))))
