	.file	"mnist.cpp"
 # GNU C++14 (Rev2, Built by MSYS2 project) version 9.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 9.2.0, GMP version 6.1.2, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.21-GMP

 # warning: GMP header version 6.1.2 differs from library version 6.2.0.
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: 
 # -iprefix C:/msys64/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/9.2.0/
 # -D_REENTRANT mnist.cpp -mtune=generic -march=x86-64
 # -auxbase-strip mnist.s -O3 -fverbose-asm
 # options enabled:  -faggressive-loop-optimizations -falign-functions
 # -falign-jumps -falign-labels -falign-loops -fassume-phsa
 # -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
 # -fcaller-saves -fcode-hoisting -fcombine-stack-adjustments -fcommon
 # -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
 # -fdefer-pop -fdelete-null-pointer-checks -fdevirtualize
 # -fdevirtualize-speculatively -fdwarf2-cfi-asm -fearly-inlining
 # -feliminate-unused-debug-types -fexceptions -fexpensive-optimizations
 # -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
 # -fgcse-after-reload -fgcse-lm -fgnu-runtime -fgnu-unique
 # -fguess-branch-probability -fhoist-adjacent-loads -fident
 # -fif-conversion -fif-conversion2 -findirect-inlining -finline
 # -finline-atomics -finline-functions -finline-functions-called-once
 # -finline-small-functions -fipa-bit-cp -fipa-cp -fipa-cp-clone -fipa-icf
 # -fipa-icf-functions -fipa-icf-variables -fipa-profile -fipa-pure-const
 # -fipa-ra -fipa-reference -fipa-reference-addressable -fipa-sra
 # -fipa-stack-alignment -fipa-vrp -fira-hoist-pressure
 # -fira-share-save-slots -fira-share-spill-slots
 # -fisolate-erroneous-paths-dereference -fivopts -fkeep-inline-dllexport
 # -fkeep-static-consts -fleading-underscore -flifetime-dse
 # -floop-interchange -floop-unroll-and-jam -flra-remat
 # -flto-odr-type-merging -fmath-errno -fmerge-constants
 # -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
 # -foptimize-sibling-calls -foptimize-strlen -fpartial-inlining
 # -fpeel-loops -fpeephole -fpeephole2 -fpic -fplt -fpredictive-commoning
 # -fprefetch-loop-arrays -free -freg-struct-return -freorder-blocks
 # -freorder-functions -frerun-cse-after-loop
 # -fsched-critical-path-heuristic -fsched-dep-count-heuristic
 # -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
 # -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
 # -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns2
 # -fsemantic-interposition -fset-stack-executable -fshow-column
 # -fshrink-wrap -fshrink-wrap-separate -fsigned-zeros
 # -fsplit-ivs-in-unroller -fsplit-loops -fsplit-paths -fsplit-wide-types
 # -fssa-backprop -fssa-phiopt -fstdarg-opt -fstore-merging
 # -fstrict-aliasing -fstrict-volatile-bitfields -fsync-libcalls
 # -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
 # -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
 # -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
 # -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
 # -ftree-loop-distribution -ftree-loop-if-convert -ftree-loop-im
 # -ftree-loop-ivcanon -ftree-loop-optimize -ftree-loop-vectorize
 # -ftree-parallelize-loops= -ftree-partial-pre -ftree-phiprop -ftree-pre
 # -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
 # -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
 # -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time
 # -funswitch-loops -funwind-tables -fverbose-asm
 # -fversion-loops-for-strides -fzero-initialized-in-bss
 # -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
 # -malign-double -malign-stringops -mavx256-split-unaligned-load
 # -mavx256-split-unaligned-store -mfancy-math-387 -mfentry -mfp-ret-in-387
 # -mfxsr -mieee-fp -mlong-double-80 -mmmx -mms-bitfields -mno-sse4
 # -mpush-args -mred-zone -msse -msse2 -mstack-arg-probe -mstackrealign
 # -mvzeroupper

	.text
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1359:
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:1084:       do_widen(char __c) const
	movl	%edx, %eax	 # tmp87, __c
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:1085:       { return __c; }
	ret	
	.seh_endproc
	.text
	.p2align 4
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB3292:
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/9.2.0/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rcx	 #,
	jmp	_ZNSt8ios_base4InitD1Ev	 #
	.seh_endproc
	.p2align 4
	.globl	_Z7sigmoidd
	.def	_Z7sigmoidd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7sigmoidd
_Z7sigmoidd:
.LFB2687:
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	xorpd	.LC0(%rip), %xmm0	 #, tmp87
	call	exp	 #
	movapd	%xmm0, %xmm1	 #, tmp94
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	movsd	.LC1(%rip), %xmm0	 #, tmp91
	addsd	%xmm0, %xmm1	 # tmp91, tmp90
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	divsd	%xmm1, %xmm0	 # tmp90, tmp89
 # gen_mnist.h:15: }
	addq	$40, %rsp	 #,
	ret	
	.seh_endproc
	.p2align 4
	.globl	_Z8dsigmoidd
	.def	_Z8dsigmoidd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8dsigmoidd
_Z8dsigmoidd:
.LFB2688:
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	xorpd	.LC0(%rip), %xmm0	 #, tmp89
	call	exp	 #
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	movsd	.LC1(%rip), %xmm1	 #, tmp92
	addsd	%xmm1, %xmm0	 # tmp92, tmp91
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	movapd	%xmm1, %xmm2	 # tmp92, _8
	divsd	%xmm0, %xmm2	 # tmp91, _8
 # gen_mnist.h:20:         return z*(1.0-z);
	subsd	%xmm2, %xmm1	 # _8, tmp95
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	movapd	%xmm2, %xmm0	 # _8, _8
 # gen_mnist.h:20:         return z*(1.0-z);
	mulsd	%xmm1, %xmm0	 # tmp95, tmp94
 # gen_mnist.h:21: }
	addq	$40, %rsp	 #,
	ret	
	.seh_endproc
	.p2align 4
	.globl	_Z11init_paramsSt5arrayIdLy25450EE
	.def	_Z11init_paramsSt5arrayIdLy25450EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11init_paramsSt5arrayIdLy25450EE
_Z11init_paramsSt5arrayIdLy25450EE:
.LFB2689:
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$32, %rsp	 #,
	.seh_stackalloc	32
	.seh_endprologue
 # C:/msys64/mingw64/x86_64-w64-mingw32/include/time.h:230: static __inline time_t __CRTDECL time(time_t *_Time) { return _time64(_Time); }
	xorl	%ecx, %ecx	 #
 # gen_mnist.h:25:         std::srand((unsigned)std::time(nullptr));
	movl	$25450, %ebx	 #, ivtmp_2
 # C:/msys64/mingw64/x86_64-w64-mingw32/include/time.h:230: static __inline time_t __CRTDECL time(time_t *_Time) { return _time64(_Time); }
	call	*__imp__time64(%rip)	 #
	movq	%rax, %rcx	 # tmp87, _13
 # gen_mnist.h:25:         std::srand((unsigned)std::time(nullptr));
	call	srand	 #
	.p2align 4,,10
	.p2align 3
.L7:
 # gen_mnist.h:27:                 params[i] = 2.*((double)std::rand()/(double)RAND_MAX)-1.;
	call	rand	 #
 # gen_mnist.h:26:         for(int i=0; i<NPARAMS; ++i) {
	subl	$1, %ebx	 #, ivtmp_2
	jne	.L7	 #,
 # gen_mnist.h:29: }
	addq	$32, %rsp	 #,
	popq	%rbx	 #
	ret	
	.seh_endproc
	.p2align 4
	.globl	_Z7forwardPKdS0_Pd
	.def	_Z7forwardPKdS0_Pd;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7forwardPKdS0_Pd
_Z7forwardPKdS0_Pd:
.LFB2690:
	pushq	%r14	 #
	.seh_pushreg	%r14
	pushq	%r13	 #
	.seh_pushreg	%r13
	pushq	%r12	 #
	.seh_pushreg	%r12
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rdi	 #
	.seh_pushreg	%rdi
	pushq	%rsi	 #
	.seh_pushreg	%rsi
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$64, %rsp	 #,
	.seh_stackalloc	64
	movaps	%xmm6, 32(%rsp)	 #,
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)	 #,
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	leaq	_ZZ7forwardPKdS0_PdE1y(%rip), %r12	 #, tmp139
	movq	.LC0(%rip), %xmm7	 #, tmp137
	movsd	.LC1(%rip), %xmm6	 #, tmp138
	movq	%r12, %r13	 # tmp139, ivtmp.210
	leaq	256(%r12), %r14	 #, _105
 # gen_mnist.h:32: {
	movq	%rcx, %rdi	 # tmp140, params
	movq	%rdx, %rsi	 # tmp141, in
	leaq	8(%rcx), %rbx	 #, ivtmp.211
	movq	%r8, %rbp	 # tmp142, out
.L11:
 # gen_mnist.h:37:                 y[0+i] = params[0+785*i];
	movsd	-8(%rbx), %xmm1	 # MEM[base: _110, offset: -8B], y_I_lsm.163
 # gen_mnist.h:37:                 y[0+i] = params[0+785*i];
	xorl	%eax, %eax	 # ivtmp.199
	movsd	%xmm1, 0(%r13)	 # y_I_lsm.163, MEM[base: _109, offset: 0B]
	.p2align 4,,10
	.p2align 3
.L10:
 # gen_mnist.h:39:                         y[0+i] += params[0+785*i+j+1]*in[0+j];
	movupd	(%rsi,%rax), %xmm0	 # MEM[base: in_51(D), index: ivtmp.199_140, offset: 0B], vect__17.171
	movupd	(%rbx,%rax), %xmm3	 # MEM[base: _110, index: ivtmp.199_140, offset: 0B], tmp146
	addq	$16, %rax	 #, ivtmp.199
	mulpd	%xmm3, %xmm0	 # tmp146, vect__17.171
	movapd	%xmm0, %xmm2	 # vect__17.171, stmp__18.172
 # gen_mnist.h:39:                         y[0+i] += params[0+785*i+j+1]*in[0+j];
	unpckhpd	%xmm0, %xmm0	 # vect__17.171
	addsd	%xmm1, %xmm2	 # y_I_lsm.163, stmp__18.172
	movapd	%xmm0, %xmm1	 # vect__17.171, stmp__18.172
	addsd	%xmm2, %xmm1	 # stmp__18.172, y_I_lsm.163
	cmpq	$6272, %rax	 #, ivtmp.199
	jne	.L10	 #,
	movsd	%xmm1, 0(%r13)	 # y_I_lsm.163, MEM[base: _109, offset: 0B]
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	xorpd	%xmm7, %xmm1	 # tmp137, y_I_lsm.163
	addq	$8, %r13	 #, ivtmp.210
	addq	$6280, %rbx	 #, ivtmp.211
	movapd	%xmm1, %xmm0	 # y_I_lsm.163, tmp122
	call	exp	 #
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	movapd	%xmm6, %xmm4	 # tmp138, tmp126
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	addsd	%xmm6, %xmm0	 # tmp138, tmp124
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	divsd	%xmm0, %xmm4	 # tmp124, tmp126
 # gen_mnist.h:41:                 y[0+i] = sigmoid(y[0+i]);
	movsd	%xmm4, -8(%r13)	 # tmp126, MEM[base: _109, offset: 0B]
 # gen_mnist.h:36:         for(int i=0; i<32;++i) {
	cmpq	%r13, %r14	 # ivtmp.210, _105
	jne	.L11	 #,
	movq	%rdi, %rbx	 # params, ivtmp.190
	leaq	2640(%rdi), %rdi	 #, _139
.L13:
 # gen_mnist.h:46:                 out[0+i] = params[25120+33*i];
	movsd	200960(%rbx), %xmm1	 # MEM[base: _134, offset: 200960B], _38
 # gen_mnist.h:46:                 out[0+i] = params[25120+33*i];
	xorl	%eax, %eax	 # ivtmp.182
	movsd	%xmm1, 0(%rbp)	 # _38, MEM[base: _135, offset: 0B]
	.p2align 4,,10
	.p2align 3
