; RUN: llc -O0 -mtriple=spirv64-unknown-unknown %s -o - | FileCheck %s

; CHECK: OpEntryPoint Kernel %[[#ENTRY:]] "foo"
; CHECK: OpExecutionMode %[[#ENTRY]] ContractionOff
define spir_kernel void @foo() {
entry:
  ret void
}

