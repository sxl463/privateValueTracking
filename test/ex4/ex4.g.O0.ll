; ModuleID = 'ex4.g.O0.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"sensitive\00", section "llvm.metadata"
@.str1 = private unnamed_addr constant [6 x i8] c"ex4.c\00", section "llvm.metadata"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %key1 = alloca i32, align 4
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !12), !dbg !13
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !14), !dbg !15
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !16), !dbg !17
  call void @llvm.dbg.declare(metadata !{i32* %d}, metadata !18), !dbg !19
  call void @llvm.dbg.declare(metadata !{i32* %key1}, metadata !20), !dbg !21
  %key11 = bitcast i32* %key1 to i8*, !dbg !22
  call void @llvm.var.annotation(i8* %key11, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 4), !dbg !22
  %0 = load i32* %a, align 4, !dbg !23
  %tobool = icmp ne i32 %0, 0, !dbg !23
  br i1 %tobool, label %if.then, label %if.else, !dbg !23

if.then:                                          ; preds = %entry
  store i32 2, i32* %a, align 4, !dbg !25
  store i32 3, i32* %b, align 4, !dbg !27
  br label %if.end, !dbg !28

if.else:                                          ; preds = %entry
  store i32 4, i32* %c, align 4, !dbg !29
  store i32 5, i32* %d, align 4, !dbg !31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32* %key1, align 4, !dbg !32
  %tobool2 = icmp ne i32 %1, 0, !dbg !32
  br i1 %tobool2, label %if.then3, label %if.else4, !dbg !32

if.then3:                                         ; preds = %if.end
  store i32 2, i32* %a, align 4, !dbg !34
  br label %if.end5, !dbg !36

if.else4:                                         ; preds = %if.end
  store i32 3, i32* %b, align 4, !dbg !37
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then3
  %2 = load i32* %a, align 4, !dbg !39
  %tobool6 = icmp ne i32 %2, 0, !dbg !39
  br i1 %tobool6, label %if.then7, label %if.else8, !dbg !39

if.then7:                                         ; preds = %if.end5
  store i32 4, i32* %b, align 4, !dbg !41
  br label %if.end9, !dbg !43

if.else8:                                         ; preds = %if.end5
  store i32 5, i32* %c, align 4, !dbg !44
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7
  %3 = load i32* %retval, !dbg !46
  ret i32 %3, !dbg !46
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c] [DW_LANG_C99]
!1 = metadata !{metadata !"ex4.c", metadata !"/home/sxl463/working/pdg-for-robert/test/privateValues/ex4"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 1, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 2} ; [ DW_TAG_subprogram ] [line 1] [def] [scope 2] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
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
!16 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 3, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 3]
!17 = metadata !{i32 3, i32 10, metadata !4, null}
!18 = metadata !{i32 786688, metadata !4, metadata !"d", metadata !5, i32 3, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 3]
!19 = metadata !{i32 3, i32 12, metadata !4, null}
!20 = metadata !{i32 786688, metadata !4, metadata !"key1", metadata !5, i32 4, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key1] [line 4]
!21 = metadata !{i32 4, i32 46, metadata !4, null}
!22 = metadata !{i32 4, i32 2, metadata !4, null}
!23 = metadata !{i32 6, i32 5, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !4, i32 6, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
!25 = metadata !{i32 8, i32 3, metadata !26, null} ; [ DW_TAG_imported_declaration ]
!26 = metadata !{i32 786443, metadata !1, metadata !24, i32 7, i32 2, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
!27 = metadata !{i32 9, i32 3, metadata !26, null}
!28 = metadata !{i32 11, i32 2, metadata !26, null}
!29 = metadata !{i32 14, i32 3, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !24, i32 13, i32 2, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
!31 = metadata !{i32 15, i32 3, metadata !30, null}
!32 = metadata !{i32 18, i32 5, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !4, i32 18, i32 5, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
!34 = metadata !{i32 20, i32 3, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !33, i32 19, i32 2, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
!36 = metadata !{i32 21, i32 2, metadata !35, null}
!37 = metadata !{i32 24, i32 3, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !33, i32 23, i32 2, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
!39 = metadata !{i32 27, i32 5, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !4, i32 27, i32 5, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
!41 = metadata !{i32 29, i32 3, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !40, i32 28, i32 2, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
!43 = metadata !{i32 30, i32 2, metadata !42, null}
!44 = metadata !{i32 33, i32 3, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !40, i32 32, i32 2, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
!46 = metadata !{i32 36, i32 1, metadata !4, null}
