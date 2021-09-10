package com.google.android.gms.internal.ads;

import java.lang.reflect.Type;

/* JADX WARN: Init of enum zzint can be incorrect */
/* JADX WARN: Init of enum zzinu can be incorrect */
/* JADX WARN: Init of enum zzinv can be incorrect */
/* JADX WARN: Init of enum zzinw can be incorrect */
/* JADX WARN: Init of enum zzinx can be incorrect */
/* JADX WARN: Init of enum zziny can be incorrect */
/* JADX WARN: Init of enum zzinz can be incorrect */
/* JADX WARN: Init of enum zzioa can be incorrect */
/* JADX WARN: Init of enum zziob can be incorrect */
/* JADX WARN: Init of enum zzioc can be incorrect */
/* JADX WARN: Init of enum zziod can be incorrect */
/* JADX WARN: Init of enum zzioe can be incorrect */
/* JADX WARN: Init of enum zziof can be incorrect */
/* JADX WARN: Init of enum zziog can be incorrect */
/* JADX WARN: Init of enum zzioh can be incorrect */
/* JADX WARN: Init of enum zzioi can be incorrect */
/* JADX WARN: Init of enum zzioj can be incorrect */
/* JADX WARN: Init of enum zziok can be incorrect */
/* JADX WARN: Init of enum zziol can be incorrect */
/* JADX WARN: Init of enum zziom can be incorrect */
/* JADX WARN: Init of enum zzion can be incorrect */
/* JADX WARN: Init of enum zzioo can be incorrect */
/* JADX WARN: Init of enum zziop can be incorrect */
/* JADX WARN: Init of enum zzioq can be incorrect */
/* JADX WARN: Init of enum zzior can be incorrect */
/* JADX WARN: Init of enum zzios can be incorrect */
/* JADX WARN: Init of enum zziot can be incorrect */
/* JADX WARN: Init of enum zziou can be incorrect */
/* JADX WARN: Init of enum zziov can be incorrect */
/* JADX WARN: Init of enum zziow can be incorrect */
/* JADX WARN: Init of enum zziox can be incorrect */
/* JADX WARN: Init of enum zzioy can be incorrect */
/* JADX WARN: Init of enum zzioz can be incorrect */
/* JADX WARN: Init of enum zzipa can be incorrect */
/* JADX WARN: Init of enum zzipb can be incorrect */
/* JADX WARN: Init of enum zzipc can be incorrect */
/* JADX WARN: Init of enum zzipd can be incorrect */
/* JADX WARN: Init of enum zzipe can be incorrect */
/* JADX WARN: Init of enum zzipf can be incorrect */
/* JADX WARN: Init of enum zzipg can be incorrect */
/* JADX WARN: Init of enum zziph can be incorrect */
/* JADX WARN: Init of enum zzipi can be incorrect */
/* JADX WARN: Init of enum zzipj can be incorrect */
/* JADX WARN: Init of enum zzipk can be incorrect */
/* JADX WARN: Init of enum zzipl can be incorrect */
/* JADX WARN: Init of enum zzipm can be incorrect */
/* JADX WARN: Init of enum zzipn can be incorrect */
/* JADX WARN: Init of enum zzipo can be incorrect */
/* JADX WARN: Init of enum zzipp can be incorrect */
/* JADX WARN: Init of enum zzipq can be incorrect */
public enum zzekv {
    DOUBLE(0, r7, r8),
    FLOAT(1, r7, r9),
    INT64(2, r7, r10),
    UINT64(3, r7, r10),
    INT32(4, r7, r11),
    FIXED64(5, r7, r10),
    FIXED32(6, r7, r11),
    BOOL(7, r7, r12),
    STRING(8, r7, r13),
    MESSAGE(9, r7, r14),
    BYTES(10, r7, r15),
    UINT32(11, r7, r11),
    ENUM(12, r7, r16),
    SFIXED32(13, r7, r11),
    SFIXED64(14, r7, r10),
    SINT32(15, r7, r11),
    SINT64(16, r7, r10),
    GROUP(17, r7, r14),
    DOUBLE_LIST(18, r7, r8),
    FLOAT_LIST(19, r7, r9),
    INT64_LIST(20, r7, r10),
    UINT64_LIST(21, r7, r10),
    INT32_LIST(22, r7, r11),
    FIXED64_LIST(23, r7, r10),
    FIXED32_LIST(24, r7, r11),
    BOOL_LIST(25, r7, r12),
    STRING_LIST(26, r7, r13),
    MESSAGE_LIST(27, r7, r14),
    BYTES_LIST(28, r7, r15),
    UINT32_LIST(29, r7, r11),
    ENUM_LIST(30, r7, r16),
    SFIXED32_LIST(31, r7, r11),
    SFIXED64_LIST(32, r7, r10),
    SINT32_LIST(33, r7, r11),
    SINT64_LIST(34, r7, r10),
    DOUBLE_LIST_PACKED(35, r13, r8),
    FLOAT_LIST_PACKED(36, r13, r9),
    INT64_LIST_PACKED(37, r13, r10),
    UINT64_LIST_PACKED(38, r13, r10),
    INT32_LIST_PACKED(39, r13, r11),
    FIXED64_LIST_PACKED(40, r13, r10),
    FIXED32_LIST_PACKED(41, r13, r11),
    BOOL_LIST_PACKED(42, r13, r12),
    UINT32_LIST_PACKED(43, r13, r11),
    ENUM_LIST_PACKED(44, r13, r16),
    SFIXED32_LIST_PACKED(45, r13, r11),
    SFIXED64_LIST_PACKED(46, r13, r8),
    SINT32_LIST_PACKED(47, r13, zzelq.INT),
    SINT64_LIST_PACKED(48, r13, r8),
    GROUP_LIST(49, r7, r14),
    MAP(50, zzekx.MAP, zzelq.VOID);
    
