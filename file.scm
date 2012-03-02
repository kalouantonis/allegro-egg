; Skipped ALLEGRO_FILE_INTERFACE - used for low-level virtual files
;; (bind-rename ALLEGRO_FILE_INTERFACE file-interface)
;; (bind-rename-pattern "fi_" "")
;; AL_FUNC(ALLEGRO_FILE*, al_create_file_handle, (const ALLEGRO_FILE_INTERFACE *vt, void *userdata));
;; AL_FUNC(ALLEGRO_FILE*, al_fopen_interface, (const ALLEGRO_FILE_INTERFACE *vt, const char *path, const char *mode));
;; AL_FUNC(const ALLEGRO_FILE_INTERFACE *, al_get_new_file_interface, (void));
;; AL_FUNC(void, al_set_new_file_interface, (const ALLEGRO_FILE_INTERFACE *
;;       file_interface));
;; AL_FUNC(void, al_set_standard_file_interface, (void));

(define seek-set (foreign-value "ALLEGRO_SEEK_SET" integer))
(define seek-current (foreign-value "ALLEGRO_SEEK_CUR" integer))
(define seek-end (foreign-value "ALLEGRO_SEEK_END" integer))

(define file-open (foreign-lambda opaque_file "al_fopen" c-string c-string))
(define file-close (foreign-lambda void "al_fclose" opaque_file))
(define file-read (foreign-lambda integer "al_fread" opaque_file blob integer))
(define file-write! (foreign-lambda integer "al_fwrite" opaque_file blob integer))
(define file-flush (foreign-lambda bool "al_fflush" opaque_file))
(define file-tell? (foreign-lambda integer64 "al_ftell" opaque_file))
(define file-seek (foreign-lambda bool "al_fseek" opaque_file integer64 integer))
(define file-eof? (foreign-lambda bool "al_feof" opaque_file))
(define file-error? (foreign-lambda bool "al_ferror" opaque_file))
(define file-clear-error (foreign-lambda void "al_fclearerr" opaque_file))
(define file-unget-chars (foreign-lambda integer "al_fungetc" opaque_file integer))
(define file-size? (foreign-lambda integer64 "al_fsize" opaque_file))

(define file-get-char (foreign-lambda integer "al_fgetc" opaque_file))
(define file-put-char! (foreign-lambda integer "al_fputc" opaque_file integer))
(define file-read-16le (foreign-lambda integer "al_fread16le" opaque_file))
(define file-read-16be (foreign-lambda integer "al_fread16be" opaque_file))
(define file-write-16le! (foreign-lambda integer "al_fwrite16le" opaque_file integer))
(define file-write-16be! (foreign-lambda integer "al_fwrite16be" opaque_file integer))
(define file-read-32le (foreign-lambda integer32 "al_fread32le" opaque_file))
(define file-read-32be (foreign-lambda integer32 "al_fread32be" opaque_file))
(define file-write-32le! (foreign-lambda integer "al_fwrite32le" opaque_file integer32))
(define file-write-32be! (foreign-lambda integer "al_fwrite32be" opaque_file integer32))

(define file-get-string (foreign-lambda c-string "al_fgets" opaque_file blob integer))
(define file-get-utf-string (foreign-lambda opaque_utf_string "al_fget_ustr" opaque_file))
(define file-put-string! (foreign-lambda integer "al_fputs" opaque_file c-string))

(define file-open-fd (foreign-lambda opaque_file "al_fopen_fd" integer c-string))

(define file-userdata (foreign-lambda c-pointer "al_get_file_userdata" opaque_file))

;; AL_FUNC(ALLEGRO_FILE*, al_make_temp_file, (const char *tmpl,
;;       ALLEGRO_PATH **ret_path));