.L12:
 # gen_mnist.h:48:                         out[0+i] += params[25120+33*i+j+1]*y[0+j];
	movsd	200968(%rbx,%rax), %xmm0	 # MEM[base: _134, index: ivtmp.182_8, offset: 200968B], MEM[base: _134, index: ivtmp.182_8, offset: 200968B]
	mulsd	(%r12,%rax), %xmm0	 # MEM[symbol: y, index: ivtmp.182_8, offset: 0B], tmp129
	addq	$8, %rax	 #, ivtmp.182
 # gen_mnist.h:48:                         out[0+i] += params[25120+33*i+j+1]*y[0+j];
	addsd	%xmm0, %xmm1	 # tmp129, _38
	movsd	%xmm1, 0(%rbp)	 # _38, MEM[base: _135, offset: 0B]
 # gen_mnist.h:47:                 for(int j=0; j<32;++j) {
	cmpq	$256, %rax	 #, ivtmp.182
	jne	.L12	 #,
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	xorpd	%xmm7, %xmm1	 # tmp137, _38
	addq	$264, %rbx	 #, ivtmp.190
	addq	$8, %rbp	 #, ivtmp.191
	movapd	%xmm1, %xmm0	 # _38, tmp131
	call	exp	 #
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	movapd	%xmm6, %xmm5	 # tmp138, tmp135
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	addsd	%xmm6, %xmm0	 # tmp138, tmp133
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	divsd	%xmm0, %xmm5	 # tmp133, tmp135
 # gen_mnist.h:50:                 out[0+i] = sigmoid(out[0+i]);
	movsd	%xmm5, -8(%rbp)	 # tmp135, MEM[base: _135, offset: 0B]
 # gen_mnist.h:45:         for(int i=0; i<10;++i) {
	cmpq	%rdi, %rbx	 # _139, ivtmp.190
	jne	.L13	 #,
 # gen_mnist.h:52: }
	movaps	32(%rsp), %xmm6	 #,
	movaps	48(%rsp), %xmm7	 #,
	addq	$64, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rdi	 #
	popq	%rbp	 #
	popq	%r12	 #
	popq	%r13	 #
	popq	%r14	 #
	ret	
	.seh_endproc
	.p2align 4
	.globl	_Z8backwardRKSt5arrayIdLy25450EEPdPKdS5_
	.def	_Z8backwardRKSt5arrayIdLy25450EEPdPKdS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8backwardRKSt5arrayIdLy25450EEPdPKdS5_
_Z8backwardRKSt5arrayIdLy25450EEPdPKdS5_:
.LFB2694:
	pushq	%r15	 #
	.seh_pushreg	%r15
	pushq	%r14	 #
	.seh_pushreg	%r14
	pushq	%r13	 #
	.seh_pushreg	%r13
	pushq	%r12	 #
	.seh_pushreg	%r12
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rdi	 #
	.seh_pushreg	%rdi
	pushq	%rsi	 #
	.seh_pushreg	%rsi
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$264, %rsp	 #,
	.seh_stackalloc	264
	movaps	%xmm6, 96(%rsp)	 #,
	.seh_savexmm	%xmm6, 96
	movaps	%xmm7, 112(%rsp)	 #,
	.seh_savexmm	%xmm7, 112
	movaps	%xmm8, 128(%rsp)	 #,
	.seh_savexmm	%xmm8, 128
	movaps	%xmm9, 144(%rsp)	 #,
	.seh_savexmm	%xmm9, 144
	movaps	%xmm10, 160(%rsp)	 #,
	.seh_savexmm	%xmm10, 160
	movaps	%xmm11, 176(%rsp)	 #,
	.seh_savexmm	%xmm11, 176
	movaps	%xmm12, 192(%rsp)	 #,
	.seh_savexmm	%xmm12, 192
	movaps	%xmm13, 208(%rsp)	 #,
	.seh_savexmm	%xmm13, 208
	movaps	%xmm14, 224(%rsp)	 #,
	.seh_savexmm	%xmm14, 224
	movaps	%xmm15, 240(%rsp)	 #,
	.seh_savexmm	%xmm15, 240
	.seh_endprologue
	leaq	_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %r13	 #, tmp496
 # gen_mnist.h:67: 		auto start = std::chrono::high_resolution_clock::now();
	xorl	%r15d, %r15d	 # ivtmp.360
	movq	%r13, %rdi	 # tmp496, tmp497
	movq	%r13, %rbx	 # tmp496, ivtmp.366
	movq	%r13, %rbp	 # ivtmp.366, tmp790
 # gen_mnist.h:60: {
	movq	%rcx, 336(%rsp)	 # tmp801, params
	movq	%r8, %rsi	 # tmp803, tmp803
	movl	$784, %ecx	 #, tmp499
	rep movsq
	movq	%rdx, 344(%rsp)	 # tmp802, dparams
	leaq	256+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1o(%rip), %rsi	 #, ivtmp.316
	movq	%r9, 360(%rsp)	 # tmp804, exp
 # gen_mnist.h:67: 		auto start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv	 #
	movq	%r13, 40(%rsp)	 # ivtmp.366, %sfp
	movq	.LC0(%rip), %xmm7	 #, tmp791
	movq	%rax, 48(%rsp)	 # tmp805, %sfp
	movsd	.LC1(%rip), %xmm6	 #, tmp792
	movq	%rdi, 64(%rsp)	 # tmp497, %sfp
.L20:
	leaq	_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1o(%rip), %rdi	 #, ivtmp.290
	movq	336(%rsp), %r13	 # params, ivtmp.350
	leaq	6272+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %r14	 #, ivtmp.354
	movq	%rdi, %r12	 # ivtmp.290, ivtmp.353
	.p2align 4,,10
	.p2align 3
.L19:
 # gen_mnist.h:74: 							o[0+i] += params[0+i*785+k+1] * y[0+k];
	movsd	8(%r13,%r15,8), %xmm0	 # MEM[base: _441, index: ivtmp.360_563, step: 8, offset: 8], MEM[base: _441, index: ivtmp.360_563, step: 8, offset: 8]
	movsd	(%rbx), %xmm1	 # MEM[base: _383, offset: 0], MEM[base: _441, index: ivtmp.360_563, step: 8, offset: 8]
	addq	$8, %r12	 #, ivtmp.353
	addq	$8, %r14	 #, ivtmp.354
	addq	$6280, %r13	 #, ivtmp.350
	mulsd	%xmm0, %xmm1	 # MEM[base: _441, index: ivtmp.360_563, step: 8, offset: 8], MEM[base: _441, index: ivtmp.360_563, step: 8, offset: 8]
 # gen_mnist.h:74: 							o[0+i] += params[0+i*785+k+1] * y[0+k];
	movsd	-6280(%r13), %xmm0	 # MEM[base: _441, offset: 0], tmp501
	addsd	%xmm1, %xmm0	 # _404, tmp501
	addsd	%xmm1, %xmm0	 # _404, tmp502
	addsd	%xmm1, %xmm0	 # _404, tmp503
	addsd	%xmm1, %xmm0	 # _404, tmp504
	addsd	%xmm1, %xmm0	 # _404, tmp505
	addsd	%xmm1, %xmm0	 # _404, tmp506
	addsd	%xmm1, %xmm0	 # _404, tmp507
	addsd	%xmm1, %xmm0	 # _404, _504
	movsd	%xmm0, -8(%r12)	 # _504, MEM[base: _421, offset: 0]
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	xorpd	%xmm7, %xmm0	 # tmp791, tmp508
	call	exp	 #
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	movapd	%xmm6, %xmm4	 # tmp792, tmp512
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	addsd	%xmm6, %xmm0	 # tmp792, tmp510
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	divsd	%xmm0, %xmm4	 # tmp510, tmp512
 # gen_mnist.h:76: 					y[784+i] = sigmoid(o[0+i]);
	movsd	%xmm4, -8(%r14)	 # tmp512, MEM[base: _449, offset: 0]
 # gen_mnist.h:71: 			for(int i=0; i<32;++i) {
	cmpq	%rsi, %r12	 # ivtmp.316, ivtmp.353
	jne	.L19	 #,
	addq	$8, %r15	 #, ivtmp.360
	addq	$64, %rbx	 #, ivtmp.366
 # gen_mnist.h:70: 		for(int k=0; k<784; k+=8) {
	cmpq	$784, %r15	 #, ivtmp.360
	jne	.L20	 #,
 # gen_mnist.h:80: 		auto end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv	 #
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:153: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	pxor	%xmm0, %xmm0	 # tmp515
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:469: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	48(%rsp), %rax	 # %sfp, tmp514
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:153: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movsd	.LC2(%rip), %xmm10	 #, tmp793
	cvtsi2sdq	%rax, %xmm0	 # tmp514, tmp515
	leaq	256+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1o(%rip), %rbx	 #, ivtmp.316
	leaq	6528+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %r15	 #, ivtmp.340
	leaq	336(%rdi), %r13	 #, _469
 # gen_mnist.h:83: 		start = std::chrono::high_resolution_clock::now();
	movq	%rbx, %rsi	 # ivtmp.316, ivtmp.338
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:153: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	divsd	%xmm10, %xmm0	 # tmp793, tmp516
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:383: 	  __r += __d.count();
	addsd	f01(%rip), %xmm0	 # f01.__r, tmp518
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:383: 	  __r += __d.count();
	movsd	%xmm0, f01(%rip)	 # tmp518, f01.__r
 # gen_mnist.h:83: 		start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv	 #
	movq	%rax, %r12	 # tmp808, start
	movq	336(%rsp), %rax	 # params, tmp893
	addq	$200960, %rax	 #, ivtmp.336
	movq	%rax, %r14	 # ivtmp.336, ivtmp.336
