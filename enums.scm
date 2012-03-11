(define-foreign-enum-type (seek-flag int)
  (seek-flag->int int->seek-flag)
  ((set) ALLEGRO_SEEK_SET)
  ((current) ALLEGRO_SEEK_CUR)
  ((end) ALLEGRO_SEEK_END))

(define-foreign-enum-type (mixer-quality int)
  (mixer-quality->int int->mixer-quality)
  ((point) ALLEGRO_MIXER_QUALITY_POINT)
  ((linear) ALLEGRO_MIXER_QUALITY_LINEAR))

(define-foreign-enum-type (playmode int)
  (playmode->int int->playmode)
  ((once) ALLEGRO_PLAYMODE_ONCE)
  ((loop) ALLEGRO_PLAYMODE_LOOP)
  ((bidrectional) ALLEGRO_PLAYMODE_BIDIR))

(define-foreign-enum-type (channel-configuration int)
  (channel-configuration->int int->channel-configuration)
  ((one) ALLEGRO_CHANNEL_CONF_1)
  ((two) ALLEGRO_CHANNEL_CONF_2)
  ((three) ALLEGRO_CHANNEL_CONF_3)
  ((four) ALLEGRO_CHANNEL_CONF_4)
  ((five-one) ALLEGRO_CHANNEL_CONF_5_1)
  ((six-one) ALLEGRO_CHANNEL_CONF_6_1)
  ((seven-one) ALLEGRO_CHANNEL_CONF_7_1))

(define-foreign-enum-type (audio-depth int)
  (audio-depth->int int->audio-depth)
  ((int8) ALLEGRO_AUDIO_DEPTH_INT8)
  ((int16) ALLEGRO_AUDIO_DEPTH_INT16)
  ((int24) ALLEGRO_AUDIO_DEPTH_INT24)
  ((float32) ALLEGRO_AUDIO_DEPTH_FLOAT32)
  ((unsigned) ALLEGRO_AUDIO_DEPTH_UNSIGNED)
  ((uint8) ALLEGRO_AUDIO_DEPTH_UINT8)
  ((uint16) ALLEGRO_AUDIO_DEPTH_UINT16)
  ((uint24) ALLEGRO_AUDIO_DEPTH_UINT24))

(define-foreign-enum-type (primitive-type int)
  (primitive-type->int int->primitive-type)
  ((line-list) ALLEGRO_PRIM_LINE_LIST)
  ((line-strip) ALLEGRO_PRIM_LINE_STRIP)
  ((line-loop) ALLEGRO_PRIM_LINE_LOOP)
  ((triangle-list) ALLEGRO_PRIM_TRIANGLE_STRIP)
  ((triangle-strip) ALLEGRO_PRIM_TRIANGLE_STRIP)
  ((point-list) ALLEGRO_PRIM_POINT_LIST))

(define-foreign-enum-type (primitive-attribute int)
  (primitive-attribute->int int->primitive-attribute)
  ((position) ALLEGRO_PRIM_POSITION)
  ((color) ALLEGRO_PRIM_COLOR_ATTR)
  ((texture-coordinate) ALLEGRO_PRIM_TEX_COORD)
  ((texture-pixel-coordinate) ALLEGRO_PRIM_TEX_COORD_PIXEL))

(define-foreign-enum-type (primitive-storage int)
  (primitive-storage->int int->primitive-storage)
  ((float-2) ALLEGRO_PRIM_FLOAT_2)
  ((float-3) ALLEGRO_PRIM_FLOAT_3)
  ((short-2) ALLEGRO_PRIM_SHORT_2))

(define-foreign-enum-type (gl-variant int)
  (gl-variant->int int->gl-variant)
  ((opengl) ALLEGRO_DESKTOP_OPENGL)
  ((opengl-es) ALLEGRO_OPENGL_ES))

(define-foreign-enum-type (font-align int)
  (font-align->int int->font-align)
  ((left) ALLEGRO_ALIGN_LEFT)
  ((centre) ALLEGRO_ALIGN_CENTRE)
  ((right) ALLEGRO_ALIGN_RIGHT))

