;;; -*- Mode: Lisp; package: cl-user; Syntax: Common-lisp; Base: 10 -*-

(in-package #:common-lisp-user)
(defpackage #:cl-graph-system (:use #:cl #:asdf))
(in-package #:cl-graph-system)

(defsystem cl-graph-and-dynamic-classes
  :depends-on (#:cl-graph #:dynamic-classes)
  :components ((:module
                "dev"
                :components
                ((:file "dynamic-classes")))))
