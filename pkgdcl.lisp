#+xcvb (module ())

(in-package :cl)

(defpackage :inferior-shell
  (:use :cl :fare-utils :fare-matcher :xcvb-driver :named-readtables :fare-mop :alexandria)
  (:shadowing-import-from :xcvb-driver #:emptyp) ;; also in alexandria
  (:shadowing-import-from :fare-matcher #:of-type) ;; also in alexandria
  (:export
   #:run #:run/s #:run/ss #:run/lines
   #:simple-command-line-token #:token-string
   #:process-spec #:command-spec #:pipe-spec
   #:or-spec #:and-spec #:progn-spec #:fork-spec
   #:print-process-spec #:parse-process-spec
   #:command-arguments #:command-redirections
   #:redirection #:file-redirection #:fd-redirection #:close-redirection
   #:! #:- #:< #:> #:<> #:>! #:>> #:>>! #:<& #:>& #:>&! #:>>&!
   #:>& #:>> #:>>& #:pipe #:or #:and #:progn #:fork
   #:zglobcmd #:zglob
   #:*backend*))
