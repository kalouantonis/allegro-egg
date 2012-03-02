(define make-timer (foreign-lambda opaque_timer "al_create_timer" double))
(define free-timer (foreign-lambda void "al_destroy_timer" opaque_timer))

(define timer-usec->sec (foreign-lambda* double ((double x)) "C_return(ALLEGRO_USECS_TO_SECS(x));"))
(define timer-msec->sec (foreign-lambda* double ((double x)) "C_return(ALLEGRO_MSECS_TO_SECS(x));"))
(define timer-bps->sec (foreign-lambda* double ((double x)) "C_return(ALLEGRO_BPS_TO_SECS(x));"))
(define timer-bpm->sec (foreign-lambda* double ((double x)) "C_return(ALLEGRO_BPM_TO_SECS(x));"))

(define timer-start (foreign-lambda void "al_start_timer" opaque_timer))
(define timer-stop (foreign-lambda void "al_stop_timer" opaque_timer))
(define timer-started? (foreign-lambda bool "al_get_timer_started" opaque_timer))
(define timer-speed (foreign-lambda double "al_get_timer_speed" opaque_timer))
(define timer-speed-set! (foreign-lambda void "al_set_timer_speed" opaque_timer double))
(define timer-count (foreign-lambda integer64 "al_get_timer_count" opaque_timer))
(define timer-count-set! (foreign-lambda void "al_set_timer_count" opaque_timer integer64))
(define timer-count-add! (foreign-lambda void "al_add_timer_count" opaque_timer integer64))
(define timer-source (foreign-lambda opaque_event_source "al_get_timer_event_source" opaque_timer))
