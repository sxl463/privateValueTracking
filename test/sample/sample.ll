; ModuleID = 'sample.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"sensitive\00", section "llvm.metadata"
@.str1 = private unnamed_addr constant [9 x i8] c"sample.c\00", section "llvm.metadata"

; Function Attrs: nounwind uwtable
define void @test() #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %key = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !15), !dbg !16
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !17), !dbg !18
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !19), !dbg !20
  call void @llvm.dbg.declare(metadata !{i32* %d}, metadata !21), !dbg !22
  call void @llvm.dbg.declare(metadata !{i32* %key}, metadata !23), !dbg !24
  %key1 = bitcast i32* %key to i8*, !dbg !25
  call void @llvm.var.annotation(i8* %key1, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 4), !dbg !25
  %0 = load i32* %key, align 4, !dbg !26
  store i32 %0, i32* %a, align 4, !dbg !26
  %1 = load i32* %a, align 4, !dbg !27
  %tobool = icmp ne i32 %1, 0, !dbg !27
  br i1 %tobool, label %if.then, label %if.else, !dbg !27

if.then:                                          ; preds = %entry
  store i32 1, i32* %c, align 4, !dbg !29
  br label %if.end, !dbg !31

if.else:                                          ; preds = %entry
  store i32 2, i32* %d, align 4, !dbg !32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !34
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %key2 = alloca i32, align 4
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !35), !dbg !36
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !37), !dbg !38
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !39), !dbg !40
  call void @llvm.dbg.declare(metadata !{i32* %d}, metadata !41), !dbg !42
  call void @llvm.dbg.declare(metadata !{i32* %key2}, metadata !43), !dbg !44
  %key21 = bitcast i32* %key2 to i8*, !dbg !45
  call void @llvm.var.annotation(i8* %key21, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i32 22), !dbg !45
  call void @test(), !dbg !46
  %0 = load i32* %a, align 4, !dbg !47
  %tobool = icmp ne i32 %0, 0, !dbg !47
  br i1 %tobool, label %if.then, label %if.else, !dbg !47

if.then:                                          ; preds = %entry
  store i32 2, i32* %a, align 4, !dbg !49
  store i32 3, i32* %b, align 4, !dbg !51
  br label %if.end, !dbg !52

if.else:                                          ; preds = %entry
  store i32 4, i32* %c, align 4, !dbg !53
  store i32 5, i32* %d, align 4, !dbg !55
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32* %key2, align 4, !dbg !56
  %tobool2 = icmp ne i32 %1, 0, !dbg !56
  br i1 %tobool2, label %if.then3, label %if.else4, !dbg !56

if.then3:                                         ; preds = %if.end
  store i32 2, i32* %a, align 4, !dbg !58
  br label %if.end5, !dbg !60

if.else4:                                         ; preds = %if.end
  store i32 3, i32* %b, align 4, !dbg !61
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then3
  %2 = load i32* %a, align 4, !dbg !63
  %tobool6 = icmp ne i32 %2, 0, !dbg !63
  br i1 %tobool6, label %if.then7, label %if.else8, !dbg !63

if.then7:                                         ; preds = %if.end5
  store i32 4, i32* %b, align 4, !dbg !65
  br label %if.end9, !dbg !67

