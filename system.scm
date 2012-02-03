(bind-opaque-type system (c-pointer (struct ALLEGRO_SYSTEM)))
(bind-opaque-type config (c-pointer (struct ALLEGRO_CONFIG)))
(bind-opaque-type path (c-pointer (struct ALLEGRO_PATH)))

(define init (foreign-lambda bool "al_init"))
(define install-system (foreign-lambda bool "al_install_system" integer (function integer ((function void (void))))))
(define system-installed? (foreign-lambda bool "al_is_system_installed"))
(define org-name-set! (foreign-lambda void "al_set_org_name" c-string))
(define app-name-set! (foreign-lambda void "al_set_app_name" c-string))
(define org-name (foreign-lambda c-string "al_get_org_name"))
(define app-name (foreign-lambda c-string "al_get_app_name"))
(define inhibit-screensaver (foreign-lambda bool "al_inhibit_screensaver" bool))

(define path/resources (foreign-value "ALLEGRO_RESOURCES_PATH" integer))
(define path/temp (foreign-value "ALLEGRO_TEMP_PATH" integer))
(define path/user-data (foreign-value "ALLEGRO_USER_DATA_PATH" integer))
(define path/user-home (foreign-value "ALLEGRO_USER_HOME_PATH" integer))
(define path/settings (foreign-value "ALLEGRO_USER_SETTINGS_PATH" integer))
(define path/documents (foreign-value "ALLEGRO_USER_DOCUMENTS_PATH" integer))
(define path/exe (foreign-value "ALLEGRO_EXENAME_PATH" integer))
(define path/last (foreign-value "ALLEGRO_LAST_PATH" integer))

(define system-driver (foreign-lambda system "al_get_system_driver"))
(define system-config (foreign-lambda config "al_get_system_config"))
(define standard-path (foreign-lambda path "al_get_standard_path" integer))

