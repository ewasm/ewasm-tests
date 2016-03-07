(module
  (import $addGas "ethereum" "addGas" (param i32))
  (import $gasUsed "ethereum" "gasUsed" (result i64))
  (export "test" 0)
  (func 
    (block
      (call_import $addGas (i32.const 1))
      (if (i64.eq  (call_import $gasUsed) (i64.const 1))
        (br 0)
      )
      (unreachable)
    )
  )
)