if.else8:                                         ; preds = %if.end5
  store i32 5, i32* %c, align 4, !dbg !68
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.then7
  %3 = load i32* %retval, !dbg !70
  ret i32 %3, !dbg !70
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/sxl463/working/pdgBasicBlock/test/sample/sample.c] [DW_LANG_C99]
!1 = metadata !{metadata !"sample.c", metadata !"/home/sxl463/working/pdgBasicBlock/test/sample"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !8}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"test", metadata !"test", metadata !"", i32 1, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @test, null, null, metadata !2, i32 2} ; [ DW_TAG_subprogram ] [line 1] [def] [scope 2] [test]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/sxl463/working/pdgBasicBlock/test/sample/sample.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 19, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 19] [def] [scope 20] [main]
!9 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !10, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!15 = metadata !{i32 786688, metadata !4, metadata !"a", metadata !5, i32 3, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 3]
!16 = metadata !{i32 3, i32 6, metadata !4, null}
!17 = metadata !{i32 786688, metadata !4, metadata !"b", metadata !5, i32 3, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 3]
!18 = metadata !{i32 3, i32 8, metadata !4, null}
!19 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 3, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 3]
!20 = metadata !{i32 3, i32 10, metadata !4, null}
!21 = metadata !{i32 786688, metadata !4, metadata !"d", metadata !5, i32 3, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 3]
!22 = metadata !{i32 3, i32 12, metadata !4, null}
!23 = metadata !{i32 786688, metadata !4, metadata !"key", metadata !5, i32 4, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 4]
!24 = metadata !{i32 4, i32 46, metadata !4, null}
!25 = metadata !{i32 4, i32 2, metadata !4, null}
!26 = metadata !{i32 6, i32 2, metadata !4, null}
!27 = metadata !{i32 8, i32 5, metadata !28, null} ; [ DW_TAG_imported_declaration ]
!28 = metadata !{i32 786443, metadata !1, metadata !4, i32 8, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdgBasicBlock/test/sample/sample.c]
!29 = metadata !{i32 10, i32 3, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !28, i32 9, i32 2, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdgBasicBlock/test/sample/sample.c]
!31 = metadata !{i32 11, i32 2, metadata !30, null}
!32 = metadata !{i32 14, i32 3, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !28, i32 13, i32 2, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdgBasicBlock/test/sample/sample.c]
!34 = metadata !{i32 16, i32 1, metadata !4, null}
!35 = metadata !{i32 786688, metadata !8, metadata !"a", metadata !5, i32 21, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 21]
!36 = metadata !{i32 21, i32 6, metadata !8, null}
!37 = metadata !{i32 786688, metadata !8, metadata !"b", metadata !5, i32 21, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 21]
!38 = metadata !{i32 21, i32 8, metadata !8, null}
!39 = metadata !{i32 786688, metadata !8, metadata !"c", metadata !5, i32 21, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 21]
!40 = metadata !{i32 21, i32 10, metadata !8, null}
!41 = metadata !{i32 786688, metadata !8, metadata !"d", metadata !5, i32 21, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 21]
!42 = metadata !{i32 21, i32 12, metadata !8, null}
!43 = metadata !{i32 786688, metadata !8, metadata !"key2", metadata !5, i32 22, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key2] [line 22]
!44 = metadata !{i32 22, i32 46, metadata !8, null}
!45 = metadata !{i32 22, i32 2, metadata !8, null}
!46 = metadata !{i32 24, i32 2, metadata !8, null}
!47 = metadata !{i32 26, i32 5, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !8, i32 26, i32 5, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdgBasicBlock/test/sample/sample.c]
!49 = metadata !{i32 28, i32 3, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !48, i32 27, i32 2, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdgBasicBlock/test/sample/sample.c]
!51 = metadata !{i32 29, i32 3, metadata !50, null}
!52 = metadata !{i32 30, i32 2, metadata !50, null}
!53 = metadata !{i32 33, i32 3, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !48, i32 32, i32 2, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdgBasicBlock/test/sample/sample.c]
!55 = metadata !{i32 34, i32 3, metadata !54, null}
!56 = metadata !{i32 37, i32 5, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !8, i32 37, i32 5, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdgBasicBlock/test/sample/sample.c]
!58 = metadata !{i32 39, i32 3, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !57, i32 38, i32 2, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdgBasicBlock/test/sample/sample.c]
!60 = metadata !{i32 40, i32 2, metadata !59, null}
!61 = metadata !{i32 43, i32 3, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !57, i32 42, i32 2, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdgBasicBlock/test/sample/sample.c]
!63 = metadata !{i32 46, i32 5, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !8, i32 46, i32 5, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdgBasicBlock/test/sample/sample.c]
!65 = metadata !{i32 48, i32 3, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !64, i32 47, i32 2, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdgBasicBlock/test/sample/sample.c]
!67 = metadata !{i32 49, i32 2, metadata !66, null}
!68 = metadata !{i32 52, i32 3, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !64, i32 51, i32 2, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/sxl463/working/pdgBasicBlock/test/sample/sample.c]
!70 = metadata !{i32 55, i32 1, metadata !8, null}
