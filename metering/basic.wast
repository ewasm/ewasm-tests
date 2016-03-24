(module
  (import $gasUsed  "ethereum" "gasUsed"  (result i64))
  (export "test" 0)
  (func (result i32)
    (block ;; +1
      (if ;; +1
        (i64.eq ;; +1
          (call_import $gasUsed) ;; +1
          (i64.const 5)) ;; +1
        (br 0) ;; +1
      )
      (unreachable)))) ;; +1
