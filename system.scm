(define system/init (foreign-lambda bool "al_init"))
(define system/install (foreign-lambda bool "al_install_system" integer (function integer ((function void (void))))))
(define system/installed? (foreign-lambda bool "al_is_system_installed"))
(define system/org-name-set! (foreign-lambda void "al_set_org_name" c-string))
(define system/app-name-set! (foreign-lambda void "al_set_app_name" c-string))
(define system/org-name (foreign-lambda c-string "al_get_org_name"))
(define system/app-name (foreign-lambda c-string "al_get_app_name"))
(define system/inhibit-screensaver (foreign-lambda bool "al_inhibit_screensaver" bool))
(define system/driver (foreign-lambda opaque_system "al_get_system_driver"))
(define system/config (foreign-lambda opaque_config "al_get_system_config"))

(define path/resources (foreign-value "ALLEGRO_RESOURCES_PATH" integer))
(define path/temp (foreign-value "ALLEGRO_TEMP_PATH" integer))
(define path/user-data (foreign-value "ALLEGRO_USER_DATA_PATH" integer))
(define path/user-home (foreign-value "ALLEGRO_USER_HOME_PATH" integer))
(define path/settings (foreign-value "ALLEGRO_USER_SETTINGS_PATH" integer))
(define path/documents (foreign-value "ALLEGRO_USER_DOCUMENTS_PATH" integer))
(define path/exe (foreign-value "ALLEGRO_EXENAME_PATH" integer))
(define path/last (foreign-value "ALLEGRO_LAST_PATH" integer))

(define path/standard (foreign-lambda opaque_path "al_get_standard_path" integer))