.L21:
 # gen_mnist.h:87:                 o[32+i] = params[25120+i*33];
	movsd	(%r14), %xmm0	 # MEM[base: _560, offset: 0], _27
	addq	$8, %rsi	 #, ivtmp.338
	addq	$8, %r15	 #, ivtmp.340
	addq	$264, %r14	 #, ivtmp.336
	movsd	%xmm0, -8(%rsi)	 # _27, MEM[base: _493, offset: 0]
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	movupd	-256(%r14), %xmm1	 # MEM[base: _560, offset: 8], vect__153.258
	mulpd	6272+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6272], vect__153.258
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	addsd	%xmm1, %xmm0	 # stmp__36.259, stmp__36.259
	unpckhpd	%xmm1, %xmm1	 # stmp__36.259
	addsd	%xmm1, %xmm0	 # stmp__36.259, _681
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	movupd	-240(%r14), %xmm1	 # MEM[base: _560, offset: 24], vect__153.258
	mulpd	6288+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6288], vect__153.258
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	addsd	%xmm1, %xmm0	 # stmp__36.259, stmp__36.259
	unpckhpd	%xmm1, %xmm1	 # stmp__36.259
	addsd	%xmm1, %xmm0	 # stmp__36.259, _696
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	movupd	-224(%r14), %xmm1	 # MEM[base: _560, offset: 40], vect__153.258
	mulpd	6304+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6304], vect__153.258
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	addsd	%xmm1, %xmm0	 # stmp__36.259, stmp__36.259
	unpckhpd	%xmm1, %xmm1	 # stmp__36.259
	addsd	%xmm1, %xmm0	 # stmp__36.259, _711
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	movupd	-208(%r14), %xmm1	 # MEM[base: _560, offset: 56], vect__153.258
	mulpd	6320+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6320], vect__153.258
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	addsd	%xmm1, %xmm0	 # stmp__36.259, stmp__36.259
	unpckhpd	%xmm1, %xmm1	 # stmp__36.259
	addsd	%xmm1, %xmm0	 # stmp__36.259, _726
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	movupd	-192(%r14), %xmm1	 # MEM[base: _560, offset: 72], vect__153.258
	mulpd	6336+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6336], vect__153.258
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	addsd	%xmm1, %xmm0	 # stmp__36.259, stmp__36.259
	unpckhpd	%xmm1, %xmm1	 # stmp__36.259
	addsd	%xmm1, %xmm0	 # stmp__36.259, _741
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	movupd	-176(%r14), %xmm1	 # MEM[base: _560, offset: 88], vect__153.258
	mulpd	6352+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6352], vect__153.258
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	addsd	%xmm1, %xmm0	 # stmp__36.259, stmp__36.259
	unpckhpd	%xmm1, %xmm1	 # stmp__36.259
	addsd	%xmm1, %xmm0	 # stmp__36.259, _756
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	movupd	-160(%r14), %xmm1	 # MEM[base: _560, offset: 104], vect__153.258
	mulpd	6368+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6368], vect__153.258
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	addsd	%xmm1, %xmm0	 # stmp__36.259, stmp__36.259
	unpckhpd	%xmm1, %xmm1	 # stmp__36.259
	addsd	%xmm1, %xmm0	 # stmp__36.259, _771
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	movupd	-144(%r14), %xmm1	 # MEM[base: _560, offset: 120], vect__153.258
	mulpd	6384+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6384], vect__153.258
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	addsd	%xmm1, %xmm0	 # stmp__36.259, stmp__36.259
	unpckhpd	%xmm1, %xmm1	 # stmp__36.259
	addsd	%xmm1, %xmm0	 # stmp__36.259, _786
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	movupd	-128(%r14), %xmm1	 # MEM[base: _560, offset: 136], vect__153.258
	mulpd	6400+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6400], vect__153.258
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	addsd	%xmm1, %xmm0	 # stmp__36.259, stmp__36.259
	unpckhpd	%xmm1, %xmm1	 # stmp__36.259
	addsd	%xmm1, %xmm0	 # stmp__36.259, _801
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	movupd	-112(%r14), %xmm1	 # MEM[base: _560, offset: 152], vect__153.258
	mulpd	6416+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6416], vect__153.258
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	addsd	%xmm1, %xmm0	 # stmp__36.259, stmp__36.259
	unpckhpd	%xmm1, %xmm1	 # stmp__36.259
	addsd	%xmm1, %xmm0	 # stmp__36.259, _816
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	movupd	-96(%r14), %xmm1	 # MEM[base: _560, offset: 168], vect__153.258
	mulpd	6432+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6432], vect__153.258
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	addsd	%xmm1, %xmm0	 # stmp__36.259, stmp__36.259
	unpckhpd	%xmm1, %xmm1	 # stmp__36.259
	addsd	%xmm1, %xmm0	 # stmp__36.259, _831
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	movupd	-80(%r14), %xmm1	 # MEM[base: _560, offset: 184], vect__153.258
	mulpd	6448+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6448], vect__153.258
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	addsd	%xmm1, %xmm0	 # stmp__36.259, stmp__36.259
	unpckhpd	%xmm1, %xmm1	 # stmp__36.259
	addsd	%xmm1, %xmm0	 # stmp__36.259, _846
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	movupd	-64(%r14), %xmm1	 # MEM[base: _560, offset: 200], vect__153.258
	mulpd	6464+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6464], vect__153.258
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	addsd	%xmm1, %xmm0	 # stmp__36.259, stmp__36.259
	unpckhpd	%xmm1, %xmm1	 # stmp__36.259
	addsd	%xmm1, %xmm0	 # stmp__36.259, _861
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	movupd	-48(%r14), %xmm1	 # MEM[base: _560, offset: 216], vect__153.258
	mulpd	6480+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6480], vect__153.258
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	addsd	%xmm1, %xmm0	 # stmp__36.259, stmp__36.259
	unpckhpd	%xmm1, %xmm1	 # stmp__36.259
	addsd	%xmm1, %xmm0	 # stmp__36.259, _876
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	movupd	-32(%r14), %xmm1	 # MEM[base: _560, offset: 232], vect__153.258
	mulpd	6496+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6496], vect__153.258
	movupd	-16(%r14), %xmm2	 # MEM[base: _560, offset: 248], vect__153.258
	mulpd	6512+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm2	 # MEM[(value_type &)&y + 6512], vect__153.258
 # gen_mnist.h:89:                         o[32+i] += params[25120+i*33+j+1] * y[784+j];
	addsd	%xmm1, %xmm0	 # stmp__36.259, stmp__36.259
	unpckhpd	%xmm1, %xmm1	 # stmp__36.259
	addsd	%xmm1, %xmm0	 # stmp__36.259, _891
	addsd	%xmm2, %xmm0	 # stmp__36.259, stmp__36.259
	unpckhpd	%xmm2, %xmm2	 # stmp__36.259
	addsd	%xmm2, %xmm0	 # stmp__36.259, _36
	movsd	%xmm0, -8(%rsi)	 # _36, MEM[base: _493, offset: 0]
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	xorpd	%xmm7, %xmm0	 # tmp791, tmp584
	call	exp	 #
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	movapd	%xmm6, %xmm3	 # tmp792, tmp588
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	addsd	%xmm6, %xmm0	 # tmp792, tmp586
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	divsd	%xmm0, %xmm3	 # tmp586, tmp588
 # gen_mnist.h:91:                 y[816+i] = sigmoid(o[32+i]);
	movsd	%xmm3, -8(%r15)	 # tmp588, MEM[base: _485, offset: 0]
 # gen_mnist.h:86:         for(int i=0; i<10;++i) {
	cmpq	%rsi, %r13	 # ivtmp.338, _469
	jne	.L21	 #,
 # gen_mnist.h:94: 		end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv	 #
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:153: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	pxor	%xmm0, %xmm0	 # tmp591
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	movapd	6528+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm2	 # MEM[(value_type &)&y + 6528], vect__49.246
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:469: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%r12, %rax	 # start, tmp590
	leaq	6288+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %r12	 #, tmp799
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:153: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	cvtsi2sdq	%rax, %xmm0	 # tmp590, tmp591
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	movq	360(%rsp), %rax	 # exp, tmp911
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:153: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	divsd	%xmm10, %xmm0	 # tmp793, tmp592
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:383: 	  __r += __d.count();
	addsd	f12(%rip), %xmm0	 # f12.__r, tmp594
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:383: 	  __r += __d.count();
	movsd	%xmm0, f12(%rip)	 # tmp594, f12.__r
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	movupd	(%rax), %xmm3	 # MEM[(const double *)exp_161(D)], vect__46.245
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	movapd	.LC3(%rip), %xmm0	 #, tmp601
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	subpd	%xmm3, %xmm2	 #, vect__49.246
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	pxor	%xmm3, %xmm3	 # tmp916
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	movapd	%xmm2, %xmm1	 # vect__49.246, vect__51.249
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	movaps	%xmm2, 256+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back(%rip)	 # vect__49.246, MEM[(value_type &)&back + 256]
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	mulpd	%xmm0, %xmm1	 # tmp601, vect__51.249
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	mulpd	%xmm2, %xmm1	 # vect__49.246, vect__165.250
	movapd	%xmm1, %xmm2	 # vect__165.250, stmp_loss_166.251
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	unpckhpd	%xmm1, %xmm1	 # stmp_loss_166.251
	addsd	%xmm3, %xmm2	 # tmp916, stmp_loss_166.251
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	movupd	16(%rax), %xmm3	 # MEM[(const double *)exp_161(D) + 16B], vect__46.245
	movaps	%xmm3, 48(%rsp)	 # vect__46.245, %sfp
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	movapd	6544+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm3	 # MEM[(value_type &)&y + 6544], vect__49.246
	subpd	48(%rsp), %xmm3	 # %sfp, vect__49.246
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	addsd	%xmm1, %xmm2	 # stmp_loss_166.251, loss
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	movapd	%xmm3, %xmm1	 # vect__49.246, vect__51.249
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	movaps	%xmm3, 272+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back(%rip)	 # vect__49.246, MEM[(value_type &)&back + 272]
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	mulpd	%xmm0, %xmm1	 # tmp601, vect__51.249
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	mulpd	%xmm3, %xmm1	 # vect__49.246, vect__165.250
	movapd	%xmm1, %xmm3	 # vect__165.250, stmp_loss_166.251
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	unpckhpd	%xmm1, %xmm1	 # vect__165.250
	addsd	%xmm2, %xmm3	 # loss, stmp_loss_166.251
	movapd	%xmm1, %xmm2	 # vect__165.250, stmp_loss_166.251
	addsd	%xmm3, %xmm2	 # stmp_loss_166.251, loss
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	movupd	32(%rax), %xmm3	 # MEM[(const double *)exp_161(D) + 32B], vect__46.245
	movaps	%xmm3, 48(%rsp)	 # vect__46.245, %sfp
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	movapd	6560+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm3	 # MEM[(value_type &)&y + 6560], vect__49.246
	subpd	48(%rsp), %xmm3	 # %sfp, vect__49.246
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	movapd	%xmm3, %xmm1	 # vect__49.246, vect__51.249
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	movaps	%xmm3, 288+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back(%rip)	 # vect__49.246, MEM[(value_type &)&back + 288]
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	mulpd	%xmm0, %xmm1	 # tmp601, vect__51.249
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	mulpd	%xmm3, %xmm1	 # vect__49.246, vect__165.250
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	movupd	48(%rax), %xmm3	 # MEM[(const double *)exp_161(D) + 48B], vect__46.245
	movaps	%xmm3, 48(%rsp)	 # vect__46.245, %sfp
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	movapd	6576+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm3	 # MEM[(value_type &)&y + 6576], vect__49.246
	subpd	48(%rsp), %xmm3	 # %sfp, vect__49.246
	addsd	%xmm1, %xmm2	 # stmp_loss_166.251, stmp_loss_166.251
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	unpckhpd	%xmm1, %xmm1	 # stmp_loss_166.251
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	movaps	%xmm3, 304+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back(%rip)	 # vect__49.246, MEM[(value_type &)&back + 304]
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	addsd	%xmm2, %xmm1	 # stmp_loss_166.251, loss
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	movapd	%xmm3, %xmm2	 # vect__49.246, vect__51.249
	mulpd	%xmm0, %xmm2	 # tmp601, vect__51.249
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	mulpd	%xmm3, %xmm2	 # vect__49.246, vect__165.250
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	movapd	6592+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm3	 # MEM[(value_type &)&y + 6592], vect__49.246
	addsd	%xmm2, %xmm1	 # stmp_loss_166.251, stmp_loss_166.251
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	unpckhpd	%xmm2, %xmm2	 # stmp_loss_166.251
	addsd	%xmm2, %xmm1	 # stmp_loss_166.251, loss
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	movupd	64(%rax), %xmm2	 # MEM[(const double *)exp_161(D) + 64B], vect__46.245
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	subpd	%xmm2, %xmm3	 # vect__46.245, vect__49.246
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	mulpd	%xmm3, %xmm0	 # vect__49.246, vect__51.249
 # gen_mnist.h:101:                 back[32+i] = y[816+i]- exp[i];
	movaps	%xmm3, 320+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back(%rip)	 # vect__49.246, MEM[(value_type &)&back + 320]
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	mulpd	%xmm3, %xmm0	 # vect__49.246, vect__165.250
	addsd	%xmm0, %xmm1	 # stmp_loss_166.251, stmp_loss_166.251
 # gen_mnist.h:102:                 loss += 0.5*back[32+i]*back[32+i];
	unpckhpd	%xmm0, %xmm0	 # stmp_loss_166.251
	addsd	%xmm1, %xmm0	 # stmp_loss_166.251, stmp_loss_166.251
	movapd	%xmm0, %xmm8	 # stmp_loss_166.251, <retval>
 # gen_mnist.h:105: 		start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv	 #
	leaq	256+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back(%rip), %r8	 #, ivtmp.318
	movq	%rax, 48(%rsp)	 # tmp811, %sfp
	movq	344(%rsp), %rax	 # dparams, tmp936
	leaq	200968(%rax), %rsi	 #, _730
	leaq	203608(%rax), %r13	 #, _82
	movq	40(%rsp), %rax	 # %sfp, ivtmp.366
	movq	%rsi, %r15	 # _730, ivtmp.323
	movq	%rsi, %rcx	 # _730, _730
	movq	%rbx, %rsi	 # ivtmp.316, ivtmp.316
	movq	%r8, %rbx	 # ivtmp.318, ivtmp.318
	leaq	6528(%rax), %r14	 #, _313
	jmp	.L26	 #
