(bind-rename ALLEGRO_FILE_INTERFACE file-interface)
(bind-rename/pattern "fi_" "")
(bind* #<<ENDC
#ifdef CHICKEN
typedef struct ALLEGRO_FILE_INTERFACE
{
//        void *fi_fopen(const char *path, const char *mode);
} ALLEGRO_FILE_INTERFACE;
#endif
ENDC
)

;; /* Type: ALLEGRO_FILE_INTERFACE
;;  */
;; typedef struct ALLEGRO_FILE_INTERFACE
;; {
;;    AL_METHOD(void *,  fi_fopen, (const char *path, const char *mode));
;;    AL_METHOD(void,    fi_fclose, (ALLEGRO_FILE *handle));
;;    AL_METHOD(size_t,  fi_fread, (ALLEGRO_FILE *f, void *ptr, size_t size));
;;    AL_METHOD(size_t,  fi_fwrite, (ALLEGRO_FILE *f, const void *ptr, size_t size));
;;    AL_METHOD(bool,    fi_fflush, (ALLEGRO_FILE *f));
;;    AL_METHOD(int64_t, fi_ftell, (ALLEGRO_FILE *f));
;;    AL_METHOD(bool,    fi_fseek, (ALLEGRO_FILE *f, int64_t offset, int whence));
;;    AL_METHOD(bool,    fi_feof, (ALLEGRO_FILE *f));
;;    AL_METHOD(bool,    fi_ferror, (ALLEGRO_FILE *f));
;;    AL_METHOD(void,    fi_fclearerr, (ALLEGRO_FILE *f));
;;    AL_METHOD(int,     fi_fungetc, (ALLEGRO_FILE *f, int c));
;;    AL_METHOD(off_t,   fi_fsize, (ALLEGRO_FILE *f));
;; } ALLEGRO_FILE_INTERFACE;


;; /* Enum: ALLEGRO_SEEK
;;  */
;; typedef enum ALLEGRO_SEEK
;; {
;;    ALLEGRO_SEEK_SET = 0,
;;    ALLEGRO_SEEK_CUR,
;;    ALLEGRO_SEEK_END
;; } ALLEGRO_SEEK;


;; /* The basic operations. */
;; AL_FUNC(ALLEGRO_FILE*, al_fopen, (const char *path, const char *mode));
;; AL_FUNC(ALLEGRO_FILE*, al_fopen_interface, (const ALLEGRO_FILE_INTERFACE *vt, const char *path, const char *mode));
;; AL_FUNC(ALLEGRO_FILE*, al_create_file_handle, (const ALLEGRO_FILE_INTERFACE *vt, void *userdata));
;; AL_FUNC(void, al_fclose, (ALLEGRO_FILE *f));
;; AL_FUNC(size_t, al_fread, (ALLEGRO_FILE *f, void *ptr, size_t size));
;; AL_FUNC(size_t, al_fwrite, (ALLEGRO_FILE *f, const void *ptr, size_t size));
;; AL_FUNC(bool, al_fflush, (ALLEGRO_FILE *f));
;; AL_FUNC(int64_t, al_ftell, (ALLEGRO_FILE *f));
;; AL_FUNC(bool, al_fseek, (ALLEGRO_FILE *f, int64_t offset, int whence));
;; AL_FUNC(bool, al_feof, (ALLEGRO_FILE *f));
;; AL_FUNC(bool, al_ferror, (ALLEGRO_FILE *f));
;; AL_FUNC(void, al_fclearerr, (ALLEGRO_FILE *f));
;; AL_FUNC(int, al_fungetc, (ALLEGRO_FILE *f, int c));
;; AL_FUNC(int64_t, al_fsize, (ALLEGRO_FILE *f));

;; /* Convenience functions. */
;; AL_FUNC(int, al_fgetc, (ALLEGRO_FILE *f));
;; AL_FUNC(int, al_fputc, (ALLEGRO_FILE *f, int c));
;; AL_FUNC(int16_t, al_fread16le, (ALLEGRO_FILE *f));
;; AL_FUNC(int16_t, al_fread16be, (ALLEGRO_FILE *f));
;; AL_FUNC(size_t, al_fwrite16le, (ALLEGRO_FILE *f, int16_t w));
;; AL_FUNC(size_t, al_fwrite16be, (ALLEGRO_FILE *f, int16_t w));
;; AL_FUNC(int32_t, al_fread32le, (ALLEGRO_FILE *f));
;; AL_FUNC(int32_t, al_fread32be, (ALLEGRO_FILE *f));
;; AL_FUNC(size_t, al_fwrite32le, (ALLEGRO_FILE *f, int32_t l));
;; AL_FUNC(size_t, al_fwrite32be, (ALLEGRO_FILE *f, int32_t l));
;; AL_FUNC(char*, al_fgets, (ALLEGRO_FILE *f, char * const p, size_t max));
;; AL_FUNC(ALLEGRO_USTR *, al_fget_ustr, (ALLEGRO_FILE *f));
;; AL_FUNC(int, al_fputs, (ALLEGRO_FILE *f, const char *p));

;; /* Specific to stdio backend. */
;; AL_FUNC(ALLEGRO_FILE*, al_fopen_fd, (int fd, const char *mode));
;; AL_FUNC(ALLEGRO_FILE*, al_make_temp_file, (const char *tmpl,
;;       ALLEGRO_PATH **ret_path));

;; /* Thread-local state. */
;; AL_FUNC(const ALLEGRO_FILE_INTERFACE *, al_get_new_file_interface, (void));
;; AL_FUNC(void, al_set_new_file_interface, (const ALLEGRO_FILE_INTERFACE *
;;       file_interface));
;; AL_FUNC(void, al_set_standard_file_interface, (void));

;; /* ALLEGRO_FILE field accessors */
;; AL_FUNC(void *, al_get_file_userdata, (ALLEGRO_FILE *f));
