(module
  (start $main)
  (import $gasUsed  "ethereum" "gasUsed"  (result i64))
  (func $main (result i32) ;; +2
    (block ;; +1
      (if ;; +1
        (i64.eq ;; +1
          (call_import $gasUsed) ;; +1
          (i64.const 7)) ;; +1
        (br 1) ;; +1
      )
      (unreachable)))) ;;  +0
