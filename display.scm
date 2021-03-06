(define new-display-refresh-rate-set! (foreign-lambda void "al_set_new_display_refresh_rate" integer))
(define new-display-flags-set! (foreign-lambda void "al_set_new_display_flags" integer))
(define new-display-refresh-rate (foreign-lambda integer "al_get_new_display_refresh_rate"))
(define new-display-flags (foreign-lambda int "al_get_new_display_flags"))
(define new-display-adapter (foreign-lambda int "al_get_new_display_adapter"))
(define new-display-adapter-set! (foreign-lambda void "al_set_new_display_adapter" int))
(define new-display-window-position (foreign-primitive scheme-object () #<<ENDC
int x, y;
C_word *ptr = C_alloc(C_SIZEOF_LIST(2));

al_get_new_window_position(&x, &y);

C_return (C_list(&ptr, 2, C_fix (x), C_fix (y)));
ENDC
))
(define new-display-window-position-set! (foreign-lambda void "al_set_new_window_position" int int))
(define new-display-option-value (foreign-lambda* int ((display-option opt)) #<<ENDC
int importance;
C_return(al_get_new_display_option(opt, &importance));
ENDC
))
(define new-display-option-importance (foreign-lambda* display-option-importance ((display-option opt)) #<<ENDC
int importance = 0;
al_get_new_display_option(opt, &importance);
C_return(importance);
ENDC
))
(define new-display-option-set! (foreign-lambda void "al_set_new_display_option" display-option int display-option-importance))
(define new-display-reset-options (foreign-lambda void "al_reset_new_display_options"))

(define make-display* (foreign-lambda display "al_create_display" integer integer))
(define (make-display i1 i2)
  (let ((d (make-display* i1 i2)))
    (set-finalizer! d free-display!)
    d))

(define make-display/mode* (foreign-lambda* display ((display-mode mode) (int adapter) (int flags)) "
al_set_new_display_refresh_rate(mode->refresh_rate);
al_set_new_display_adapter(adapter);
al_set_new_display_flags(flags);
C_return(al_create_display(mode->width, mode->height));
"))
(define (make-display/mode m a f)
  (let ((d (make-display/mode* m a f)))
    (set-finalizer! d free-display-mode!)
    d))

(define free-display! (foreign-lambda void "al_destroy_display" display))

(define current-display (foreign-lambda display "al_get_current_display"))

(define display-mode-count (foreign-lambda int "al_get_num_display_modes"))
(define display-mode-init! (foreign-lambda* bool ((display-mode mode) (int idx)) "C_return((al_get_display_mode(idx, mode) != NULL));"))

(define update-display-region! (foreign-lambda void "al_update_display_region" int int int int))
(define compatible-bitmap? (foreign-lambda bool "al_is_compatible_bitmap" bitmap))
(define wait-for-vsync (foreign-lambda bool "al_wait_for_vsync"))
(define draw-pixel (foreign-lambda* void ((float x) (float y) (color c)) "al_draw_pixel(x, y, *c);"))
(define video-adapter-count (foreign-lambda int "al_get_num_video_adapters"))
(define monitor-init! (foreign-lambda* bool ((monitor info) (int adapter)) "C_return(al_get_monitor_info(adapter, info));"))

(define display-option (foreign-lambda int "al_get_display_option" display display-option))
(define display-bitmap-drawing-hold-set! (foreign-lambda void "al_hold_bitmap_drawing" bool))
(define display-bitmap-drawing-held? (foreign-lambda bool "al_is_bitmap_drawing_held"))
(define display-window-title-set! (foreign-lambda void "al_set_window_title" display c-string))
(define display-width (foreign-lambda integer "al_get_display_width" display))
(define display-height (foreign-lambda integer "al_get_display_height" display))
(define display-format (foreign-lambda integer "al_get_display_format" display))
(define display-refresh-rate (foreign-lambda integer "al_get_display_refresh_rate" display))
(define display-flags (foreign-lambda integer "al_get_display_flags" display))
(define display-toggle-flag! (foreign-lambda bool "al_toggle_display_flag" display display-flag bool))
(define display-backbuffer (foreign-lambda bitmap "al_get_backbuffer" display))
(define display-acknowledge-resize (foreign-lambda bool "al_acknowledge_resize" display))
(define display-resize! (foreign-lambda bool "al_resize_display" display int int))
(define display-event-source (foreign-lambda event-source "al_get_display_event_source" display))
(define display-icon-set! (foreign-lambda void "al_set_display_icon" display bitmap))

(define clear-to-color (foreign-lambda* void ((color c)) "al_clear_to_color(*c);"))
(define target-bitmap (foreign-lambda bitmap "al_get_target_bitmap"))
(define target-bitmap-set! (foreign-lambda void "al_set_target_bitmap" bitmap))
(define target-backbuffer-set! (foreign-lambda void "al_set_target_backbuffer" display))

(define flip-display (foreign-lambda void "al_flip_display"))
