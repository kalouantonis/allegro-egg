(cond-expand
 (windows
  (define fixed-sqsrt (foreign-lambda integer32 "al_fixsqrt" integer32))
  (define fixed-hypot (foreign-lambda integer32 "al_fixhypot" integer32 integer32))
  (define fixed-atan  (foreign-lambda integer32 "al_fixatan" integer32))
  (define fixed-atan2 (foreign-lambda integer32 "al_fixatan2" integer32 integer32))

  (define fixed-cos (foreign-lambda* integer32 ((integer32 val)) "C_return(_al_fix_cos_tbl[val]);"))
  (define fixed-tan (foreign-lambda* integer32 ((integer32 val)) "C_return(_al_fix_tan_tbl[val]);"))
  (define fixed-acos (foreign-lambda* integer32 ((integer32 val)) "C_return(_al_fix_acos_tbl[val]);")))
 (else #f))
