; ModuleID = 'globals.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A = common global i64 0, align 8
@B = common global i32 0, align 4
@C = common global i16 0, align 2
@D = common global i8 0, align 1
@E = common global x86_fp80 0xK00000000000000000000, align 16
@F = common global double 0.000000e+00, align 8
@G = common global float 0.000000e+00, align 4
@H = common global i128 0, align 16
@I = internal global i64* null, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* bitcast (i32 ()* @test to void ()*), i8* null }]

; Function Attrs: nounwind uwtable
define i32 @test() #0 {
  store i64 1, i64* @A, align 8
  store i32 2, i32* @B, align 4
  store i16 3, i16* @C, align 2
  store i8 4, i8* @D, align 1
  store x86_fp80 0xK4001B333333333333000, x86_fp80* @E, align 16
  store double 7.800000e+00, double* @F, align 8
  store float 0x4022333340000000, float* @G, align 4
  store i128 11, i128* @H, align 16
  store i64* @A, i64** @I, align 8
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (tags/RELEASE_381/final)"}