    private static final zzekv[] zzipw = new zzekv[51];
    private static final Type[] zzipx = new Type[0];
    private final int id;
    private final zzelq zzips;
    private final zzekx zzipt;
    private final Class<?> zzipu;
    private final boolean zzipv;

    static {
        zzekx zzekx = zzekx.SCALAR;
        zzelq zzelq = zzelq.DOUBLE;
        zzelq zzelq2 = zzelq.FLOAT;
        zzelq zzelq3 = zzelq.LONG;
        zzelq zzelq4 = zzelq.INT;
        zzelq zzelq5 = zzelq.BOOLEAN;
        zzelq zzelq6 = zzelq.STRING;
        zzelq zzelq7 = zzelq.MESSAGE;
        zzelq zzelq8 = zzelq.BYTE_STRING;
        zzelq zzelq9 = zzelq.ENUM;
        zzekx zzekx2 = zzekx.VECTOR;
        zzekx zzekx3 = zzekx.PACKED_VECTOR;
        zzelq zzelq10 = zzelq.LONG;
        zzekv[] values = values();
        for (zzekv zzekv : values) {
            zzipw[zzekv.id] = zzekv;
        }
    }

    private zzekv(int i, zzekx zzekx, zzelq zzelq) {
        int i2;
        this.id = i;
        this.zzipt = zzekx;
        this.zzips = zzelq;
        int i3 = zzeky.zziqf[zzekx.ordinal()];
        boolean z = true;
        if (i3 == 1) {
            this.zzipu = zzelq.zzbjk();
        } else if (i3 != 2) {
            this.zzipu = null;
        } else {
            this.zzipu = zzelq.zzbjk();
        }
        this.zzipv = (zzekx != zzekx.SCALAR || (i2 = zzeky.zziqg[zzelq.ordinal()]) == 1 || i2 == 2 || i2 == 3) ? false : z;
    }

    public final int id() {
        return this.id;
    }
}