(define-foreign-enum-type (cursor-type int)
  (cursor-type->int int->cursor-type)
  ((none) ALLEGRO_SYSTEM_MOUSE_CURSOR_NONE)
  ((default) ALLEGRO_SYSTEM_MOUSE_CURSOR_DEFAULT)
  ((arrow) ALLEGRO_SYSTEM_MOUSE_CURSOR_ARROW)
  ((busy) ALLEGRO_SYSTEM_MOUSE_CURSOR_BUSY)
  ((question) ALLEGRO_SYSTEM_MOUSE_CURSOR_QUESTION)
  ((edit) ALLEGRO_SYSTEM_MOUSE_CURSOR_EDIT)
  ((move) ALLEGRO_SYSTEM_MOUSE_CURSOR_MOVE)
  ((resize-north) ALLEGRO_SYSTEM_MOUSE_CURSOR_RESIZE_N)
  ((resize-west) ALLEGRO_SYSTEM_MOUSE_CURSOR_RESIZE_W)
  ((resize-south) ALLEGRO_SYSTEM_MOUSE_CURSOR_RESIZE_S)
  ((resize-east) ALLEGRO_SYSTEM_MOUSE_CURSOR_RESIZE_E)
  ((resize-northwest) ALLEGRO_SYSTEM_MOUSE_CURSOR_RESIZE_NW)
  ((resize-southwest) ALLEGRO_SYSTEM_MOUSE_CURSOR_RESIZE_SW)
  ((resize-southeast) ALLEGRO_SYSTEM_MOUSE_CURSOR_RESIZE_SE)
  ((resize-northeast) ALLEGRO_SYSTEM_MOUSE_CURSOR_RESIZE_NE)
  ((progress) ALLEGRO_SYSTEM_MOUSE_CURSOR_PROGRESS)
  ((precision) ALLEGRO_SYSTEM_MOUSE_CURSOR_PRECISION)
  ((link) ALLEGRO_SYSTEM_MOUSE_CURSOR_LINK)
  ((alt-select) ALLEGRO_SYSTEM_MOUSE_CURSOR_ALT_SELECT)
  ((unavailable) ALLEGRO_SYSTEM_MOUSE_CURSOR_UNAVAILABLE))

(define-foreign-enum-type (system-path int)
  (system-path->int int->system-path)
  ((resources-path) ALLEGRO_RESOURCES_PATH)
  ((temp-path) ALLEGRO_TEMP_PATH)
  ((user-data-path) ALLEGRO_USER_DATA_PATH)
  ((user-home-path) ALLEGRO_USER_HOME_PATH)
  ((user-settings-path) ALLEGRO_USER_SETTINGS_PATH)
  ((user-documents-path) ALLEGRO_USER_DOCUMENTS_PATH)
  ((exename-path) ALLEGRO_EXENAME_PATH)
  ((last-path) ALLEGRO_LAST_PATH))

(define-foreign-enum-type (state-flag int)
  (state-flag->int int->state-flag)
  ((new-display-parameters) ALLEGRO_STATE_NEW_DISPLAY_PARAMETERS)
  ((new-bitmap-parameters) ALLEGRO_STATE_NEW_BITMAP_PARAMETERS)
  ((display) ALLEGRO_STATE_DISPLAY)
  ((target-bitmap) ALLEGRO_STATE_TARGET_BITMAP)
  ((blender) ALLEGRO_STATE_BLENDER)
  ((new-file-interface) ALLEGRO_STATE_NEW_FILE_INTERFACE)
  ((transform) ALLEGRO_STATE_TRANSFORM)
  ((bitmap) ALLEGRO_STATE_BITMAP)
  ((all) ALLEGRO_STATE_ALL))

(define-foreign-enum-type (file-mode int)
  (file-mode->int int->file-mode)
  ((read) ALLEGRO_FILEMODE_READ)
  ((write) ALLEGRO_FILEMODE_WRITE)
  ((execute) ALLEGRO_FILEMODE_EXECUTE)
  ((hidden) ALLEGRO_FILEMODE_HIDDEN)
  ((file) ALLEGRO_FILEMODE_ISFILE)
  ((directory) ALLEGRO_FILEMODE_ISDIR))

