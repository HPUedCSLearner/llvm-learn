; ModuleID = 'gsd.c'
source_filename = "gsd.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gsd(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  store i32 %0, i32* %q, align 4
  %1 = load i32, i32* %y.addr, align 4
  store i32 %1, i32* %r, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, i32* %q, align 4
  %3 = load i32, i32* %r, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %q, align 4
  %5 = load i32, i32* %r, align 4
  %cmp1 = icmp sgt i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load i32, i32* %q, align 4
  %7 = load i32, i32* %r, align 4
  %sub = sub nsw i32 %6, %7
  store i32 %sub, i32* %q, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %8 = load i32, i32* %r, align 4
  %9 = load i32, i32* %q, align 4
  %sub2 = sub nsw i32 %8, %9
  store i32 %sub2, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i32, i32* %q, align 4
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 7.0.0 "}
