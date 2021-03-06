(define make-temp-file* (foreign-lambda file "al_make_temp_file" (const c-string) (c-pointer path)))
(define (make-temp-file str p)
  (let ((f (make-temp-file* str p)))
    (set-finalizer! f free&close-file!)
    f))

(define file-open* (foreign-lambda file "al_fopen" c-string c-string))
(define (file-open str1 str2)
  (let ((f (file-open* str1 str2)))
    (set-finalizer! f free&close-file!)
    f))

(define file-open-fd* (foreign-lambda file "al_fopen_fd" integer c-string))
(define (file-open-fd i str)
  (let ((f (file-open-fd i str)))
    (set-finalizer! f free&close-file!)
    f))

(define free&close-file! (lambda (fl) (file-close! fl) (free! fl)))

(define file-close! (foreign-lambda void "al_fclose" file))
(define file-read! (foreign-lambda integer "al_fread" file blob integer))
(define file-write! (foreign-lambda integer "al_fwrite" file blob integer))
(define file-flush! (foreign-lambda bool "al_fflush" file))
(define file-tell (foreign-lambda integer64 "al_ftell" file))
(define file-seek! (foreign-lambda bool "al_fseek" file integer64 integer))
(define file-eof? (foreign-lambda bool "al_feof" file))
(define file-error? (foreign-lambda bool "al_ferror" file))
(define file-clear-error! (foreign-lambda void "al_fclearerr" file))
(define file-unget-chars! (foreign-lambda integer "al_fungetc" file integer))
(define file-size (foreign-lambda integer64 "al_fsize" file))

(define file-get-char! (foreign-lambda integer "al_fgetc" file))
(define file-put-char! (foreign-lambda integer "al_fputc" file integer))
(define file-read-16le! (foreign-lambda integer "al_fread16le" file))
(define file-read-16be! (foreign-lambda integer "al_fread16be" file))
(define file-write-16le! (foreign-lambda integer "al_fwrite16le" file integer))
(define file-write-16be! (foreign-lambda integer "al_fwrite16be" file integer))
(define file-read-32le! (foreign-lambda integer32 "al_fread32le" file))
(define file-read-32be! (foreign-lambda integer32 "al_fread32be" file))
(define file-write-32le! (foreign-lambda integer "al_fwrite32le" file integer32))
(define file-write-32be! (foreign-lambda integer "al_fwrite32be" file integer32))

(define (file-get-string! f b) ((foreign-lambda c-string "al_fgets" file blob integer) f b (blob-size b)))
(define file-get-utf-string*! (foreign-lambda utf-string "al_fget_ustr" file))
(define (file-get-utf-string f)
  (let ((ustr (file-get-utf-string*! f)))
    (set-finalizer! f free-utf-string!)
    ustr))
(define file-put-string! (foreign-lambda integer "al_fputs" file c-string))

(define file-userdata (foreign-lambda c-pointer "al_get_file_userdata" file))

(define new-file-interface (foreign-lambda file-interface "al_get_new_file_interface"))
(define new-file-interface-set! (foreign-lambda void "al_set_new_file_interface" (const file-interface)))

(define file-interface-open* (foreign-lambda file "al_fopen_interface" (const file-interface) (const c-string) (const c-string)))
(define (file-interface-open fi str1 str2)
  (let ((f (file-interface-open* fi str1 str2)))
    (set-finalizer! f free&close-file!)
    f))

(define make-file-handle* (foreign-lambda file "al_create_file_handle" (const file-interface) c-pointer))
(define (make-file-handle fi ptr)
  (let ((f (make-file-handle* fi ptr)))
    (set-finalizer! f free&close-file!)
    f))
