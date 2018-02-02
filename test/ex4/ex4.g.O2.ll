; ModuleID = 'ex4.g.O2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"sensitive\00", section "llvm.metadata"
@.str1 = private unnamed_addr constant [6 x i8] c"ex4.c\00", section "llvm.metadata"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %key1 = alloca i32, align 4
  %key11 = bitcast i32* %key1 to i8*, !dbg !18
  call void @llvm.var.annotation(i8* %key11, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i32 4), !dbg !18
  call void @llvm.dbg.value(metadata !19, i64 0, metadata !12), !dbg !20
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !13), !dbg !22
  call void @llvm.dbg.value(metadata !{i32* %key1}, i64 0, metadata !14), !dbg !23
  call void @llvm.dbg.value(metadata !19, i64 0, metadata !11), !dbg !24
  ret i32 0, !dbg !25
}

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c] [DW_LANG_C99]
!1 = metadata !{metadata !"ex4.c", metadata !"/home/sxl463/working/pdg-for-robert/test/privateValues/ex4"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 1, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 ()* @main, null, null, metadata !9, i32 2} ; [ DW_TAG_subprogram ] [line 1] [def] [scope 2] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !11, metadata !12, metadata !13, metadata !14}
!10 = metadata !{i32 786688, metadata !4, metadata !"a", metadata !5, i32 3, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 3]
!11 = metadata !{i32 786688, metadata !4, metadata !"b", metadata !5, i32 3, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 3]
!12 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 3, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 3]
!13 = metadata !{i32 786688, metadata !4, metadata !"d", metadata !5, i32 3, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 3]
!14 = metadata !{i32 786688, metadata !4, metadata !"key1", metadata !5, i32 4, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key1] [line 4]
!15 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!16 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!17 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!18 = metadata !{i32 4, i32 2, metadata !4, null}
!19 = metadata !{i32 4}
!20 = metadata !{i32 3, i32 10, metadata !4, null}
!21 = metadata !{i32 5}
!22 = metadata !{i32 3, i32 12, metadata !4, null}
!23 = metadata !{i32 4, i32 46, metadata !4, null}
!24 = metadata !{i32 3, i32 8, metadata !4, null}
!25 = metadata !{i32 36, i32 1, metadata !4, null}
