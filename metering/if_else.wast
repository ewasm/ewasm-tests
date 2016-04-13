(module
  (start $main)
  (fun $checkGas (param $gas i32)
    (if
      (i64.eq
        (call_import $gasUsed)
        (i64.const 7))
      (return))
    (unreachable))

  (func $main (param i64)
    (call $checkGas 8)
    (if (i64.eq (get_local 0) (i64.const 0))
      (then 
        (call $checkGas 1)
        (i64.const 1))
      (else (i64.const 1)))))
