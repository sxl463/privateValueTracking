; ModuleID = 'ex4.mem2reg.S.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"sensitive\00", section "llvm.metadata"
@.str1 = private unnamed_addr constant [6 x i8] c"ex4.c\00", section "llvm.metadata"

; Function Attrs: nounwind uwtable
define { i64, i64 } @foo() #0 {
entry:
  %retval = alloca %struct.S, align 4
  %key1 = alloca i32, align 4
  %s = alloca %struct.S, align 4
  call void @llvm.dbg.declare(metadata !{i32* %key1}, metadata !19), !dbg !20
  %key11 = bitcast i32* %key1 to i8*, !dbg !21
  call void @llvm.var.annotation(i8* %key11, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 11), !dbg !21
  %tobool = icmp ne i32 undef, 0, !dbg !22
  br i1 %tobool, label %if.then, label %if.else, !dbg !22

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !25), !dbg !26
  call void @llvm.dbg.value(metadata !27, i64 0, metadata !28), !dbg !29
  br label %if.end, !dbg !30

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !32, i64 0, metadata !33), !dbg !34
  call void @llvm.dbg.value(metadata !35, i64 0, metadata !36), !dbg !37
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %0 = load i32* %key1, align 4, !dbg !38
  %tobool2 = icmp ne i32 %0, 0, !dbg !38
  br i1 %tobool2, label %if.then3, label %if.else4, !dbg !38

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !25), !dbg !26
  br label %if.end5, !dbg !40

if.else4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata !27, i64 0, metadata !28), !dbg !29
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then3
  %tobool6 = icmp ne i32 2, 0, !dbg !42
  br i1 %tobool6, label %if.then7, label %if.else8, !dbg !42

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.value(metadata !32, i64 0, metadata !28), !dbg !29
  br label %if.end9, !dbg !44

if.else8:                                         ; preds = %if.end5
  call void @llvm.dbg.value(metadata !35, i64 0, metadata !33), !dbg !34
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7
  %c.1 = phi i32 [ 4, %if.then7 ], [ 5, %if.else8 ]
  %b.2 = phi i32 [ 4, %if.then7 ], [ 3, %if.else8 ]
  call void @llvm.dbg.declare(metadata !{%struct.S* %s}, metadata !46), !dbg !47
  %a10 = getelementptr inbounds %struct.S* %s, i32 0, i32 0, !dbg !48
  store i32 2, i32* %a10, align 4, !dbg !48
  %b11 = getelementptr inbounds %struct.S* %s, i32 0, i32 1, !dbg !49
  store i32 %b.2, i32* %b11, align 4, !dbg !49
  %c12 = getelementptr inbounds %struct.S* %s, i32 0, i32 2, !dbg !50
  store i32 %c.1, i32* %c12, align 4, !dbg !50
  %d13 = getelementptr inbounds %struct.S* %s, i32 0, i32 3, !dbg !51
  store i32 5, i32* %d13, align 4, !dbg !51
  %1 = bitcast %struct.S* %retval to i8*, !dbg !52
  %2 = bitcast %struct.S* %s to i8*, !dbg !52
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 4, i1 false), !dbg !52
  %3 = bitcast %struct.S* %retval to { i64, i64 }*, !dbg !52
  %4 = load { i64, i64 }* %3, align 1, !dbg !52
  ret { i64, i64 } %4, !dbg !52
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17}
!llvm.ident = !{!18}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c] [DW_LANG_C99]
!1 = metadata !{metadata !"ex4.c", metadata !"/home/sxl463/working/pdg-for-robert/test/privateValues/ex4"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"foo", metadata !"foo", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, { i64, i64 } ()* @foo, null, null, metadata !2, i32 9} ; [ DW_TAG_subprogram ] [line 8] [def] [scope 9] [foo]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786454, metadata !1, null, metadata !"S", i32 6, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [S] [line 6, size 0, align 0, offset 0] [from ]
!9 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 1, i64 128, i64 32, i32 0, i32 0, null, metadata !10, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 1, size 128, align 32, offset 0] [def] [from ]
!10 = metadata !{metadata !11, metadata !13, metadata !14, metadata !15}
!11 = metadata !{i32 786445, metadata !1, metadata !9, metadata !"a", i32 2, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ] [a] [line 2, size 32, align 32, offset 0] [from int]
!12 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{i32 786445, metadata !1, metadata !9, metadata !"b", i32 3, i64 32, i64 32, i64 32, i32 0, metadata !12} ; [ DW_TAG_member ] [b] [line 3, size 32, align 32, offset 32] [from int]
!14 = metadata !{i32 786445, metadata !1, metadata !9, metadata !"c", i32 4, i64 32, i64 32, i64 64, i32 0, metadata !12} ; [ DW_TAG_member ] [c] [line 4, size 32, align 32, offset 64] [from int]
!15 = metadata !{i32 786445, metadata !1, metadata !9, metadata !"d", i32 5, i64 32, i64 32, i64 96, i32 0, metadata !12} ; [ DW_TAG_member ] [d] [line 5, size 32, align 32, offset 96] [from int]
!16 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!17 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!18 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!19 = metadata !{i32 786688, metadata !4, metadata !"key1", metadata !5, i32 11, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key1] [line 11]
!20 = metadata !{i32 11, i32 46, metadata !4, null}
!21 = metadata !{i32 11, i32 2, metadata !4, null}
!22 = metadata !{i32 13, i32 5, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !4, i32 13, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
!24 = metadata !{i32 2}
!25 = metadata !{i32 786688, metadata !4, metadata !"a", metadata !5, i32 10, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 10]
!26 = metadata !{i32 10, i32 6, metadata !4, null}
!27 = metadata !{i32 3}
!28 = metadata !{i32 786688, metadata !4, metadata !"b", metadata !5, i32 10, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 10]
!29 = metadata !{i32 10, i32 8, metadata !4, null}
!30 = metadata !{i32 18, i32 2, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !23, i32 14, i32 2, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
!32 = metadata !{i32 4}
!33 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 10, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 10]
!34 = metadata !{i32 10, i32 10, metadata !4, null}
!35 = metadata !{i32 5}
!36 = metadata !{i32 786688, metadata !4, metadata !"d", metadata !5, i32 10, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 10]
!37 = metadata !{i32 10, i32 12, metadata !4, null}
!38 = metadata !{i32 25, i32 5, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !4, i32 25, i32 5, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
!40 = metadata !{i32 28, i32 2, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !39, i32 26, i32 2, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
!42 = metadata !{i32 34, i32 5, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 5, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
!44 = metadata !{i32 37, i32 2, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !43, i32 35, i32 2, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdg-for-robert/test/privateValues/ex4/ex4.c]
!46 = metadata !{i32 786688, metadata !4, metadata !"s", metadata !5, i32 42, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 42]
!47 = metadata !{i32 42, i32 4, metadata !4, null}
!48 = metadata !{i32 43, i32 2, metadata !4, null}
!49 = metadata !{i32 43, i32 11, metadata !4, null}
!50 = metadata !{i32 43, i32 20, metadata !4, null}
!51 = metadata !{i32 43, i32 29, metadata !4, null}
!52 = metadata !{i32 44, i32 2, metadata !4, null}
