;;; -*- Mode: Lisp; package: cl-user; Syntax: Common-lisp; Base: 10 -*-

(in-package #:common-lisp-user)
(defpackage #:cl-graph-system (:use #:cl #:asdf))
(in-package #:cl-graph-system)

(defsystem cl-graph-and-cl-variates
  :depends-on
  (#:cl-graph #:cl-variates)
  :components
  ((:module "dev" :components ((:file "graph-and-variates") (:file "graph-generation" :depends-on ("graph-and-variates"))))))
