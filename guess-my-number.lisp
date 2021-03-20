;;;; guess-my-number
;;; smaller
;; start-over
					; bigger
#|
name
|#

(format t "Hello world~%")

(print "What's your name")

(defvar *name* (read))

(defun hello-you (*name*)
  (format t "Hello ~a! ~%" *name*)
  )

(setq *print-case* :capitalize)

(hello-you *name*)
(defparameter *small* 1)
(defparameter *big* 100)
;; (guess-my-number)
(defun guess-my-number ()
  (ash (+ *small* *big*) -1))
;; (smaller)
(defun smaller ()
  (setf *big* (1- (guess-my-number)))
  (guess-my-number))
;; (bigger)
(defun bigger ()
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number))
;; (start-over)
(defun start-over ()
  (defparameter *small* 1)
  (defparameter *big* 100)
  (guess-my-number))
