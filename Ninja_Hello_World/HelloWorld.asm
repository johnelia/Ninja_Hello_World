;
;
; Hello World, Assembly program.  from Dr. Nina Javaher ( Dr. NinJa ) video course.
;
; Written by:  lovesmiles@gmail.com
;-----------------------------------------------------------------------------|
.386
.model flat, stdcall, c
.stack 4096
;-----------------------------------------------------------------------------|
.data
hellomsg BYTE "Hello world, from masm, and joel", 10d		;10d(newline)
;-----------------------------------------------------------------------------|
.code
includelib libucrt.lib
includelib legacy_stdio_definitions.lib
includelib libcmt.lib
includelib libvcruntime.lib
;-----------------------------------------------------------------------------|
extern printf:near
extern exit:near
;-----------------------------------------------------------------------------|
public main
main proc
	push  offset hellomsg
	call  printf
	push  0
	call  exit

main endp
end
; end of program.
;-----------------------------------------------------------------------------|