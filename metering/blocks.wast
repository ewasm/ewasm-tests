(module
  (start $main)
  (fun $checkGas (param $gas i32)
    (if
      (i64.eq
        (call_import $gasUsed)
        (i64.const 7))
      (return))
    (unreachable))

  (func $main 
    (param $i i32)
    (result i32)
    (local $j i32)
    (call $checkGas (i32.const 30))
    (set_local $j (i32.const 100))
    (block $switch
      (block $7
        (block $default 
          (block $6
            (block $5
              (block $4
                (block $3
                  (block $2
                    (block $1
                      (block $0
                        (br_table $0 $1 $2 $3 $4 $5 $6 $7 $default
                          (get_local $i)
                        )
                      )
                      (return (get_local $i))
                    )
                    (nop)
                    ;; fallthrough
                  )
                  ;; fallthrough
                ) 
                (set_local $j (i32.sub (i32.const 0) (get_local $i)))
                (call $checkGas (i32.const 30))
                (br $switch)
              )
              (br $4)
            )
            (call $checkGas (i32.const 30))
            (set_local $j (i32.const 101))
            (br $switch)
          )
          (set_local $j (i32.const 101))
          ;; fallthrough
        ) ;; default
        (set_local $j (i32.const 102))
      )
      ;; fallthrough
    )
    (return (get_local $j))
))
