(require 'all-the-icons)
(require 'company-box)

(defun company-box-all-the-icons-setup ()
  (setq company-box-icons-unknown (all-the-icons-material "find_in_page"))
  (setq company-box-icons-yasnippet (all-the-icons-faicon "code"))
  (setq company-box-icons-elisp
        `(,(all-the-icons-faicon "cube" :v-adjust -0.0575 :face 'all-the-icons-blue)
          ,(all-the-icons-faicon "tag" :v-adjust -0.0575 :face 'all-the-icons-orange)
          ,(all-the-icons-faicon "cog" :v-adjust -0.0575 'all-the-icons-green)
          ,(all-the-icons-material "format_paint" :v-adjust -0.2 'all-the-icons-dpink)))
  (setq company-box-icons-lsp
        `(( 1  . ,(all-the-icons-faicon "file-text-o" :v-adjust -0.0575 :face 'all-the-icons-dsilver))     ; Text
          ( 2  . ,(all-the-icons-faicon "cube" :v-adjust -0.0575 :face 'all-the-icons-lorange))            ; Method
          ( 3  . ,(all-the-icons-faicon "cube" :v-adjust -0.0575 :face 'all-the-icons-lblue))              ; Function
          ( 4  . ,(all-the-icons-faicon "cube" :v-adjust -0.0575 :face 'all-the-icons-red))                ; Constructor
          ( 5  . ,(all-the-icons-faicon "tag" :v-adjust -0.0575 :face 'all-the-icons-green))               ; Field
          ( 6  . ,(all-the-icons-faicon "tag" :v-adjust -0.0575 :face 'all-the-icons-lorange))             ; Variable
          ( 7  . ,(all-the-icons-faicon "cog" :v-adjust -0.0575 :face 'all-the-icons-dorange))             ; Class
          ( 8  . ,(all-the-icons-faicon "cogs" :v-adjust -0.0575 :face 'all-the-icons-dgreen))             ; Interface
          ( 9  . ,(all-the-icons-alltheicon "less" :face 'all-the-icons-pink))                             ; Module
          (10  . ,(all-the-icons-faicon "wrench" :v-adjust -0.0575 :face 'all-the-icons-dcyan))            ; Property
          (11  . ,(all-the-icons-faicon "tag" :v-adjust -0.0575 :face 'all-the-icons-dblue))               ; Unit
          (12  . ,(all-the-icons-faicon "tag" :v-adjust -0.0575 :face 'all-the-icons-lred))                ; Value
          (13  . ,(all-the-icons-material "content_copy" :v-adjust -0.2 :face 'all-the-icons-blue-alt))    ; Enum
          (14  . ,(all-the-icons-faicon "tag" :v-adjust -0.0575 :face 'all-the-icons-maroon))              ; Keyword
          (15  . ,(all-the-icons-material "content_paste" :v-adjust -0.2 :face 'all-the-icons-purple))     ; Snippet
          (16  . ,(all-the-icons-material "palette" :v-adjust -0.2 :face 'all-the-icons-lmaroon))          ; Color
          (17  . ,(all-the-icons-faicon "file" :v-adjust -0.0575 :face 'all-the-icons-silver))             ; File
          (18  . ,(all-the-icons-faicon "tag" :v-adjust -0.0575 :face 'all-the-icons-dpurple))             ; Reference
          (19  . ,(all-the-icons-faicon "folder" :v-adjust -0.0575 :face 'all-the-icons-lblue))            ; Folder
          (20  . ,(all-the-icons-faicon "tag" :v-adjust -0.0575 :face 'all-the-icons-dmaroon))             ; EnumMember
          (21  . ,(all-the-icons-faicon "tag" :v-adjust -0.0575 :face 'all-the-icons-dorange))             ; Constant
          (22  . ,(all-the-icons-faicon "cog" :v-adjust -0.0575 :face 'all-the-icons-red-alt))             ; Struct
          (23  . ,(all-the-icons-faicon "bolt" :v-adjust -0.0575 :face 'all-the-icons-lpurple))            ; Event
          (24  . ,(all-the-icons-faicon "tag" :v-adjust -0.0575 :face 'all-the-icons-lsilver))             ; Operator
          (25  . ,(all-the-icons-faicon "cog" :v-adjust -0.0575 :face 'all-the-icons-lblue))               ; TypeParameter
          )))

(provide 'company-box-all-the-icons)
