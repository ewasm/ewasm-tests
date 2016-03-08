;; starts with an address of 5d48c1018904a172886829bbbd9c6f4a2d06c47b
(module
  (memory 0 20)
  (import $address  "ethereum" "address"  (param i32))

  (export "test" 0)
  (func 
    ;; test adding gas
    (block
      (call_import $address (i32.const 0))
      (if (i64.eq (i64.load (i32.const 0)) (i64.const 0x5d48c1018))
        (br 0)
      )
      (unreachable)
    )
  )
)