.L33:
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movapd	6272+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6272], vect__174.233
	unpcklpd	%xmm0, %xmm0	 # tmp651
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movupd	(%r15), %xmm3	 # MEM[base: _41, offset: 0B], tmp944
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	mulpd	%xmm0, %xmm1	 # tmp651, vect__174.233
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	addpd	%xmm3, %xmm1	 # tmp944, vect__75.237
	movupd	16(%r15), %xmm3	 # MEM[base: _41, offset: 16B], tmp946
	movups	%xmm1, (%r15)	 # vect__75.237, MEM[base: _41, offset: 0B]
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movapd	6288+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6288], vect__174.233
	mulpd	%xmm0, %xmm1	 # tmp651, vect__174.233
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	addpd	%xmm3, %xmm1	 # tmp946, vect__75.237
	movupd	32(%r15), %xmm3	 # MEM[base: _41, offset: 32B], tmp948
	movups	%xmm1, 16(%r15)	 # vect__75.237, MEM[base: _41, offset: 16B]
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movapd	6304+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6304], vect__174.233
	mulpd	%xmm0, %xmm1	 # tmp651, vect__174.233
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	addpd	%xmm3, %xmm1	 # tmp948, vect__75.237
	movupd	48(%r15), %xmm3	 # MEM[base: _41, offset: 48B], tmp950
	movups	%xmm1, 32(%r15)	 # vect__75.237, MEM[base: _41, offset: 32B]
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movapd	6320+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6320], vect__174.233
	mulpd	%xmm0, %xmm1	 # tmp651, vect__174.233
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	addpd	%xmm3, %xmm1	 # tmp950, vect__75.237
	movupd	64(%r15), %xmm3	 # MEM[base: _41, offset: 64B], tmp952
	movups	%xmm1, 48(%r15)	 # vect__75.237, MEM[base: _41, offset: 48B]
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movapd	6336+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6336], vect__174.233
	mulpd	%xmm0, %xmm1	 # tmp651, vect__174.233
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	addpd	%xmm3, %xmm1	 # tmp952, vect__75.237
	movupd	80(%r15), %xmm3	 # MEM[base: _41, offset: 80B], tmp954
	movups	%xmm1, 64(%r15)	 # vect__75.237, MEM[base: _41, offset: 64B]
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movapd	6352+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6352], vect__174.233
	mulpd	%xmm0, %xmm1	 # tmp651, vect__174.233
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	addpd	%xmm3, %xmm1	 # tmp954, vect__75.237
	movupd	96(%r15), %xmm3	 # MEM[base: _41, offset: 96B], tmp956
	movups	%xmm1, 80(%r15)	 # vect__75.237, MEM[base: _41, offset: 80B]
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movapd	6368+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6368], vect__174.233
	mulpd	%xmm0, %xmm1	 # tmp651, vect__174.233
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	addpd	%xmm3, %xmm1	 # tmp956, vect__75.237
	movupd	112(%r15), %xmm3	 # MEM[base: _41, offset: 112B], tmp958
	movups	%xmm1, 96(%r15)	 # vect__75.237, MEM[base: _41, offset: 96B]
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movapd	6384+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6384], vect__174.233
	mulpd	%xmm0, %xmm1	 # tmp651, vect__174.233
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	addpd	%xmm3, %xmm1	 # tmp958, vect__75.237
	movupd	128(%r15), %xmm3	 # MEM[base: _41, offset: 128B], tmp960
	movups	%xmm1, 112(%r15)	 # vect__75.237, MEM[base: _41, offset: 112B]
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movapd	6400+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6400], vect__174.233
	mulpd	%xmm0, %xmm1	 # tmp651, vect__174.233
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	addpd	%xmm3, %xmm1	 # tmp960, vect__75.237
	movupd	144(%r15), %xmm3	 # MEM[base: _41, offset: 144B], tmp962
	movups	%xmm1, 128(%r15)	 # vect__75.237, MEM[base: _41, offset: 128B]
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movapd	6416+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6416], vect__174.233
	mulpd	%xmm0, %xmm1	 # tmp651, vect__174.233
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	addpd	%xmm3, %xmm1	 # tmp962, vect__75.237
	movupd	160(%r15), %xmm3	 # MEM[base: _41, offset: 160B], tmp964
	movups	%xmm1, 144(%r15)	 # vect__75.237, MEM[base: _41, offset: 144B]
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movapd	6432+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6432], vect__174.233
	mulpd	%xmm0, %xmm1	 # tmp651, vect__174.233
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	addpd	%xmm3, %xmm1	 # tmp964, vect__75.237
	movups	%xmm1, 160(%r15)	 # vect__75.237, MEM[base: _41, offset: 160B]
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movapd	6448+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6448], vect__174.233
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movupd	176(%r15), %xmm3	 # MEM[base: _41, offset: 176B], tmp966
	movupd	192(%r15), %xmm5	 # MEM[base: _41, offset: 192B], tmp968
	movupd	224(%r15), %xmm2	 # MEM[base: _41, offset: 224B], tmp972
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	mulpd	%xmm0, %xmm1	 # tmp651, vect__174.233
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	addpd	%xmm3, %xmm1	 # tmp966, vect__75.237
	movupd	208(%r15), %xmm3	 # MEM[base: _41, offset: 208B], tmp970
	movups	%xmm1, 176(%r15)	 # vect__75.237, MEM[base: _41, offset: 176B]
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movapd	6464+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6464], vect__174.233
	mulpd	%xmm0, %xmm1	 # tmp651, vect__174.233
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	addpd	%xmm5, %xmm1	 # tmp968, vect__75.237
	movupd	240(%r15), %xmm5	 # MEM[base: _41, offset: 240B], tmp973
	movups	%xmm1, 192(%r15)	 # vect__75.237, MEM[base: _41, offset: 192B]
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movapd	6480+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6480], vect__174.233
	mulpd	%xmm0, %xmm1	 # tmp651, vect__174.233
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	addpd	%xmm3, %xmm1	 # tmp970, vect__75.237
	movups	%xmm1, 208(%r15)	 # vect__75.237, MEM[base: _41, offset: 208B]
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movapd	6496+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm1	 # MEM[(value_type &)&y + 6496], vect__174.233
	mulpd	%xmm0, %xmm1	 # tmp651, vect__174.233
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	addpd	%xmm2, %xmm1	 # tmp972, vect__75.237
	movups	%xmm1, 224(%r15)	 # vect__75.237, MEM[base: _41, offset: 224B]
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	mulpd	6512+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %xmm0	 # MEM[(value_type &)&y + 6512], vect__174.233
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	addpd	%xmm5, %xmm0	 # tmp973, vect__75.237
	movups	%xmm0, 240(%r15)	 # vect__75.237, MEM[base: _41, offset: 240B]
.L24:
	addq	$264, %r15	 #, ivtmp.323
	addq	$8, %rsi	 #, ivtmp.316
	addq	$8, %rbx	 #, ivtmp.318
 # gen_mnist.h:108:         for(int i=0; i<10; ++i) {
	cmpq	%r15, %r13	 # ivtmp.323, _82
	je	.L45	 #,
.L26:
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	movsd	(%rsi), %xmm0	 # MEM[base: _156, offset: 0], MEM[base: _156, offset: 0]
	movq	%rcx, 72(%rsp)	 # _730, %sfp
	xorpd	%xmm7, %xmm0	 # tmp791, tmp633
	call	exp	 #
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	movapd	%xmm6, %xmm1	 # tmp792, _203
	leaq	6272+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %rcx	 #, tmp942
	leaq	16(%r15), %rax	 #, tmp644
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	addsd	%xmm6, %xmm0	 # tmp792, tmp636
	cmpq	%rax, %rcx	 # tmp644, tmp942
	movq	72(%rsp), %rcx	 # %sfp, _730
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	divsd	%xmm0, %xmm1	 # tmp636, _203
 # gen_mnist.h:20:         return z*(1.0-z);
	movapd	%xmm6, %xmm0	 # tmp792, tmp639
	subsd	%xmm1, %xmm0	 # _203, tmp639
 # gen_mnist.h:20:         return z*(1.0-z);
	mulsd	%xmm1, %xmm0	 # _203, tmp641
 # gen_mnist.h:109:                 back[32+i] *= dsigmoid(o[32+i]);
	mulsd	(%rbx), %xmm0	 # MEM[base: _526, offset: 0], _56
	movsd	%xmm0, (%rbx)	 # _56, MEM[base: _526, offset: 0]
 # gen_mnist.h:110:                 dparams[25120+i*33+0] += back[32+i];
	movsd	-8(%r15), %xmm1	 # MEM[base: _41, offset: -8B], tmp642
	addsd	%xmm0, %xmm1	 # _56, tmp642
	movsd	%xmm1, -8(%r15)	 # tmp642, MEM[base: _41, offset: -8B]
	jnb	.L33	 #,
	cmpq	%r15, %r12	 # ivtmp.323, tmp799
	jbe	.L33	 #,
	movq	64(%rsp), %rax	 # %sfp, ivtmp.305
	movq	%r15, %rdx	 # ivtmp.323, ivtmp.307
.L25:
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	movsd	(%rax), %xmm1	 # MEM[base: _354, offset: 0], tmp716
	addq	$8, %rax	 #, ivtmp.305
	addq	$8, %rdx	 #, ivtmp.307
	mulsd	%xmm0, %xmm1	 # _56, tmp716
 # gen_mnist.h:112:                         dparams[25120+i*33+j+1] += back[32+i]*y[784+j];
	addsd	-8(%rdx), %xmm1	 # MEM[base: _352, offset: 0B], tmp717
	movsd	%xmm1, -8(%rdx)	 # tmp717, MEM[base: _352, offset: 0B]
 # gen_mnist.h:111:                 for(int j=0; j<32; ++j) {
	cmpq	%rax, %r14	 # ivtmp.305, _313
	jne	.L25	 #,
	jmp	.L24	 #
.L45:
	movq	%rcx, %rsi	 # _730, _730
	leaq	_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back(%rip), %rbx	 #, ivtmp.291
 # gen_mnist.h:116: 		end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv	 #
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:153: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	pxor	%xmm0, %xmm0	 # tmp720
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:469: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	48(%rsp), %rax	 # %sfp, tmp719
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:153: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	cvtsi2sdq	%rax, %xmm0	 # tmp719, tmp720
	divsd	%xmm10, %xmm0	 # tmp793, tmp721
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:383: 	  __r += __d.count();
	addsd	b2(%rip), %xmm0	 # b2.__r, tmp723
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:383: 	  __r += __d.count();
	movsd	%xmm0, b2(%rip)	 # tmp723, b2.__r
 # gen_mnist.h:119: 		start = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv	 #
	movsd	280+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back(%rip), %xmm1	 # back, pretmp_550
	movsd	304+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back(%rip), %xmm13	 # back, pretmp_562
	movq	%rax, %r13	 # tmp814, start
	movq	336(%rsp), %rax	 # params, tmp977
	movsd	312+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back(%rip), %xmm12	 # back, pretmp_566
	movsd	320+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back(%rip), %xmm11	 # back, pretmp_570
	movsd	328+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back(%rip), %xmm5	 # back, pretmp_574
	movsd	%xmm13, 64(%rsp)	 # pretmp_562, %sfp
	movapd	%xmm1, %xmm13	 # pretmp_550, pretmp_550
	leaq	200968(%rax), %r15	 #, ivtmp.288
	movq	344(%rsp), %rax	 # dparams, tmp978
	movsd	256+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back(%rip), %xmm4	 # back, pretmp_538
	movapd	%xmm12, %xmm9	 # pretmp_566, pretmp_566
	movsd	264+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back(%rip), %xmm3	 # back, pretmp_542
	movsd	272+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back(%rip), %xmm2	 # back, pretmp_546
	movapd	%xmm11, %xmm0	 # pretmp_570, pretmp_570
	movsd	%xmm5, 48(%rsp)	 # pretmp_574, %sfp
	leaq	8(%rax), %r14	 #, ivtmp.294
	movq	40(%rsp), %rax	 # %sfp, ivtmp.366
	movapd	%xmm8, %xmm5	 # <retval>, <retval>
	movsd	288+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back(%rip), %xmm15	 # back, pretmp_554
	movsd	64(%rsp), %xmm1	 # %sfp, pretmp_562
	movapd	%xmm2, %xmm12	 # pretmp_546, pretmp_546
	movapd	%xmm3, %xmm11	 # pretmp_542, pretmp_542
	movsd	296+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back(%rip), %xmm14	 # back, pretmp_558
	movapd	%xmm4, %xmm8	 # pretmp_538, pretmp_538
	leaq	6272(%rax), %r12	 #, _40
	movapd	%xmm5, %xmm4	 # <retval>, <retval>
	movapd	%xmm0, %xmm3	 # pretmp_570, pretmp_570
	movapd	%xmm9, %xmm2	 # pretmp_566, pretmp_566
