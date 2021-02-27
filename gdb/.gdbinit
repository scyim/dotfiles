# 反汇编相关
set disassembly-flavor intel
set print asm-demangle on
set print demangle on

set print array-indexes on
set print pretty on

set history filename ~/.cache/gdb_history
set history save

set listsize 20

# set verbose off

# These make gdb never pause in its output
set height 0
set width 0


# 默认十进制
set output-radix 0x10
set input-radix 0x10


# 自定义命令

# gdbtui偶尔会画面错位
# 所以每次执行完指令后刷新tui
define hook-next
  refresh
end
define hook-step
  refresh
end

# manuals
define man
    if $argc != 1
        help
    else
        help $arg0
    end
end
document man
Syntax: man CMD
- 'help' alias
end

define ls
    list
end
document ls 
    list alias
end

define ll
    set listsize unlimited
    list -
    set listsize 20
end

define ib 
    info breakpoints
end
document ib
Syntax: ib
- 'info breakpoints' alias
end

define threads
    info threads
end
document threads
Syntax: threads
- Print threads in target
end

define ascii
    if $argc != 1
        help ascii
    else 
        set $_c = *(unsigned char *)($arg0)
        if ($_c < 0x20 || $_c > 0x7E)
            printf "NA"
        else
            printf "%c", $_c
        end
    end
end
document ascii
Syntax: ascii ADDR
- Print ASCII value of byte at assress ADDR
- Print "NA" if the value is unprintable
end

define main
    set $SHOW_NEST_INSN = 0
    tbreak main
    r
end
document main
Syntax: main
- Run program and break on main().
end

# ------Doc------
define parameter
    help parameter
end
document parameter
    arch   SyscallNR return arg0 arg1 arg2 arg3 arg4 arg5
    arm       r7     r0     r0   r1   r2   r3   r4   r5
    arm64     x8     x0     x0   x1   x2   x3   x4   x5
    x86       eax    eax    ebx  ecx  edx  esi  edi  ebp
    amd-64    rax    rax    rdi  rsi  rdx  r10  r8   r7
end

define eflags
    help eflags
end
document eflags
    0      Carry flag                      CF  
    1
    2      Parity flag                     PF  
    3
    4      Adjust flag                     AF  
    5
    6      Zero flag                       ZF  
    7      Sign flag                       SF  
    8      Trap flag (single step)         TF  
    9      Interrupt enable flag           IF  
    10     Direction flag                  DF  
    11     Overflow flag                   OF  
    12~13  I/O privilege level             IOPL    
    14     Nested task flag                NT  
    15
    16     Resume flag                     RF  
    17     Virtual 8086 mode flag          VM  
    18     Alignment check                 AC  
    19     Virtual interrupt flag          VIF 
    20     Virtual interrupt pending       VIP 
    21     Able to use CPUID instruction   ID
    22~31
end

define addressing
    help addressing
end
document addressing
amd-64:

    Effective Address = BaseReg + IndexReg*ScaleFactor + Displacement

    mov rax, [MyVa]              ; RIP + Disp
    mov rax, [rbx]               ; BaseReg
    mov rax, [rbx+16]            ; BaseReg + Disp
    mov rax, [r15*8+48]          ; IndexReg * SF + Disp
    mov rax, [rbx+r15]           ; BaseReg + IndexReg
    mov rax, [rbx+r15+15]        ; BaseReg + IndexReg + Disp
    mov rax, [rbx+r15*8]         ; BaseReg + IndexReg * SF
    mov rax, [rbx+r15*8+64]      ; BaseReg + IndexReg * SF + Disp
end

# ------Doc------