(define-foreign-enum-type (pixel-format int)
  (pixel-format->int int->pixel-format)
  ((any) ALLEGRO_PIXEL_FORMAT_ANY)
  ((any-no-alpha) ALLEGRO_PIXEL_FORMAT_ANY_NO_ALPHA)
  ((any-with-alpha) ALLEGRO_PIXEL_FORMAT_ANY_WITH_ALPHA)
  ((any-15-no-alpha) ALLEGRO_PIXEL_FORMAT_ANY_15_NO_ALPHA)
  ((any-16-no-alpha) ALLEGRO_PIXEL_FORMAT_ANY_16_NO_ALPHA)
  ((any-16-with-alpha) ALLEGRO_PIXEL_FORMAT_ANY_16_WITH_ALPHA)
  ((any-24-no-alpha) ALLEGRO_PIXEL_FORMAT_ANY_24_NO_ALPHA)
  ((any-32-no-alpha) ALLEGRO_PIXEL_FORMAT_ANY_32_NO_ALPHA)
  ((any-32-with-alpha) ALLEGRO_PIXEL_FORMAT_ANY_32_WITH_ALPHA)
  ((argb-8888) ALLEGRO_PIXEL_FORMAT_ARGB_8888)
  ((rgba-8888) ALLEGRO_PIXEL_FORMAT_RGBA_8888)
  ((argb-4444) ALLEGRO_PIXEL_FORMAT_ARGB_4444)
  ((rgb-888) ALLEGRO_PIXEL_FORMAT_RGB_888)
  ((rgb-565) ALLEGRO_PIXEL_FORMAT_RGB_565)
  ((rgb-555) ALLEGRO_PIXEL_FORMAT_RGB_555)
  ((rgba-5551) ALLEGRO_PIXEL_FORMAT_RGBA_5551)
  ((argb-1555) ALLEGRO_PIXEL_FORMAT_ARGB_1555)
  ((abgr-8888) ALLEGRO_PIXEL_FORMAT_ABGR_8888)
  ((xbgr-8888) ALLEGRO_PIXEL_FORMAT_XBGR_8888)
  ((bgr-888) ALLEGRO_PIXEL_FORMAT_BGR_888)
  ((bgr-565) ALLEGRO_PIXEL_FORMAT_BGR_565)
  ((bgr-555) ALLEGRO_PIXEL_FORMAT_BGR_555)
  ((rgbx-8888) ALLEGRO_PIXEL_FORMAT_RGBX_8888)
  ((xrgb-8888) ALLEGRO_PIXEL_FORMAT_XRGB_8888)
  ((abgr-f32) ALLEGRO_PIXEL_FORMAT_ABGR_F32)
  ((abgr-8888-le) ALLEGRO_PIXEL_FORMAT_ABGR_8888_LE)
  ((rgba-4444) ALLEGRO_PIXEL_FORMAT_RGBA_4444))

(define-foreign-enum-type (bitmap-flag int)
  (bitmap-flag->int int->bitmap-flag)
  ((memory-bitmap) ALLEGRO_MEMORY_BITMAP)
  ((keep-bitmap-format) ALLEGRO_KEEP_BITMAP_FORMAT)
  ((force-locking) ALLEGRO_FORCE_LOCKING)
  ((no-preserve-texture) ALLEGRO_NO_PRESERVE_TEXTURE)
  ((alpha-test) ALLEGRO_ALPHA_TEST)
  ((min-linear) ALLEGRO_MIN_LINEAR)
  ((mag-linear) ALLEGRO_MAG_LINEAR)
  ((mipmap) ALLEGRO_MIPMAP)
  ((no-premultiplied-alpha) ALLEGRO_NO_PREMULTIPLIED_ALPHA)
  ((video-bitmap) ALLEGRO_VIDEO_BITMAP))

(define-foreign-enum-type (blitting-flag int)
   (blitting-flag->int int->blitting-flag)
   ((flip-horizontal) ALLEGRO_FLIP_HORIZONTAL)
   ((flip-vertical) ALLEGRO_FLIP_VERTICAL))

(define-foreign-enum-type (locking-flag int)
  (locking-flag->int int->locking-flag)
  ((read-write) ALLEGRO_LOCK_READWRITE)
  ((read-only) ALLEGRO_LOCK_READONLY)
  ((write-only) ALLEGRO_LOCK_WRITEONLY))

(define-foreign-enum-type (blending-mode int)
  (blending-mode->int int->blending-mode)
  ((zero) ALLEGRO_ZERO)
  ((one) ALLEGRO_ONE)
  ((alpha) ALLEGRO_ALPHA)
  ((inverse-alpha) ALLEGRO_INVERSE_ALPHA))

