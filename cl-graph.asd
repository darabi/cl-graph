;;; -*- Mode: Lisp; package: cl-user; Syntax: Common-lisp; Base: 10 -*-

(in-package #:common-lisp-user)
(defpackage #:cl-graph-system (:use #:cl #:asdf))
(in-package #:cl-graph-system)

(defsystem cl-graph
  :version "0.10.2"
  :author "Gary Warren King <gwking@metabang.com>"
  :maintainer "Gary Warren King <gwking@metabang.com>"
  :licence "MIT Style License"
  :description "Graph manipulation utilities for Common Lisp"
  :components ((:static-file "COPYING")
	       (:module
		"dev"
		:components
		((:file "package")
		 (:file "api"
			:depends-on ("package"))
		 (:file "macros"
			:depends-on ("package"))
		 (:file "graph"
			:depends-on ("api" "macros"))
		 (:file "graph-container"
			:depends-on ("graph"))
		 (:file "graph-matrix"
			:depends-on ("graph"))
		 (:file "graph-algorithms"
			:depends-on ("graph"))
		 #+(or)
		 (:file "dynamic-classes"
			:depends-on ("graph"))
		 (:static-file "notes.text")

		 (:module "graphviz" :depends-on ("graph")
			  :components ((:file "graphviz-support")))))
               (:module
		"website"
		:components
		((:module "source"
			  :components ((:static-file "index.md"))))))
  :in-order-to ((test-op (load-op :cl-graph-test)))
  :perform (test-op :after (op c)
		    (funcall
		      (intern (symbol-name '#:run-tests) :lift)
		      :config :generic))
  :depends-on ((:version :metatilities-base "0.6.0")
	       (:version :cl-containers "0.12.0")
	       :metabang-bind
	       ))

(defmethod operation-done-p
           ((o test-op) (c (eql (find-system 'cl-graph))))
  (values nil))