.L32:
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	movsd	(%r15), %xmm9	 # MEM[base: _630, offset: 0], tmp735
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	pxor	%xmm5, %xmm5	 # tmp981
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	movsd	264(%r15), %xmm0	 # MEM[base: _630, offset: 264], tmp738
	movsd	%xmm4, 88(%rsp)	 # <retval>, %sfp
	movsd	%xmm1, 80(%rsp)	 # pretmp_562, %sfp
	mulsd	%xmm8, %xmm9	 # pretmp_538, tmp735
	movsd	%xmm2, 72(%rsp)	 # pretmp_566, %sfp
	mulsd	%xmm11, %xmm0	 # pretmp_542, tmp738
	movsd	%xmm3, 64(%rsp)	 # pretmp_570, %sfp
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	addsd	%xmm5, %xmm9	 # tmp981, tmp736
	addsd	%xmm0, %xmm9	 # tmp738, tmp739
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	movsd	528(%r15), %xmm0	 # MEM[base: _630, offset: 528], tmp740
	mulsd	%xmm12, %xmm0	 # pretmp_546, tmp740
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	addsd	%xmm0, %xmm9	 # tmp740, tmp741
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	movsd	792(%r15), %xmm0	 # MEM[base: _630, offset: 792], tmp742
	mulsd	%xmm13, %xmm0	 # pretmp_550, tmp742
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	addsd	%xmm0, %xmm9	 # tmp742, tmp743
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	movsd	1056(%r15), %xmm0	 # MEM[base: _630, offset: 1056], tmp744
	mulsd	%xmm15, %xmm0	 # pretmp_554, tmp744
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	addsd	%xmm0, %xmm9	 # tmp744, tmp745
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	movsd	1320(%r15), %xmm0	 # MEM[base: _630, offset: 1320], tmp746
	mulsd	%xmm14, %xmm0	 # pretmp_558, tmp746
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	addsd	%xmm0, %xmm9	 # tmp746, tmp747
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	movapd	%xmm1, %xmm0	 # pretmp_562, tmp748
	mulsd	1584(%r15), %xmm0	 # MEM[base: _630, offset: 1584], tmp748
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	addsd	%xmm0, %xmm9	 # tmp748, tmp749
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	movapd	%xmm2, %xmm0	 # pretmp_566, tmp750
	mulsd	1848(%r15), %xmm0	 # MEM[base: _630, offset: 1848], tmp750
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	addsd	%xmm0, %xmm9	 # tmp750, tmp751
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	movapd	%xmm3, %xmm0	 # pretmp_570, tmp752
	mulsd	2112(%r15), %xmm0	 # MEM[base: _630, offset: 2112], tmp752
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	addsd	%xmm0, %xmm9	 # tmp752, tmp753
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	movsd	48(%rsp), %xmm0	 # %sfp, tmp754
	mulsd	2376(%r15), %xmm0	 # MEM[base: _630, offset: 2376], tmp754
 # gen_mnist.h:125:                         back[0+i] += back[32+j]*params[25120+j*33+i+1];
	addsd	%xmm0, %xmm9	 # tmp754, _392
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	movsd	(%rdi), %xmm0	 # MEM[base: _850, offset: 0], MEM[base: _850, offset: 0]
	xorpd	%xmm7, %xmm0	 # tmp791, tmp755
	call	exp	 #
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	movapd	%xmm6, %xmm3	 # tmp792, _216
 # gen_mnist.h:20:         return z*(1.0-z);
	movapd	%xmm6, %xmm5	 # tmp792, tmp761
	leaq	16(%r14), %rax	 #, tmp766
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	addsd	%xmm6, %xmm0	 # tmp792, tmp758
	cmpq	%rax, %rbp	 # tmp766, tmp790
	movsd	72(%rsp), %xmm2	 # %sfp, pretmp_566
	movsd	80(%rsp), %xmm1	 # %sfp, pretmp_562
	movsd	88(%rsp), %xmm4	 # %sfp, <retval>
 # gen_mnist.h:14:         return 1./(1. + std::exp(-x));
	divsd	%xmm0, %xmm3	 # tmp758, _216
 # gen_mnist.h:20:         return z*(1.0-z);
	subsd	%xmm3, %xmm5	 # _216, tmp761
 # gen_mnist.h:20:         return z*(1.0-z);
	mulsd	%xmm3, %xmm5	 # _216, tmp763
	movsd	64(%rsp), %xmm3	 # %sfp, pretmp_570
 # gen_mnist.h:127:                 back[0+i] *= dsigmoid(o[0+i]);
	mulsd	%xmm9, %xmm5	 # _392, _91
	movsd	%xmm5, (%rbx)	 # _91, MEM[base: _835, offset: 0]
 # gen_mnist.h:128:                 dparams[0+i*785+0] += back[0+i];
	movsd	-8(%r14), %xmm0	 # MEM[base: _820, offset: -8B], tmp764
	addsd	%xmm5, %xmm0	 # _91, tmp764
	movsd	%xmm0, -8(%r14)	 # tmp764, MEM[base: _820, offset: -8B]
	jnb	.L34	 #,
	leaq	16+_ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y(%rip), %rax	 #, tmp994
	cmpq	%r14, %rax	 # ivtmp.294, tmp994
	ja	.L27	 #,
.L34:
	unpcklpd	%xmm5, %xmm5	 # vect_cst__413
	xorl	%eax, %eax	 # ivtmp.276
	.p2align 4,,10
	.p2align 3
.L30:
 # gen_mnist.h:130:                         dparams[0+i*785+j+1] += back[0+i]*y[0+j];
	movapd	0(%rbp,%rax), %xmm0	 # MEM[symbol: y, index: ivtmp.276_587, offset: 0], vect__189.223
 # gen_mnist.h:130:                         dparams[0+i*785+j+1] += back[0+i]*y[0+j];
	movupd	(%r14,%rax), %xmm9	 # MEM[base: _820, index: ivtmp.276_587, offset: 0B], tmp996
 # gen_mnist.h:130:                         dparams[0+i*785+j+1] += back[0+i]*y[0+j];
	mulpd	%xmm5, %xmm0	 # vect_cst__413, vect__189.223
 # gen_mnist.h:130:                         dparams[0+i*785+j+1] += back[0+i]*y[0+j];
	addpd	%xmm9, %xmm0	 # tmp996, vect__107.227
	movups	%xmm0, (%r14,%rax)	 # vect__107.227, MEM[base: _820, index: ivtmp.276_587, offset: 0B]
	addq	$16, %rax	 #, ivtmp.276
	cmpq	$6272, %rax	 #, ivtmp.276
	jne	.L30	 #,
.L29:
	addq	$6280, %r14	 #, ivtmp.294
	addq	$8, %r15	 #, ivtmp.288
	addq	$8, %rdi	 #, ivtmp.290
	addq	$8, %rbx	 #, ivtmp.291
 # gen_mnist.h:122:         for(int i=0; i<32; ++i) {
	cmpq	%rsi, %r14	 # _730, ivtmp.294
	jne	.L32	 #,
	movapd	%xmm4, %xmm8	 # <retval>, <retval>
 # gen_mnist.h:134: 		end = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv	 #
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:153: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	pxor	%xmm0, %xmm0	 # tmp782
 # gen_mnist.h:138: }
	movaps	96(%rsp), %xmm6	 #,
	movaps	112(%rsp), %xmm7	 #,
	movaps	144(%rsp), %xmm9	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:469: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%r13, %rax	 # start, tmp781
 # gen_mnist.h:138: }
	movaps	176(%rsp), %xmm11	 #,
	movaps	192(%rsp), %xmm12	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:153: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	cvtsi2sdq	%rax, %xmm0	 # tmp781, tmp782
 # gen_mnist.h:138: }
	movaps	208(%rsp), %xmm13	 #,
	movaps	224(%rsp), %xmm14	 #,
	movaps	240(%rsp), %xmm15	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:153: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	divsd	%xmm10, %xmm0	 # tmp793, tmp783
 # gen_mnist.h:138: }
	movaps	160(%rsp), %xmm10	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:383: 	  __r += __d.count();
	addsd	b1(%rip), %xmm0	 # b1.__r, tmp785
 # C:/msys64/mingw64/include/c++/9.2.0/chrono:383: 	  __r += __d.count();
	movsd	%xmm0, b1(%rip)	 # tmp785, b1.__r
 # gen_mnist.h:138: }
	movapd	%xmm8, %xmm0	 # <retval>,
	movaps	128(%rsp), %xmm8	 #,
	addq	$264, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rdi	 #
	popq	%rbp	 #
	popq	%r12	 #
	popq	%r13	 #
	popq	%r14	 #
	popq	%r15	 #
	ret	
.L27:
 # gen_mnist.h:128:                 dparams[0+i*785+0] += back[0+i];
	movq	40(%rsp), %rax	 # %sfp, ivtmp.268
	movq	%r14, %rdx	 # ivtmp.294, ivtmp.269
	.p2align 4,,10
	.p2align 3
.L31:
 # gen_mnist.h:130:                         dparams[0+i*785+j+1] += back[0+i]*y[0+j];
	movsd	(%rax), %xmm0	 # MEM[base: _175, offset: 0], tmp778
	addq	$8, %rax	 #, ivtmp.268
	addq	$8, %rdx	 #, ivtmp.269
	mulsd	%xmm5, %xmm0	 # _91, tmp778
 # gen_mnist.h:130:                         dparams[0+i*785+j+1] += back[0+i]*y[0+j];
	addsd	-8(%rdx), %xmm0	 # MEM[base: _585, offset: 0B], tmp779
	movsd	%xmm0, -8(%rdx)	 # tmp779, MEM[base: _585, offset: 0B]
 # gen_mnist.h:129:                 for(int j=0; j<784; ++j) {
	cmpq	%rax, %r12	 # ivtmp.268, _40
	jne	.L31	 #,
	jmp	.L29	 #
	.seh_endproc
	.p2align 4
	.globl	_Z5trainPKdS0_iRSt5arrayIdLy25450EEiid
	.def	_Z5trainPKdS0_iRSt5arrayIdLy25450EEiid;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z5trainPKdS0_iRSt5arrayIdLy25450EEiid
_Z5trainPKdS0_iRSt5arrayIdLy25450EEiid:
.LFB2697:
	pushq	%r15	 #
	.seh_pushreg	%r15
	pushq	%r14	 #
	.seh_pushreg	%r14
	pushq	%r13	 #
	.seh_pushreg	%r13
	pushq	%r12	 #
	.seh_pushreg	%r12
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	pushq	%rdi	 #
	.seh_pushreg	%rdi
	pushq	%rsi	 #
	.seh_pushreg	%rsi
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	subq	$104, %rsp	 #,
	.seh_stackalloc	104
	movaps	%xmm6, 64(%rsp)	 #,
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)	 #,
	.seh_savexmm	%xmm7, 80
	.seh_endprologue
 # gen_mnist.h:141: {
	movq	%rcx, %rsi	 # tmp228, in
 # gen_mnist.h:142:         int* indices = (int*)malloc(size*sizeof(int));
	movslq	%r8d, %rcx	 #, size
 # gen_mnist.h:141: {
	movq	%rdx, %rdi	 # tmp229, out
	movq	%r9, %r15	 # tmp231, params
 # gen_mnist.h:142:         int* indices = (int*)malloc(size*sizeof(int));
	salq	$2, %rcx	 #, tmp171
 # gen_mnist.h:141: {
	movl	%r8d, 192(%rsp)	 # tmp230, size
 # gen_mnist.h:142:         int* indices = (int*)malloc(size*sizeof(int));
	call	malloc	 #
 # C:/msys64/mingw64/x86_64-w64-mingw32/include/time.h:230: static __inline time_t __CRTDECL time(time_t *_Time) { return _time64(_Time); }
	xorl	%ecx, %ecx	 #
 # gen_mnist.h:142:         int* indices = (int*)malloc(size*sizeof(int));
	movq	%rax, 32(%rsp)	 # tmp232, %sfp
 # C:/msys64/mingw64/x86_64-w64-mingw32/include/time.h:230: static __inline time_t __CRTDECL time(time_t *_Time) { return _time64(_Time); }
	call	*__imp__time64(%rip)	 #
	movq	%rax, %rcx	 # tmp233, _83
 # gen_mnist.h:143:         std::srand((unsigned)std::time(nullptr));
	call	srand	 #
 # gen_mnist.h:144:         for(int i=0; i<size; ++i) {
	movl	192(%rsp), %ecx	 # size,
	testl	%ecx, %ecx	 #
	jle	.L53	 #,
	movl	192(%rsp), %eax	 # size, tmp281
	subl	$1, %eax	 #, tmp175
	cmpl	$2, %eax	 #, tmp175
	jbe	.L64	 #,
	movl	192(%rsp), %eax	 # size, bnd.386
	movq	32(%rsp), %rcx	 # %sfp, indices
	movdqa	.LC5(%rip), %xmm0	 #, vect_vec_iv_.389
	movdqa	.LC6(%rip), %xmm1	 #, tmp220
	shrl	$2, %eax	 #,
	movq	%rcx, %rdx	 # indices, ivtmp.424
	salq	$4, %rax	 #, tmp178
	addq	%rcx, %rax	 # indices, _145
.L52:
	movdqa	%xmm0, %xmm2	 # vect_vec_iv_.389, vect_vec_iv_.389
	addq	$16, %rdx	 #, ivtmp.424
	paddd	%xmm1, %xmm0	 # tmp220, vect_vec_iv_.389
 # gen_mnist.h:145:                 indices[i] = i;
	movups	%xmm2, -16(%rdx)	 # vect_vec_iv_.389, MEM[base: _161, offset: 0B]
	cmpq	%rax, %rdx	 # _145, ivtmp.424
	jne	.L52	 #,
	movl	192(%rsp), %eax	 # size, tmp.388
	andl	$-4, %eax	 #, tmp.388
	testb	$3, 192(%rsp)	 #, size
	je	.L53	 #,
.L50:
 # gen_mnist.h:145:                 indices[i] = i;
	movq	32(%rsp), %rbx	 # %sfp, indices
 # gen_mnist.h:145:                 indices[i] = i;
	movslq	%eax, %rdx	 # tmp.388, tmp.388
 # gen_mnist.h:145:                 indices[i] = i;
	movl	%eax, (%rbx,%rdx,4)	 # tmp.388, *_62
 # gen_mnist.h:144:         for(int i=0; i<size; ++i) {
	leal	1(%rax), %edx	 #, i
 # gen_mnist.h:144:         for(int i=0; i<size; ++i) {
	cmpl	%edx, 192(%rsp)	 # i, size
	jle	.L53	 #,
 # gen_mnist.h:145:                 indices[i] = i;
	movslq	%edx, %rcx	 # i, i
 # gen_mnist.h:144:         for(int i=0; i<size; ++i) {
	addl	$2, %eax	 #, i
 # gen_mnist.h:145:                 indices[i] = i;
	movl	%edx, (%rbx,%rcx,4)	 # i, *_35
 # gen_mnist.h:144:         for(int i=0; i<size; ++i) {
	cmpl	192(%rsp), %eax	 # size, i
	jge	.L53	 #,
 # gen_mnist.h:145:                 indices[i] = i;
	movslq	%eax, %rdx	 # i, i
 # gen_mnist.h:145:                 indices[i] = i;
	movl	%eax, (%rbx,%rdx,4)	 # i, *_135
