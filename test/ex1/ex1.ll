; ModuleID = 'ex1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"sensitive\00", section "llvm.metadata"
@.str1 = private unnamed_addr constant [6 x i8] c"ex1.c\00", section "llvm.metadata"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %key = alloca i32, align 4
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !12), !dbg !13
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !14), !dbg !15
  call void @llvm.dbg.declare(metadata !{i32* %key}, metadata !16), !dbg !17
  %key1 = bitcast i32* %key to i8*, !dbg !18
  call void @llvm.var.annotation(i8* %key1, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 4), !dbg !18
  %0 = load i32* %key, align 4, !dbg !19
  %tobool = icmp ne i32 %0, 0, !dbg !19
  br i1 %tobool, label %if.then, label %if.else, !dbg !19

if.then:                                          ; preds = %entry
  store i32 1, i32* %a, align 4, !dbg !21
  br label %if.end, !dbg !23

if.else:                                          ; preds = %entry
  store i32 2, i32* %b, align 4, !dbg !24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32* %retval, !dbg !26
  ret i32 %1, !dbg !26
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/sxl463/working/pdg-for-robert/test/pub-priv/ex1/ex1.c] [DW_LANG_C99]
!1 = metadata !{metadata !"ex1.c", metadata !"/home/sxl463/working/pdg-for-robert/test/pub-priv/ex1"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 1, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 2} ; [ DW_TAG_subprogram ] [line 1] [def] [scope 2] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/sxl463/working/pdg-for-robert/test/pub-priv/ex1/ex1.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!12 = metadata !{i32 786688, metadata !4, metadata !"a", metadata !5, i32 3, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 3]
!13 = metadata !{i32 3, i32 6, metadata !4, null}
!14 = metadata !{i32 786688, metadata !4, metadata !"b", metadata !5, i32 3, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 3]
!15 = metadata !{i32 3, i32 8, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"key", metadata !5, i32 4, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 4]
!17 = metadata !{i32 4, i32 46, metadata !4, null}
!18 = metadata !{i32 4, i32 2, metadata !4, null}
!19 = metadata !{i32 6, i32 5, metadata !20, null}
!20 = metadata !{i32 786443, metadata !1, metadata !4, i32 6, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/pub-priv/ex1/ex1.c]
!21 = metadata !{i32 8, i32 3, metadata !22, null} ; [ DW_TAG_imported_declaration ]
!22 = metadata !{i32 786443, metadata !1, metadata !20, i32 7, i32 2, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/pub-priv/ex1/ex1.c]
!23 = metadata !{i32 9, i32 2, metadata !22, null}
!24 = metadata !{i32 12, i32 3, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !20, i32 11, i32 2, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/pub-priv/ex1/ex1.c]
!26 = metadata !{i32 14, i32 1, metadata !4, null}
