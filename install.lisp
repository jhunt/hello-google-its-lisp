;;;
;;; install.lisp
;;; ©2022 James Hunt
;;;
;;; This file serves as a LOAD-able entrypoint
;;; for installing all CLOUD-RUN dependencies, via
;;; quicklisp.
;;;
;;; To use it:
;;;
;;;    $ sbcl --load install.lisp
;;;
;;; This ought to be done during a Docker image
;;; build; see ./Dockerfile for details.
;;;

(quicklisp-quickstart:install :path "/opt/quicklisp")
(ql::without-prompting (ql:add-to-init-file))
(ql:quickload :cl-json)
(ql:quickload :hunchentoot)
