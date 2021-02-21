# 反汇编相关
set disassembly-flavor intel
set print asm-demangle on
set print demangle on

set print array-indexes on
set print pretty on

set history filename ~/.cache/gdb_history
set history save

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