(define-foreign-enum-type (blend-operation int)
  (blend-operation->int int->blend-operation)
  ((add) ALLEGRO_ADD)
  ((source-minus-destination) ALLEGRO_SRC_MINUS_DEST)
  ((destination-minus-source) ALLEGRO_DEST_MINUS_SRC))

(define-foreign-enum-type (display-flag int)
  (display-flag->int int->display-flag)
  ((windowed) ALLEGRO_WINDOWED)
  ((fullscreen) ALLEGRO_FULLSCREEN)
  ((opengl) ALLEGRO_OPENGL)
  ((direct3d-internal) ALLEGRO_DIRECT3D_INTERNAL)
  ((resizable) ALLEGRO_RESIZABLE)
  ((noframe) ALLEGRO_NOFRAME)
  ((generate-expose-events) ALLEGRO_GENERATE_EXPOSE_EVENTS)
  ((opengl3) ALLEGRO_OPENGL_3_0)
  ((opengl-forward-compatible) ALLEGRO_OPENGL_FORWARD_COMPATIBLE)
  ((fullscreen-window) ALLEGRO_FULLSCREEN_WINDOW)
  ((minimized) ALLEGRO_MINIMIZED))

(define-foreign-enum-type (display-option int)
  (display-option->int int->display-option)
  ((red-size) ALLEGRO_RED_SIZE)
  ((green-size) ALLEGRO_GREEN_SIZE)
  ((blue-size) ALLEGRO_BLUE_SIZE)
  ((alpha-size) ALLEGRO_ALPHA_SIZE)
  ((red-shift) ALLEGRO_RED_SHIFT)
  ((green-shift) ALLEGRO_GREEN_SHIFT)
  ((blue-shift) ALLEGRO_BLUE_SHIFT)
  ((alpha-shift) ALLEGRO_ALPHA_SHIFT)
  ((acc-red-size) ALLEGRO_ACC_RED_SIZE)
  ((acc-green-size) ALLEGRO_ACC_GREEN_SIZE)
  ((acc-blue-size) ALLEGRO_ACC_BLUE_SIZE)
  ((acc-alpha-size) ALLEGRO_ACC_ALPHA_SIZE)
  ((stereo) ALLEGRO_STEREO)
  ((aux-buffers) ALLEGRO_AUX_BUFFERS)
  ((color-size) ALLEGRO_COLOR_SIZE)
  ((depth-size) ALLEGRO_DEPTH_SIZE)
  ((stencil-size) ALLEGRO_STENCIL_SIZE)
  ((sample-buffers) ALLEGRO_SAMPLE_BUFFERS)
  ((samples) ALLEGRO_SAMPLES)
  ((render-method) ALLEGRO_RENDER_METHOD)
  ((float-color) ALLEGRO_FLOAT_COLOR)
  ((float-depth) ALLEGRO_FLOAT_DEPTH)
  ((single-buffer) ALLEGRO_SINGLE_BUFFER)
  ((swap-method) ALLEGRO_SWAP_METHOD)
  ((compatible-display) ALLEGRO_COMPATIBLE_DISPLAY)
  ((update-display-region) ALLEGRO_UPDATE_DISPLAY_REGION)
  ((vsync) ALLEGRO_VSYNC)
  ((max-bitmap-size) ALLEGRO_MAX_BITMAP_SIZE)
  ((support-npot-bitmap) ALLEGRO_SUPPORT_NPOT_BITMAP)
  ((can-draw-into-bitmap) ALLEGRO_CAN_DRAW_INTO_BITMAP)
  ((support-separate-alpha) ALLEGRO_SUPPORT_SEPARATE_ALPHA))

(define-foreign-enum-type (display-option-importance int)
  (display-default->int int->display-default)
  ((dont-care) ALLEGRO_DONTCARE)
  ((require) ALLEGRO_REQUIRE)
  ((suggest) ALLEGRO_SUGGEST))

(define-foreign-enum-type (display-orientation int)
  (display-orientation->int int->display-orientation)
  ((degrees-0) ALLEGRO_DISPLAY_ORIENTATION_0_DEGREES)
  ((degrees-90) ALLEGRO_DISPLAY_ORIENTATION_90_DEGREES)
  ((degrees-180) ALLEGRO_DISPLAY_ORIENTATION_180_DEGREES)
  ((degrees-270) ALLEGRO_DISPLAY_ORIENTATION_270_DEGREES)
  ((face-up) ALLEGRO_DISPLAY_ORIENTATION_FACE_UP)
  ((face-down) ALLEGRO_DISPLAY_ORIENTATION_FACE_DOWN))

