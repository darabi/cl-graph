;;; -*- Mode: Lisp; package: cl-user; Syntax: Common-lisp; Base: 10 -*-

(in-package #:common-lisp-user)
(defpackage #:cl-graph-system (:use #:cl #:asdf))
(in-package #:cl-graph-system)

(asdf:defsystem cl-graph-and-cl-graphviz
  :requires (#:cl-graph #:cl-graphviz)
  :components ((:module
                "dev"
                :components
                ((:module "graphviz"
                          :components
                          ((:file "graphviz-support-optional")))))))
