;;; Summary: .emacs

;;; Commentary:

;;; This file bootstraps the configuration, based on
;;; Emacs invocation path.

;;; This file is to be simlinked into ~


;;; Code:

;; Enter debugger if an error is signaled during Emacs startup.

;; This works the same as one boots emacs with "--debug-init" every time, except
;; for errors in "init.el" itself, which means, if there's an error in
;; "init.el", "emacs --debug-init" will entering the debugger, while "emacs"
;; will not; however, if there's an error in other files loaded by init.el,
;; both "emacs" and "emacs --debug-init" will entering the debugger. 

(setq debug-on-error t)

;; stack-trace-on-error would just prints a backtrace,
;; while debug-on-error enters the debugger.

;; (setq stack-trace-on-error t)

(cond
 ((string-match "/Applications/emacs/Emacs-purcell.app/Contents/MacOS/" invocation-directory)
  (setq user-emacs-directory "~/.emacs.d.purcell/"))
 ((string-match "/Applications/emacs/Emacs-magnars.app/Contents/MacOS/" invocation-directory)
  (setq user-emacs-directory "~/.emacs.d.magnars/"))
 ((string-match "/Applications/emacs/Emacs-jwiegley.app/Contents/MacOS/" invocation-directory)
  (setq user-emacs-directory "~/.emacs.d.jwiegley/"))
 ((string-match "/Applications/emacs/Emacs-priyadarshan.app/Contents/MacOS/" invocation-directory)
  (setq user-emacs-directory "~/.emacs.d/"))
 ((string-match "/Applications/emacs/Emacs.app/Contents/MacOS/" invocation-directory)
  (setq user-emacs-directory "~/.emacs.d/")))

(load (expand-file-name "init.el" user-emacs-directory))

;;; .emacs ends here