(define-foreign-enum-type (joystick-flag int)
  (joystick-flag->int int->joystick-flag)
  ((digital) ALLEGRO_JOYFLAG_DIGITAL)
  ((analog) ALLEGRO_JOYFLAG_ANALOGUE))

(define-foreign-enum-type (event-type int)
  (event-type->int int->event-type)
  ((joystick-axis) ALLEGRO_EVENT_JOYSTICK_AXIS)
  ((joystick-button-down) ALLEGRO_EVENT_JOYSTICK_BUTTON_DOWN)
  ((joystick-button-up) ALLEGRO_EVENT_JOYSTICK_BUTTON_UP)
  ((joystick-configuration) ALLEGRO_EVENT_JOYSTICK_CONFIGURATION)
  
  ((key-down) ALLEGRO_EVENT_KEY_DOWN)
  ((key-char) ALLEGRO_EVENT_KEY_CHAR)
  ((key-up) ALLEGRO_EVENT_KEY_UP)

  ((mouse-axes) ALLEGRO_EVENT_MOUSE_AXES)
  ((mouse-button-down) ALLEGRO_EVENT_MOUSE_BUTTON_DOWN)
  ((mouse-button-up) ALLEGRO_EVENT_MOUSE_BUTTON_UP)
  ((mouse-enter-display) ALLEGRO_EVENT_MOUSE_ENTER_DISPLAY)
  ((mouse-leave-display) ALLEGRO_EVENT_MOUSE_LEAVE_DISPLAY)
  ((mouse-warped) ALLEGRO_EVENT_MOUSE_WARPED)

  ((timer) ALLEGRO_EVENT_TIMER)
  
  ((display-expose) ALLEGRO_EVENT_DISPLAY_EXPOSE)
  ((display-resize) ALLEGRO_EVENT_DISPLAY_RESIZE)
  ((display-close) ALLEGRO_EVENT_DISPLAY_CLOSE)
  ((display-lost) ALLEGRO_EVENT_DISPLAY_LOST)
  ((display-found) ALLEGRO_EVENT_DISPLAY_FOUND)
  ((display-switch-in) ALLEGRO_EVENT_DISPLAY_SWITCH_IN)
  ((display-switch-out) ALLEGRO_EVENT_DISPLAY_SWITCH_OUT)
  ((display-orientation) ALLEGRO_EVENT_DISPLAY_ORIENTATION)

  ((audio-stream-fragment) ALLEGRO_EVENT_AUDIO_STREAM_FRAGMENT)
  ((audio-stream-finished) ALLEGRO_EVENT_AUDIO_STREAM_FINISHED))

