; ModuleID = 'var.c'
source_filename = "var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@ptra = dso_local global ptr @a, align 8
@b = dso_local global double 0.000000e+00, align 8
@ptrb = dso_local global ptr @b, align 8
@c = dso_local global float 0.000000e+00, align 4
@ptrc = dso_local global ptr @c, align 8
@arrA = dso_local global [10 x i32] zeroinitializer, align 16
@arrB = dso_local global [10 x double] zeroinitializer, align 16
@arrC = dso_local global [10 x float] zeroinitializer, align 16

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.6"}
