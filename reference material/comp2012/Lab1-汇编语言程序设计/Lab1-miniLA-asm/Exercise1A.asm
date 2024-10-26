.data
    offset: .space 0x70
    peri:   .word  0x12345678       # Assume it's a peripheral

.text
MAIN:
    # ��LoongSonAssembler���б������轫-1�ĳ�0x00000
    # ��LA32R NEMU���б������轫-1�ĳ�0x1c010
    lu12i.w $s0, -1     # 0xfffff   

TEST:
    ld.w   $t0, $s0, 0x70    # Read switches
    st.w   $t0, $s0, 0x60    # Write LEDs
    st.w   $t0, $s0, 0x00    # Write 7-seg LEDs
    b TEST