(define-foreign-enum-type (key int)
  (key->int int->key)

  ((a key-a) ALLEGRO_KEY_A)
  ((b key-b) ALLEGRO_KEY_B)
  ((c key-c) ALLEGRO_KEY_C)
  ((d key-d) ALLEGRO_KEY_D)
  ((e key-e) ALLEGRO_KEY_E)
  ((f key-f) ALLEGRO_KEY_F)
  ((g key-g) ALLEGRO_KEY_G)
  ((h key-h) ALLEGRO_KEY_H)
  ((i key-i) ALLEGRO_KEY_I)
  ((j key-j) ALLEGRO_KEY_J)
  ((k key-k) ALLEGRO_KEY_K)
  ((l key-l) ALLEGRO_KEY_L)
  ((m key-m) ALLEGRO_KEY_M)
  ((n key-n) ALLEGRO_KEY_N)
  ((o key-o) ALLEGRO_KEY_O)
  ((p key-p) ALLEGRO_KEY_P)
  ((q key-q) ALLEGRO_KEY_Q)
  ((r key-r) ALLEGRO_KEY_R)
  ((s key-s) ALLEGRO_KEY_S)
  ((t key-t) ALLEGRO_KEY_T)
  ((u key-u) ALLEGRO_KEY_U)
  ((v key-v) ALLEGRO_KEY_V)
  ((w key-w) ALLEGRO_KEY_W)
  ((x key-x) ALLEGRO_KEY_X)
  ((y key-y) ALLEGRO_KEY_Y)
  ((z key-z) ALLEGRO_KEY_Z)

  ((one key-1) ALLEGRO_KEY_1)
  ((two key-2) ALLEGRO_KEY_2)
  ((three key-3) ALLEGRO_KEY_3)
  ((four key-4) ALLEGRO_KEY_4)
  ((five key-5) ALLEGRO_KEY_5)
  ((six key-6) ALLEGRO_KEY_6)
  ((seven key-7) ALLEGRO_KEY_7)
  ((eight key-8) ALLEGRO_KEY_8)
  ((nine key-9) ALLEGRO_KEY_9)
  ((zero key-0) ALLEGRO_KEY_0)

  ((pad-one key-pad-1) ALLEGRO_KEY_PAD_1)
  ((pad-two key-pad-2) ALLEGRO_KEY_PAD_2)
  ((pad-three key-pad-3) ALLEGRO_KEY_PAD_3)
  ((pad-four key-pad-4) ALLEGRO_KEY_PAD_4)
  ((pad-five key-pad-5) ALLEGRO_KEY_PAD_5)
  ((pad-six key-pad-6) ALLEGRO_KEY_PAD_6)
  ((pad-seven key-pad-7) ALLEGRO_KEY_PAD_7)
  ((pad-eight key-pad-8) ALLEGRO_KEY_PAD_8)
  ((pad-nine key-pad-9) ALLEGRO_KEY_PAD_9)
  ((pad-zero key-pad-0) ALLEGRO_KEY_PAD_0)

  ((f1 key-f1) ALLEGRO_KEY_F1)
  ((f2 key-f2) ALLEGRO_KEY_F2)
  ((f3 key-f3) ALLEGRO_KEY_F3)
  ((f4 key-f4) ALLEGRO_KEY_F4)
  ((f5 key-f5) ALLEGRO_KEY_F5)
  ((f6 key-f6) ALLEGRO_KEY_F6)
  ((f7 key-f7) ALLEGRO_KEY_F7)
  ((f8 key-f8) ALLEGRO_KEY_F8)
  ((f9 key-f9) ALLEGRO_KEY_F9)
  ((f10 key-f10) ALLEGRO_KEY_F10)
  ((f11 key-f11) ALLEGRO_KEY_F11)
  ((f12 key-f12) ALLEGRO_KEY_F12)

  ((escape key-escape) ALLEGRO_KEY_ESCAPE)
  ((tilde key-tilde) ALLEGRO_KEY_TILDE)
  ((minus key-minus) ALLEGRO_KEY_MINUS)
  ((equals key-equals) ALLEGRO_KEY_EQUALS)
  ((backspace key-backspace) ALLEGRO_KEY_BACKSPACE)
  ((tab key-tab) ALLEGRO_KEY_TAB)
  ((openbrace key-openbrace) ALLEGRO_KEY_OPENBRACE)
  ((enter key-enter) ALLEGRO_KEY_ENTER)
  ((semicolon key-semicolon) ALLEGRO_KEY_SEMICOLON)
  ((quote key-quote) ALLEGRO_KEY_QUOTE)
  ((backslash key-backslash) ALLEGRO_KEY_BACKSLASH)
  ((backslash2 key-backslash2) ALLEGRO_KEY_BACKSLASH2)
  ((comma key-comma) ALLEGRO_KEY_COMMA)
  ((fullstop key-fullstop) ALLEGRO_KEY_FULLSTOP)
  ((slash key-slash) ALLEGRO_KEY_SLASH)
  ((space key-space) ALLEGRO_KEY_SPACE)

  ((insert key-insert) ALLEGRO_KEY_INSERT)
  ((delete key-delete) ALLEGRO_KEY_DELETE)
  ((home key-home) ALLEGRO_KEY_HOME)
  ((end key-end) ALLEGRO_KEY_END)
  ((pgup key-pgup) ALLEGRO_KEY_PGUP)
  ((pgdn key-pgdn) ALLEGRO_KEY_PGDN)
  ((left key-left) ALLEGRO_KEY_LEFT)
  ((right key-right) ALLEGRO_KEY_RIGHT)
  ((up key-up) ALLEGRO_KEY_UP)
  ((down key-down) ALLEGRO_KEY_DOWN)

  ((pad-slash key-pad-slash) ALLEGRO_KEY_PAD_SLASH)
  ((pad-asterisk key-pad-asterisk) ALLEGRO_KEY_PAD_ASTERISK)
  ((pad-minus key-pad-minus) ALLEGRO_KEY_PAD_MINUS)
  ((pad-plus key-pad-plus) ALLEGRO_KEY_PAD_PLUS)
  ((pad-delete key-pad-delete) ALLEGRO_KEY_PAD_DELETE)
  ((pad-enter key-pad-enter) ALLEGRO_KEY_PAD_ENTER)

  ((printscreen key-printscreen) ALLEGRO_KEY_PRINTSCREEN)
  ((pause key-pause) ALLEGRO_KEY_PAUSE)

  ((abnt-c1 key-abnt-c1) ALLEGRO_KEY_ABNT_C1)
  ((yen key-yen) ALLEGRO_KEY_YEN)
  ((kana key-kana) ALLEGRO_KEY_KANA)
  ((convert key-convert) ALLEGRO_KEY_CONVERT)
  ((noconvert key-noconvert) ALLEGRO_KEY_NOCONVERT)
  ((at key-at) ALLEGRO_KEY_AT)
  ((circumflex key-circumflex) ALLEGRO_KEY_CIRCUMFLEX)
  ((colon2 key-colon2) ALLEGRO_KEY_COLON2)
  ((kanji key-kanji) ALLEGRO_KEY_KANJI)

  ;; OSX ONLY
  ((pad-equals key-pad-equals) ALLEGRO_KEY_PAD_EQUALS)
  ((backquote key-backquote) ALLEGRO_KEY_BACKQUOTE)
  ((semicolon2 key-semicolon2) ALLEGRO_KEY_SEMICOLON2)
  ((command key-command) ALLEGRO_KEY_COMMAND)
  ((unknown key-unknown) ALLEGRO_KEY_UNKNOWN)

  ((lshift key-left-shift) ALLEGRO_KEY_LSHIFT)
  ((rshift key-right-shift) ALLEGRO_KEY_RSHIFT)
  ((lctrl key-left-control) ALLEGRO_KEY_LCTRL)
  ((rctrl key-right-control) ALLEGRO_KEY_RCTRL)
  ((alt key-alt) ALLEGRO_KEY_ALT)
  ((altgr key-altgr) ALLEGRO_KEY_ALTGR)
  ((lwin key-left-win) ALLEGRO_KEY_LWIN)
  ((rwin key-right-win) ALLEGRO_KEY_RWIN)
  ((menu key-menu) ALLEGRO_KEY_MENU)
  ((scrolllock key-scroll-lock) ALLEGRO_KEY_SCROLLLOCK)
  ((numlock key-num-lock) ALLEGRO_KEY_NUMLOCK)
  ((capslock key-caps-lock) ALLEGRO_KEY_CAPSLOCK))

