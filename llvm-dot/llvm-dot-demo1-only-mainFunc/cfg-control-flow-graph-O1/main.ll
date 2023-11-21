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
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  ret i32 %mul1

for.body:                                         ; preds = %for.body, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %z.06 = phi i32 [ 12, %entry ], [ %mul1, %for.body ]
  %mul = mul i32 %0, %z.06
  %mul1 = mul i32 %mul, %1
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond = icmp eq i32 %inc, 10
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
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
