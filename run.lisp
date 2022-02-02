(in-package #:cloud-run)

(defun run ()
  (ht:start (make-instance 'ht:easy-acceptor
                           :port (parse-integer (uiop:getenv "PORT"))))
  (loop do (sleep 5)))
