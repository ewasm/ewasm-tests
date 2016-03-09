;; address of 5d48c1018904a172886829bbbd9c6f4a2d06c47b has a balance of 100
(module
  (memory 1000 (segment 0 0x5d48c1018904a172886829bbbd9c6f4a2d06c47b))
  (import $balance  "ethereum" "balance"  (param i32))

  (export "test" 0)
  (func 
    (block
      (call_import $balance (i32.const 0) (i32.const 0))
      (if (i64.eq (i64.load (i32.const 0)) (i64.const 0x100))
        (br 0)
      )
      (unreachable)
    )
  )
)

