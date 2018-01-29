;;; -*- Mode: Lisp; package: cl-user; Syntax: Common-lisp; Base: 10 -*-

(in-package #:common-lisp-user)
(defpackage #:cl-graph-system (:use #:cl #:asdf))
(in-package #:cl-graph-system)

(asdf:defsystem cl-graph-and-metacopy
  :requires (#:cl-graph #:metacopy)
  :components ((:module
                "dev"
                :components ((:file "copying")))))
