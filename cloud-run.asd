#|
 | cloud-run.asd
 | ...
 | © 2022 James Hunt
 | 02 Feb 2022
 |#
(let ((me "James Hunt <james@jameshunt.us>"))
  (asdf:defsystem #:cloud-run
    :version "0.0.1" :license "mit"
    :author me :maintainer me
    :description "..."
    :homepage "https://jameshunt.us/p/cloud-run"
    :serial t
    :depends-on (:cl-json)
    :components ((:file "package")
                 (:file "utilities")
                 (:file "ops"))))
