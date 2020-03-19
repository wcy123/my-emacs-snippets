;;; wcy123-snippets.el --- Collection of yasnippet snippets

;; Copyright (C) 2017 Wang Chunye

;; Author: Wang Chunye <wcy123@gmail.com>
;; Keywords: snippets
;; Version: 0.2
;; Package-Requires: ((yasnippet "0.8.0"))
;; Keywords: convenience, snippets
;;; Code:

(require 'yasnippet)

(defconst wcy123-snippets-dir
  (expand-file-name
   "snippets"
   (file-name-directory
    ;; Copied from ‘f-this-file’ from f.el.
    (cond
     (load-in-progress load-file-name)
     ((and (boundp 'byte-compile-current-file) byte-compile-current-file)
      byte-compile-current-file)
     (:else (buffer-file-name))))))
;;;###autoload
(defun wcy123-snippets-initialize ()
  (add-to-list 'yas-snippet-dirs 'wcy123-snippets-dir t)
  (yas-load-directory wcy123-snippets-dir t))
(eval-after-load 'yasnippet
   '(wcy123-snippets-initialize))
(provide 'wcy123-snippets)

;;; wcy123-snippets.el ends here