.L53:
 # gen_mnist.h:147:         double* gradient = (double*)malloc(NPARAMS*sizeof(double));
	movl	$203600, %ecx	 #,
	call	malloc	 #
 # gen_mnist.h:148:         for(int i=0; i<nepochs; ++i) {
	movl	208(%rsp), %edx	 # nepochs,
 # gen_mnist.h:147:         double* gradient = (double*)malloc(NPARAMS*sizeof(double));
	movq	%rax, %r14	 # tmp234, gradient
 # gen_mnist.h:148:         for(int i=0; i<nepochs; ++i) {
	testl	%edx, %edx	 #
	jle	.L46	 #,
	movslq	216(%rsp), %rax	 # batchsize, _52
 # gen_mnist.h:148:         for(int i=0; i<nepochs; ++i) {
	movl	$0, 60(%rsp)	 #, %sfp
	movq	%r15, %r13	 # params, params
	movq	%r14, %r15	 # gradient, gradient
	movq	%rax, 40(%rsp)	 # _52, %sfp
	movq	32(%rsp), %rax	 # %sfp, indices
	addq	$4, %rax	 #, tmp226
	movq	%rax, 48(%rsp)	 # tmp226, %sfp
.L49:
 # gen_mnist.h:149:                 for(int i=0; i<size; ++i) {
	movl	192(%rsp), %eax	 # size,
	testl	%eax, %eax	 #
	jle	.L55	 #,
 # gen_mnist.h:149:                 for(int i=0; i<size; ++i) {
	movq	32(%rsp), %rbp	 # %sfp, indices
	movl	192(%rsp), %ebx	 # size, size
	xorl	%r12d, %r12d	 # i
.L57:
 # gen_mnist.h:150:                         int a = rand()%size;
	call	rand	 #
 # gen_mnist.h:150:                         int a = rand()%size;
	cltd
	idivl	%ebx	 # size
	movslq	%edx, %r14	 # tmp183,
 # gen_mnist.h:151:                         int b = rand()%size;
	call	rand	 #
 # gen_mnist.h:151:                         int b = rand()%size;
	cltd
	idivl	%ebx	 # size
 # gen_mnist.h:152:                         if(a == b) {
	cmpl	%edx, %r14d	 # tmp185, tmp183
	je	.L56	 #,
 # gen_mnist.h:156:                         indices[a] = indices[b];
	movslq	%edx, %rdx	 # tmp185, b
 # gen_mnist.h:155:                         int tmp = indices[a];
	leaq	0(%rbp,%r14,4), %rcx	 #, _11
 # gen_mnist.h:156:                         indices[a] = indices[b];
	leaq	0(%rbp,%rdx,4), %rax	 #, _14
 # gen_mnist.h:155:                         int tmp = indices[a];
	movl	(%rcx), %r8d	 # *_11, tmp
 # gen_mnist.h:156:                         indices[a] = indices[b];
	movl	(%rax), %edx	 # *_14, _15
 # gen_mnist.h:156:                         indices[a] = indices[b];
	movl	%edx, (%rcx)	 # _15, *_11
 # gen_mnist.h:157:                         indices[b] = tmp;
	movl	%r8d, (%rax)	 # tmp, *_14
.L56:
 # gen_mnist.h:149:                 for(int i=0; i<size; ++i) {
	addl	$1, %r12d	 #, i
 # gen_mnist.h:149:                 for(int i=0; i<size; ++i) {
	cmpl	%r12d, %ebx	 # i, size
	jne	.L57	 #,
	pxor	%xmm6, %xmm6	 # _164
	movl	%r12d, 56(%rsp)	 # i, %sfp
 # gen_mnist.h:149:                 for(int i=0; i<size; ++i) {
	xorl	%r14d, %r14d	 # ivtmp.412
	xorl	%ebp, %ebp	 # ivtmp.410
	cvtsi2sdl	216(%rsp), %xmm6	 # batchsize, _164
	movq	%r13, 200(%rsp)	 # params, params
	movsd	224(%rsp), %xmm7	 # alpha, vect_cst__89
	movq	%r15, %r13	 # gradient, gradient
	movq	200(%rsp), %r15	 # params, params
	unpcklpd	%xmm7, %xmm7	 # vect_cst__89
	unpcklpd	%xmm6, %xmm6	 # vect_cst__167
.L58:
	xorl	%edx, %edx	 #
	movl	$203600, %r8d	 #,
	movq	%r13, %rcx	 # gradient,
	movl	%ebp, %ebx	 # ivtmp.410, j
	call	memset	 #
 # gen_mnist.h:164:                         int last = j+batchsize > size ? size : j+batchsize;
	movl	56(%rsp), %eax	 # %sfp, i
	addl	216(%rsp), %ebp	 # batchsize, ivtmp.410
	cmpl	%eax, %ebp	 # i, ivtmp.410
	movl	%eax, %edx	 # i, last
	cmovle	%ebp, %edx	 # ivtmp.410,, last
 # gen_mnist.h:165:                         for(int k=j; k<last; ++k) {
	cmpl	%ebx, %edx	 # j, last
	jle	.L61	 #,
	movq	32(%rsp), %rax	 # %sfp, indices
	notl	%ebx	 # tmp198
	addl	%ebx, %edx	 # tmp198, tmp200
	leaq	(%rax,%r14,4), %r12	 #, ivtmp.404
	movq	48(%rsp), %rax	 # %sfp, tmp226
	addq	%r14, %rdx	 # ivtmp.412, tmp201
	leaq	(%rax,%rdx,4), %rbx	 #, _104
	.p2align 4,,10
	.p2align 3
.L62:
 # gen_mnist.h:166:                                 loss += backward(params, gradient, &in[indices[k]*784], &out[indices[k]*10]);
	movl	(%r12), %eax	 # MEM[base: _103, offset: 0B], _23
 # gen_mnist.h:166:                                 loss += backward(params, gradient, &in[indices[k]*784], &out[indices[k]*10]);
	movq	%r15, %rcx	 # params,
	addq	$4, %r12	 #, ivtmp.404
 # gen_mnist.h:166:                                 loss += backward(params, gradient, &in[indices[k]*784], &out[indices[k]*10]);
	leal	(%rax,%rax,4), %edx	 #, tmp206
 # gen_mnist.h:166:                                 loss += backward(params, gradient, &in[indices[k]*784], &out[indices[k]*10]);
	imull	$784, %eax, %eax	 #, _23, tmp211
 # gen_mnist.h:166:                                 loss += backward(params, gradient, &in[indices[k]*784], &out[indices[k]*10]);
	addl	%edx, %edx	 # tmp207
	movslq	%edx, %rdx	 # tmp207, tmp208
 # gen_mnist.h:166:                                 loss += backward(params, gradient, &in[indices[k]*784], &out[indices[k]*10]);
	leaq	(%rdi,%rdx,8), %r9	 #,
	movq	%r13, %rdx	 # gradient,
 # gen_mnist.h:166:                                 loss += backward(params, gradient, &in[indices[k]*784], &out[indices[k]*10]);
	cltq
 # gen_mnist.h:166:                                 loss += backward(params, gradient, &in[indices[k]*784], &out[indices[k]*10]);
	leaq	(%rsi,%rax,8), %r8	 #,
	call	_Z8backwardRKSt5arrayIdLy25450EEPdPKdS5_	 #
 # gen_mnist.h:165:                         for(int k=j; k<last; ++k) {
	cmpq	%rbx, %r12	 # _104, ivtmp.404
	jne	.L62	 #,
.L61:
 # gen_mnist.h:149:                 for(int i=0; i<size; ++i) {
	xorl	%eax, %eax	 # ivtmp.395
	.p2align 4,,10
	.p2align 3
.L60:
 # gen_mnist.h:169:                                 params[k] -= alpha * gradient[k] / (double)batchsize;
	movupd	0(%r13,%rax), %xmm0	 # MEM[base: gradient_64, index: ivtmp.395_4, offset: 0B], vect__37.380
 # gen_mnist.h:169:                                 params[k] -= alpha * gradient[k] / (double)batchsize;
	movupd	(%r15,%rax), %xmm3	 # MEM[base: params_80(D), index: ivtmp.395_4, offset: 0], vect__40.382
 # gen_mnist.h:169:                                 params[k] -= alpha * gradient[k] / (double)batchsize;
	mulpd	%xmm7, %xmm0	 # vect_cst__89, vect__37.380
 # gen_mnist.h:169:                                 params[k] -= alpha * gradient[k] / (double)batchsize;
	divpd	%xmm6, %xmm0	 # vect_cst__167, vect__39.381
 # gen_mnist.h:169:                                 params[k] -= alpha * gradient[k] / (double)batchsize;
	subpd	%xmm0, %xmm3	 # vect__39.381, vect__40.382
	movups	%xmm3, (%r15,%rax)	 # vect__40.382, MEM[base: params_80(D), index: ivtmp.395_4, offset: 0]
	addq	$16, %rax	 #, ivtmp.395
	cmpq	$203600, %rax	 #, ivtmp.395
	jne	.L60	 #,
	addq	40(%rsp), %r14	 # %sfp, ivtmp.412
 # gen_mnist.h:160:                 for(int j=0; j<size; j += batchsize) {
	cmpl	56(%rsp), %ebp	 # %sfp, ivtmp.410
	jl	.L58	 #,
	movq	%r15, 200(%rsp)	 # params, params
	movq	%r13, %r15	 # gradient, gradient
	movq	200(%rsp), %r13	 # params, params
.L55:
 # gen_mnist.h:148:         for(int i=0; i<nepochs; ++i) {
	addl	$1, 60(%rsp)	 #, %sfp
	movl	60(%rsp), %eax	 # %sfp, i
 # gen_mnist.h:148:         for(int i=0; i<nepochs; ++i) {
	cmpl	%eax, 208(%rsp)	 # i, nepochs
	jne	.L49	 #,
.L46:
 # gen_mnist.h:174: }
	movaps	64(%rsp), %xmm6	 #,
	movaps	80(%rsp), %xmm7	 #,
	addq	$104, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rdi	 #
	popq	%rbp	 #
	popq	%r12	 #
	popq	%r13	 #
	popq	%r14	 #
	popq	%r15	 #
	ret	
.L64:
 # gen_mnist.h:144:         for(int i=0; i<size; ++i) {
	xorl	%eax, %eax	 # tmp.388
	jmp	.L50	 #
	.seh_endproc
	.section .rdata,"dr"
.LC7:
	.ascii "f01 \0"
.LC8:
	.ascii "f12 \0"
.LC9:
	.ascii "b2 \0"
.LC10:
	.ascii "b1 \0"
	.text
	.p2align 4
	.globl	_Z13display_timesv
	.def	_Z13display_timesv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z13display_timesv
