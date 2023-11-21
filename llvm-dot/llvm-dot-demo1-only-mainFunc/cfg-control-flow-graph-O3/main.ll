; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local local_unnamed_addr global i32 10, align 4
@y = dso_local local_unnamed_addr global i32 11, align 4

; Function Attrs: norecurse nounwind readonly uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @x, align 4, !tbaa !2
  %1 = load i32, i32* @y, align 4, !tbaa !2
  %mul = mul i32 %0, 12
  %mul1 = mul i32 %mul, %1
  %mul.1 = mul i32 %0, %mul1
  %mul1.1 = mul i32 %mul.1, %1
  %mul.2 = mul i32 %0, %mul1.1
  %mul1.2 = mul i32 %mul.2, %1
  %mul.3 = mul i32 %0, %mul1.2
  %mul1.3 = mul i32 %mul.3, %1
  %mul.4 = mul i32 %0, %mul1.3
  %mul1.4 = mul i32 %mul.4, %1
  %mul.5 = mul i32 %0, %mul1.4
  %mul1.5 = mul i32 %mul.5, %1
  %mul.6 = mul i32 %0, %mul1.5
  %mul1.6 = mul i32 %mul.6, %1
  %mul.7 = mul i32 %0, %mul1.6
  %mul1.7 = mul i32 %mul.7, %1
  %mul.8 = mul i32 %0, %mul1.7
  %mul1.8 = mul i32 %mul.8, %1
  %mul.9 = mul i32 %0, %mul1.8
  %mul1.9 = mul i32 %mul.9, %1
  ret i32 %mul1.9
}

attributes #0 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 7.0.0 "}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
