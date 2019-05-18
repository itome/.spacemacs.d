(require 'lsp)

(defgroup lsp-dart-analysis-server nil
  "Dart."
  :group 'lsp-mode
  :tag "Dart")

(defun lsp--dart-analysis-server-command ()
  "Generate LSP startup command."
  `("dart"
    ,(expand-file-name (concat dart-sdk-path "bin/snapshots/analysis_server.dart.snapshot"))
    "--lsp"))

(lsp-register-client
 (make-lsp-client :new-connection
                  (lsp-stdio-connection
                   'lsp--dart-analysis-server-command)
                  :major-modes '(dart-mode)
                  :priority 0
                  :server-id 'dart_analysis_server))

(provide 'lsp-dart-analysis-server)