(define-foreign-enum-type (keymod int)
  (keymod->int int->keymod)
  ((shift keymod-shift) ALLEGRO_KEYMOD_SHIFT)
  ((ctrl keymod-ctrl) ALLEGRO_KEYMOD_CTRL)
  ((alt keymod-alt) ALLEGRO_KEYMOD_ALT)
  ((lwin keymod-left-win) ALLEGRO_KEYMOD_LWIN)
  ((rwin keymod-right-win) ALLEGRO_KEYMOD_RWIN)
  ((menu keymod-menu) ALLEGRO_KEYMOD_MENU)
  ((altgr keymod-altgr) ALLEGRO_KEYMOD_ALTGR)
  ((command keymod-command) ALLEGRO_KEYMOD_COMMAND)
  ((scrolllock keymod-scroll-lock) ALLEGRO_KEYMOD_SCROLLLOCK)
  ((numlock keymod-num-lock) ALLEGRO_KEYMOD_NUMLOCK)
  ((capslock keymod-caps-lock) ALLEGRO_KEYMOD_CAPSLOCK)
  ((inaltseq keymod-inaltseq) ALLEGRO_KEYMOD_INALTSEQ)
  ((accent1 keymod-accent1) ALLEGRO_KEYMOD_ACCENT1)
  ((accent2 keymod-accent2) ALLEGRO_KEYMOD_ACCENT2)
  ((accent3 keymod-accent3) ALLEGRO_KEYMOD_ACCENT3)
  ((accent4 keymod-accent4) ALLEGRO_KEYMOD_ACCENT4))