_Z13display_timesv:
.LFB2698:
	pushq	%r13	 #
	.seh_pushreg	%r13
	pushq	%r12	 #
	.seh_pushreg	%r12
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:570: 	__ostream_insert(___out, __s,
	movq	.refptr._ZSt4cout(%rip), %rcx	 #,
	movl	$4, %r8d	 #,
	leaq	.LC7(%rip), %rdx	 #,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:221:       { return _M_insert(__f); }
	movsd	f01(%rip), %xmm1	 # MEM[(double *)&f01],
	movq	.refptr._ZSt4cout(%rip), %rcx	 #,
	call	_ZNSo9_M_insertIdEERSoT_	 #
	movq	%rax, %r12	 # tmp166, _9
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:600:     { return flush(__os.put(__os.widen('\n'))); }
	movq	(%rax), %rax	 # MEM[(struct basic_ostream *)_9]._vptr.basic_ostream, MEM[(struct basic_ostream *)_9]._vptr.basic_ostream
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_ios.h:450:       { return __check_facet(_M_ctype).widen(__c); }
	movq	-24(%rax), %rax	 # MEM[(long long int *)_46 + -24B], MEM[(long long int *)_46 + -24B]
	movq	240(%r12,%rax), %r13	 # MEM[(const struct basic_ios *)_49]._M_ctype, _54
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_ios.h:49:       if (!__f)
	testq	%r13, %r13	 # _54
	je	.L71	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:874: 	if (_M_widen_ok)
	cmpb	$0, 56(%r13)	 #, MEM[(const struct ctype *)_54]._M_widen_ok
	je	.L69	 #,
	movsbl	67(%r13), %edx	 # MEM[(const struct ctype *)_54]._M_widen, prephitmp_37
.L70:
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:600:     { return flush(__os.put(__os.widen('\n'))); }
	movq	%r12, %rcx	 # _9,
	call	_ZNSo3putEc	 #
	movq	%rax, %rcx	 # tmp168, _52
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:622:     { return __os.flush(); }
	call	_ZNSo5flushEv	 #
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:570: 	__ostream_insert(___out, __s,
	movq	.refptr._ZSt4cout(%rip), %rcx	 #,
	movl	$4, %r8d	 #,
	leaq	.LC8(%rip), %rdx	 #,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:221:       { return _M_insert(__f); }
	movsd	f12(%rip), %xmm1	 # MEM[(double *)&f12],
	movq	.refptr._ZSt4cout(%rip), %rcx	 #,
	call	_ZNSo9_M_insertIdEERSoT_	 #
	movq	%rax, %r12	 # tmp169, _8
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:600:     { return flush(__os.put(__os.widen('\n'))); }
	movq	(%rax), %rax	 # MEM[(struct basic_ostream *)_8]._vptr.basic_ostream, MEM[(struct basic_ostream *)_8]._vptr.basic_ostream
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_ios.h:450:       { return __check_facet(_M_ctype).widen(__c); }
	movq	-24(%rax), %rax	 # MEM[(long long int *)_38 + -24B], MEM[(long long int *)_38 + -24B]
	movq	240(%r12,%rax), %r13	 # MEM[(const struct basic_ios *)_41]._M_ctype, _73
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_ios.h:49:       if (!__f)
	testq	%r13, %r13	 # _73
	je	.L71	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:874: 	if (_M_widen_ok)
	cmpb	$0, 56(%r13)	 #, MEM[(const struct ctype *)_73]._M_widen_ok
	je	.L72	 #,
	movsbl	67(%r13), %edx	 # MEM[(const struct ctype *)_73]._M_widen, _29
.L73:
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:600:     { return flush(__os.put(__os.widen('\n'))); }
	movq	%r12, %rcx	 # _8,
	call	_ZNSo3putEc	 #
	movq	%rax, %rcx	 # tmp171, _44
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:622:     { return __os.flush(); }
	call	_ZNSo5flushEv	 #
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:570: 	__ostream_insert(___out, __s,
	movq	.refptr._ZSt4cout(%rip), %rcx	 #,
	movl	$3, %r8d	 #,
	leaq	.LC9(%rip), %rdx	 #,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:221:       { return _M_insert(__f); }
	movsd	b2(%rip), %xmm1	 # MEM[(double *)&b2],
	movq	.refptr._ZSt4cout(%rip), %rcx	 #,
	call	_ZNSo9_M_insertIdEERSoT_	 #
	movq	%rax, %r12	 # tmp172, _7
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:600:     { return flush(__os.put(__os.widen('\n'))); }
	movq	(%rax), %rax	 # MEM[(struct basic_ostream *)_7]._vptr.basic_ostream, MEM[(struct basic_ostream *)_7]._vptr.basic_ostream
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_ios.h:450:       { return __check_facet(_M_ctype).widen(__c); }
	movq	-24(%rax), %rax	 # MEM[(long long int *)_30 + -24B], MEM[(long long int *)_30 + -24B]
	movq	240(%r12,%rax), %r13	 # MEM[(const struct basic_ios *)_33]._M_ctype, _92
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_ios.h:49:       if (!__f)
	testq	%r13, %r13	 # _92
	je	.L71	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:874: 	if (_M_widen_ok)
	cmpb	$0, 56(%r13)	 #, MEM[(const struct ctype *)_92]._M_widen_ok
	je	.L74	 #,
	movsbl	67(%r13), %edx	 # MEM[(const struct ctype *)_92]._M_widen, prephitmp_104
.L75:
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:600:     { return flush(__os.put(__os.widen('\n'))); }
	movq	%r12, %rcx	 # _7,
	call	_ZNSo3putEc	 #
	movq	%rax, %rcx	 # tmp174, _36
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:622:     { return __os.flush(); }
	call	_ZNSo5flushEv	 #
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:570: 	__ostream_insert(___out, __s,
	movq	.refptr._ZSt4cout(%rip), %rcx	 #,
	movl	$3, %r8d	 #,
	leaq	.LC10(%rip), %rdx	 #,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:221:       { return _M_insert(__f); }
	movsd	b1(%rip), %xmm1	 # MEM[(double *)&b1],
	movq	.refptr._ZSt4cout(%rip), %rcx	 #,
	call	_ZNSo9_M_insertIdEERSoT_	 #
	movq	%rax, %r12	 # tmp175, _2
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:600:     { return flush(__os.put(__os.widen('\n'))); }
	movq	(%rax), %rax	 # MEM[(struct basic_ostream *)_2]._vptr.basic_ostream, MEM[(struct basic_ostream *)_2]._vptr.basic_ostream
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_ios.h:450:       { return __check_facet(_M_ctype).widen(__c); }
	movq	-24(%rax), %rax	 # MEM[(long long int *)_22 + -24B], MEM[(long long int *)_22 + -24B]
	movq	240(%r12,%rax), %r13	 # MEM[(const struct basic_ios *)_25]._M_ctype, _111
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_ios.h:49:       if (!__f)
	testq	%r13, %r13	 # _111
	je	.L71	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:874: 	if (_M_widen_ok)
	cmpb	$0, 56(%r13)	 #, MEM[(const struct ctype *)_111]._M_widen_ok
	je	.L76	 #,
	movsbl	67(%r13), %edx	 # MEM[(const struct ctype *)_111]._M_widen, prephitmp_85
.L77:
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:600:     { return flush(__os.put(__os.widen('\n'))); }
	movq	%r12, %rcx	 # _2,
	call	_ZNSo3putEc	 #
	movq	%rax, %rcx	 # tmp177, _28
 # gen_mnist.h:182: }
	addq	$40, %rsp	 #,
	popq	%r12	 #
	popq	%r13	 #
 # C:/msys64/mingw64/include/c++/9.2.0/ostream:622:     { return __os.flush(); }
	jmp	_ZNSo5flushEv	 #
	.p2align 4,,10
	.p2align 3
.L69:
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:876: 	this->_M_widen_init();
	movq	%r13, %rcx	 # _54,
	call	_ZNKSt5ctypeIcE13_M_widen_initEv	 #
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:877: 	return this->do_widen(__c);
	movq	0(%r13), %rax	 # MEM[(const struct ctype *)_54].D.31070._vptr.facet, MEM[(const struct ctype *)_54].D.31070._vptr.facet
	movl	$10, %edx	 #, prephitmp_37
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx	 #, tmp147
	movq	48(%rax), %rax	 # MEM[(int (*) () *)_63 + 48B], _64
	cmpq	%rcx, %rax	 # tmp147, _64
	je	.L70	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:877: 	return this->do_widen(__c);
	movq	%r13, %rcx	 # _54,
	call	*%rax	 # _64
	movsbl	%al, %edx	 # tmp167, prephitmp_37
	jmp	.L70	 #
	.p2align 4,,10
	.p2align 3
.L72:
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:876: 	this->_M_widen_init();
	movq	%r13, %rcx	 # _73,
	call	_ZNKSt5ctypeIcE13_M_widen_initEv	 #
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:877: 	return this->do_widen(__c);
	movq	0(%r13), %rax	 # MEM[(const struct ctype *)_73].D.31070._vptr.facet, MEM[(const struct ctype *)_73].D.31070._vptr.facet
	movl	$10, %edx	 #, _29
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx	 #, tmp153
	movq	48(%rax), %rax	 # MEM[(int (*) () *)_82 + 48B], _83
	cmpq	%rcx, %rax	 # tmp153, _83
	je	.L73	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:877: 	return this->do_widen(__c);
	movq	%r13, %rcx	 # _73,
	call	*%rax	 # _83
	movsbl	%al, %edx	 # tmp170, _29
	jmp	.L73	 #
	.p2align 4,,10
	.p2align 3
.L74:
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:876: 	this->_M_widen_init();
	movq	%r13, %rcx	 # _92,
	call	_ZNKSt5ctypeIcE13_M_widen_initEv	 #
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:877: 	return this->do_widen(__c);
	movq	0(%r13), %rax	 # MEM[(const struct ctype *)_92].D.31070._vptr.facet, MEM[(const struct ctype *)_92].D.31070._vptr.facet
	movl	$10, %edx	 #, prephitmp_104
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx	 #, tmp159
	movq	48(%rax), %rax	 # MEM[(int (*) () *)_101 + 48B], _102
	cmpq	%rcx, %rax	 # tmp159, _102
	je	.L75	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:877: 	return this->do_widen(__c);
	movq	%r13, %rcx	 # _92,
	call	*%rax	 # _102
	movsbl	%al, %edx	 # tmp173, prephitmp_104
	jmp	.L75	 #
	.p2align 4,,10
	.p2align 3
.L76:
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:876: 	this->_M_widen_init();
	movq	%r13, %rcx	 # _111,
	call	_ZNKSt5ctypeIcE13_M_widen_initEv	 #
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:877: 	return this->do_widen(__c);
	movq	0(%r13), %rax	 # MEM[(const struct ctype *)_111].D.31070._vptr.facet, MEM[(const struct ctype *)_111].D.31070._vptr.facet
	movl	$10, %edx	 #, prephitmp_85
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx	 #, tmp165
	movq	48(%rax), %rax	 # MEM[(int (*) () *)_120 + 48B], _121
	cmpq	%rcx, %rax	 # tmp165, _121
	je	.L77	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/bits/locale_facets.h:877: 	return this->do_widen(__c);
	movq	%r13, %rcx	 # _111,
	call	*%rax	 # _121
	movsbl	%al, %edx	 # tmp176, prephitmp_85
	jmp	.L77	 #
.L71:
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_ios.h:50: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv	 #
	nop	
	.seh_endproc
	.p2align 4
	.globl	_Z6argmaxPdi
	.def	_Z6argmaxPdi;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6argmaxPdi
_Z6argmaxPdi:
.LFB2700:
	.seh_endprologue
 # mnist.cpp:11: 	double val = a[0];
	movsd	(%rcx), %xmm0	 # *a_12(D), val
 # mnist.cpp:12: 	for(int i=0; i<size; ++i) {
	testl	%edx, %edx	 # size
	jle	.L97	 #,
	cmpl	$1, %edx	 #, size
	je	.L97	 #,
	subl	$2, %edx	 #, tmp94
	movl	$1, %eax	 #, ivtmp.434
 # mnist.cpp:10: 	int index = 0;
	xorl	%r8d, %r8d	 # <retval>
	addq	$2, %rdx	 #, _3
	.p2align 4,,10
	.p2align 3
.L96:
 # mnist.cpp:13: 		if(a[i] > val) {
	movsd	(%rcx,%rax,8), %xmm1	 # MEM[base: a_12(D), index: ivtmp.434_25, step: 8, offset: 0B], _21
 # mnist.cpp:13: 		if(a[i] > val) {
	comisd	%xmm0, %xmm1	 # val, _21
	maxsd	%xmm0, %xmm1	 # val, _21
	cmova	%eax, %r8d	 # ivtmp.434,, <retval>
	addq	$1, %rax	 #, ivtmp.434
	movapd	%xmm1, %xmm0	 # _21, val
 # mnist.cpp:12: 	for(int i=0; i<size; ++i) {
	cmpq	%rax, %rdx	 # ivtmp.434, _3
	jne	.L96	 #,
 # mnist.cpp:20: }
	movl	%r8d, %eax	 # <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L97:
 # mnist.cpp:10: 	int index = 0;
	xorl	%r8d, %r8d	 # <retval>
 # mnist.cpp:20: }
	movl	%r8d, %eax	 # <retval>,
	ret	
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC11:
	.ascii "train images: \0"
.LC12:
	.ascii "train labels: \0"
.LC14:
	.ascii "PAUSE\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2701:
	pushq	%r12	 #
	.seh_pushreg	%r12
	movl	$407392, %eax	 #,
	pushq	%rsi	 #
	.seh_pushreg	%rsi
	pushq	%rbx	 #
	.seh_pushreg	%rbx
	call	___chkstk_ms
	subq	%rax, %rsp	 #,
	.seh_stackalloc	407392
	.seh_endprologue
 # mnist.cpp:24: {
	call	__main	 #
 # mnist.cpp:26: 	std::cout << "train images: ";
	movq	.refptr._ZSt4cout(%rip), %rcx	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_string.h:160: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	leaq	203744(%rsp), %rbx	 #, tmp152
	leaq	203776(%rsp), %rsi	 #, tmp149
 # mnist.cpp:26: 	std::cout << "train images: ";
	leaq	.LC11(%rip), %rdx	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_string.h:160: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rbx, 203728(%rsp)	 # tmp152, MEM[(struct _Alloc_hider *)&train_images_path]._M_p
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_string.h:183:       { _M_string_length = __length; }
	movq	$0, 203736(%rsp)	 #, MEM[(size_type *)&train_images_path + 8B]
 # C:/msys64/mingw64/include/c++/9.2.0/bits/char_traits.h:300:       { __c1 = __c2; }
	movb	$0, 203744(%rsp)	 #, MEM[(char_type &)&train_images_path + 16]
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_string.h:160: 	: allocator_type(std::move(__a)), _M_p(__dat) { }
	movq	%rsi, 203760(%rsp)	 # tmp149, MEM[(struct _Alloc_hider *)&train_labels_path]._M_p
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_string.h:183:       { _M_string_length = __length; }
	movq	$0, 203768(%rsp)	 #, MEM[(size_type *)&train_labels_path + 8B]
 # C:/msys64/mingw64/include/c++/9.2.0/bits/char_traits.h:300:       { __c1 = __c2; }
	movb	$0, 203776(%rsp)	 #, MEM[(char_type &)&train_labels_path + 16]
.LEHB0:
 # mnist.cpp:26: 	std::cout << "train images: ";
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	 #
 # mnist.cpp:27: 	std::cin >> train_images_path;
	leaq	203728(%rsp), %r12	 #, tmp150
	movq	.refptr._ZSt3cin(%rip), %rcx	 #,
	movq	%r12, %rdx	 # tmp150,
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE	 #
 # mnist.cpp:28: 	std::cout << "train labels: ";
	movq	.refptr._ZSt4cout(%rip), %rcx	 #,
	leaq	.LC12(%rip), %rdx	 #,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc	 #
 # mnist.cpp:29: 	std::cin >> train_labels_path;
	movq	.refptr._ZSt3cin(%rip), %rcx	 #,
	leaq	203760(%rsp), %rdx	 #, tmp108
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE	 #
.LEHE0:
 # C:/msys64/mingw64/include/c++/9.2.0/bits/stl_vector.h:95: 	: _M_start(), _M_finish(), _M_end_of_storage()
	pxor	%xmm0, %xmm0	 # tmp109
 # mnist.cpp:32: 	if(!loadImages(train_images_path, in_data)) { return EXIT_FAILURE; }
	movq	%r12, %rcx	 # tmp150,
	leaq	203664(%rsp), %rdx	 #, tmp111
 # C:/msys64/mingw64/include/c++/9.2.0/bits/stl_vector.h:95: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, 203680(%rsp)	 #, MEM[(struct _Vector_impl_data *)&in_data]._M_end_of_storage
	movq	$0, 203712(%rsp)	 #, MEM[(struct _Vector_impl_data *)&out_data]._M_end_of_storage
	movaps	%xmm0, 203664(%rsp)	 # tmp109, MEM[(double * *)&in_data]
	movaps	%xmm0, 203696(%rsp)	 # tmp109, MEM[(double * *)&out_data]
.LEHB1:
 # mnist.cpp:32: 	if(!loadImages(train_images_path, in_data)) { return EXIT_FAILURE; }
	call	_Z10loadImagesRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIdSaIdEE	 #
 # mnist.cpp:32: 	if(!loadImages(train_images_path, in_data)) { return EXIT_FAILURE; }
	testb	%al, %al	 # tmp153
	jne	.L102	 #,
.L104:
 # mnist.cpp:32: 	if(!loadImages(train_images_path, in_data)) { return EXIT_FAILURE; }
	movl	$1, %r12d	 #, <retval>
.L103:
 # C:/msys64/mingw64/include/c++/9.2.0/bits/stl_vector.h:677: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	203696(%rsp), %rcx	 # out_data.D.56471._M_impl.D.55786._M_start, _35
 # C:/msys64/mingw64/include/c++/9.2.0/bits/stl_vector.h:350: 	if (__p)
	testq	%rcx, %rcx	 # _35
	je	.L105	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/ext/new_allocator.h:128: 	::operator delete(__p);
	call	_ZdlPv	 #
.L105:
 # C:/msys64/mingw64/include/c++/9.2.0/bits/stl_vector.h:677: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	203664(%rsp), %rcx	 # in_data.D.56471._M_impl.D.55786._M_start, _34
 # C:/msys64/mingw64/include/c++/9.2.0/bits/stl_vector.h:350: 	if (__p)
	testq	%rcx, %rcx	 # _34
	je	.L106	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/ext/new_allocator.h:128: 	::operator delete(__p);
	call	_ZdlPv	 #
.L106:
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_string.h:222:       { return _M_data() == _M_local_data(); }
	movq	203760(%rsp), %rcx	 # MEM[(char * *)&train_labels_path], _33
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_string.h:231: 	if (!_M_is_local())
	cmpq	%rsi, %rcx	 # tmp149, _33
	je	.L107	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/ext/new_allocator.h:128: 	::operator delete(__p);
	call	_ZdlPv	 #
.L107:
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_string.h:222:       { return _M_data() == _M_local_data(); }
	movq	203728(%rsp), %rcx	 # MEM[(char * *)&train_images_path], _32
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_string.h:231: 	if (!_M_is_local())
	cmpq	%rbx, %rcx	 # tmp152, _32
	je	.L101	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/ext/new_allocator.h:128: 	::operator delete(__p);
	call	_ZdlPv	 #
.L101:
 # mnist.cpp:46: }
	movl	%r12d, %eax	 # <retval>,
	addq	$407392, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%r12	 #
	ret	
.L102:
 # mnist.cpp:33: 	if(!loadLabels(train_labels_path.c_str(), out_data)) { return EXIT_FAILURE; }
	movq	203760(%rsp), %rcx	 # MEM[(char * *)&train_labels_path],
	leaq	203696(%rsp), %rdx	 #, tmp113
	call	_Z10loadLabelsPKcRSt6vectorIdSaIdEE	 #
 # mnist.cpp:33: 	if(!loadLabels(train_labels_path.c_str(), out_data)) { return EXIT_FAILURE; }
	testb	%al, %al	 # tmp154
	je	.L104	 #,
 # mnist.cpp:36: 	init_params(params);
	leaq	203792(%rsp), %r12	 #, tmp151
	leaq	64(%rsp), %rcx	 #, tmp115
	movl	$203600, %r8d	 #,
	movq	%r12, %rdx	 # tmp151,
	call	memcpy	 #
	movq	%rax, %rcx	 #, tmp115
	call	_Z11init_paramsSt5arrayIdLy25450EE	 #
 # mnist.cpp:38: 	train(in_data.data(), out_data.data(), out_data.size()/10, params, 5, 10, 3.0);
	movq	203696(%rsp), %r10	 # MEM[(double * *)&out_data], _26
 # C:/msys64/mingw64/include/c++/9.2.0/bits/stl_vector.h:916:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	203704(%rsp), %rax	 # MEM[(double * *)&out_data + 8B], tmp122
 # mnist.cpp:38: 	train(in_data.data(), out_data.data(), out_data.size()/10, params, 5, 10, 3.0);
	xorl	%edx, %edx	 # tmp128
 # mnist.cpp:38: 	train(in_data.data(), out_data.data(), out_data.size()/10, params, 5, 10, 3.0);
	movq	%r12, %r9	 # tmp151,
 # mnist.cpp:38: 	train(in_data.data(), out_data.data(), out_data.size()/10, params, 5, 10, 3.0);
	movl	$10, %ecx	 #, tmp129
 # mnist.cpp:38: 	train(in_data.data(), out_data.data(), out_data.size()/10, params, 5, 10, 3.0);
	movl	$10, 40(%rsp)	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/bits/stl_vector.h:916:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	subq	%r10, %rax	 # _26, tmp122
 # mnist.cpp:38: 	train(in_data.data(), out_data.data(), out_data.size()/10, params, 5, 10, 3.0);
	movl	$5, 32(%rsp)	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/bits/stl_vector.h:916:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sarq	$3, %rax	 #, tmp125
 # mnist.cpp:38: 	train(in_data.data(), out_data.data(), out_data.size()/10, params, 5, 10, 3.0);
	divq	%rcx	 # tmp129
 # mnist.cpp:38: 	train(in_data.data(), out_data.data(), out_data.size()/10, params, 5, 10, 3.0);
	movq	.LC13(%rip), %rdx	 #, tmp158
	movq	203664(%rsp), %rcx	 # MEM[(double * *)&in_data],
	movq	%rdx, 48(%rsp)	 # tmp158,
	movq	%r10, %rdx	 # _26,
	movl	%eax, %r8d	 # tmp127,
	call	_Z5trainPKdS0_iRSt5arrayIdLy25450EEiid	 #
 # mnist.cpp:40: 	display_times();
	call	_Z13display_timesv	 #
 # mnist.cpp:44: 	system("PAUSE");
	leaq	.LC14(%rip), %rcx	 #,
	call	system	 #
.LEHE1:
 # mnist.cpp:45: 	return 0;
	xorl	%r12d, %r12d	 # <retval>
	jmp	.L103	 #
.L116:
 # C:/msys64/mingw64/include/c++/9.2.0/bits/stl_vector.h:677: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	203696(%rsp), %rcx	 # out_data.D.56471._M_impl.D.55786._M_start, _36
	movq	%rax, %r12	 # tmp155, tmp138
 # C:/msys64/mingw64/include/c++/9.2.0/bits/stl_vector.h:350: 	if (__p)
	testq	%rcx, %rcx	 # _36
	je	.L110	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/ext/new_allocator.h:128: 	::operator delete(__p);
	call	_ZdlPv	 #
.L110:
 # C:/msys64/mingw64/include/c++/9.2.0/bits/stl_vector.h:677: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	movq	203664(%rsp), %rcx	 # in_data.D.56471._M_impl.D.55786._M_start, _37
 # C:/msys64/mingw64/include/c++/9.2.0/bits/stl_vector.h:350: 	if (__p)
	testq	%rcx, %rcx	 # _37
	je	.L112	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/ext/new_allocator.h:128: 	::operator delete(__p);
	call	_ZdlPv	 #
.L112:
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_string.h:222:       { return _M_data() == _M_local_data(); }
	movq	203760(%rsp), %rcx	 # MEM[(char * *)&train_labels_path], _38
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_string.h:231: 	if (!_M_is_local())
	cmpq	%rsi, %rcx	 # tmp149, _38
	je	.L113	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/ext/new_allocator.h:128: 	::operator delete(__p);
	call	_ZdlPv	 #
.L113:
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_string.h:222:       { return _M_data() == _M_local_data(); }
	movq	203728(%rsp), %rcx	 # MEM[(char * *)&train_images_path], _39
 # C:/msys64/mingw64/include/c++/9.2.0/bits/basic_string.h:231: 	if (!_M_is_local())
	cmpq	%rbx, %rcx	 # tmp152, _39
	je	.L114	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/ext/new_allocator.h:128: 	::operator delete(__p);
	call	_ZdlPv	 #
.L114:
	movq	%r12, %rcx	 # tmp141,
.LEHB2:
	call	_Unwind_Resume	 #
.LEHE2:
.L115:
	movq	%rax, %r12	 # tmp156, tmp141
	jmp	.L112	 #
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA2701:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2701-.LLSDACSB2701
.LLSDACSB2701:
	.uleb128 .LEHB0-.LFB2701
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L115-.LFB2701
	.uleb128 0
	.uleb128 .LEHB1-.LFB2701
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L116-.LFB2701
	.uleb128 0
	.uleb128 .LEHB2-.LFB2701
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2701:
	.section	.text.startup,"x"
	.seh_endproc
	.p2align 4
	.def	_GLOBAL__sub_I__Z7sigmoidd;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z7sigmoidd
_GLOBAL__sub_I__Z7sigmoidd:
.LFB3293:
	subq	$40, %rsp	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # C:/msys64/mingw64/include/c++/9.2.0/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rcx	 #,
	call	_ZNSt8ios_base4InitC1Ev	 #
	leaq	__tcf_0(%rip), %rcx	 #,
 # mnist.cpp:46: }
	addq	$40, %rsp	 #,
 # C:/msys64/mingw64/include/c++/9.2.0/iostream:74:   static ios_base::Init __ioinit;
	jmp	atexit	 #
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__Z7sigmoidd
.lcomm _ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E4back,336,32
.lcomm _ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1y,6608,32
.lcomm _ZZ8backwardRKSt5arrayIdLy25450EEPdPKdS5_E1o,336,32
	.globl	b1
	.bss
	.align 8
b1:
	.space 8
	.globl	b2
	.align 8
b2:
	.space 8
	.globl	f12
	.align 8
f12:
	.space 8
	.globl	f01
	.align 8
f01:
	.space 8
.lcomm _ZZ7forwardPKdS0_PdE1y,336,32
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 16
.LC0:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1104006501
	.align 16
.LC3:
	.long	0
	.long	1071644672
	.long	0
	.long	1071644672
	.align 16
.LC5:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC6:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 8
.LC13:
	.long	0
	.long	1074266112
	.ident	"GCC: (Rev2, Built by MSYS2 project) 9.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	exp;	.scl	2;	.type	32;	.endef
	.def	srand;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE;	.scl	2;	.type	32;	.endef
	.def	_Z10loadImagesRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIdSaIdEE;	.scl	2;	.type	32;	.endef
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.def	_Z10loadLabelsPKcRSt6vectorIdSaIdEE;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	system;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt3cin, "dr"
	.globl	.refptr._ZSt3cin
	.linkonce	discard
.refptr._ZSt3cin:
	.quad	_ZSt3cin
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
