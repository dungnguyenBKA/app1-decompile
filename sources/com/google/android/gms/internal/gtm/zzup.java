package com.google.android.gms.internal.gtm;

/* JADX WARN: Init of enum zza can be incorrect */
/* JADX WARN: Init of enum zzb can be incorrect */
/* JADX WARN: Init of enum zzc can be incorrect */
/* JADX WARN: Init of enum zzd can be incorrect */
/* JADX WARN: Init of enum zze can be incorrect */
/* JADX WARN: Init of enum zzf can be incorrect */
/* JADX WARN: Init of enum zzg can be incorrect */
/* JADX WARN: Init of enum zzh can be incorrect */
/* JADX WARN: Init of enum zzi can be incorrect */
/* JADX WARN: Init of enum zzj can be incorrect */
/* JADX WARN: Init of enum zzk can be incorrect */
/* JADX WARN: Init of enum zzl can be incorrect */
/* JADX WARN: Init of enum zzm can be incorrect */
/* JADX WARN: Init of enum zzn can be incorrect */
/* JADX WARN: Init of enum zzo can be incorrect */
/* JADX WARN: Init of enum zzp can be incorrect */
/* JADX WARN: Init of enum zzq can be incorrect */
/* JADX WARN: Init of enum zzr can be incorrect */
/* JADX WARN: Init of enum zzs can be incorrect */
/* JADX WARN: Init of enum zzt can be incorrect */
/* JADX WARN: Init of enum zzu can be incorrect */
/* JADX WARN: Init of enum zzv can be incorrect */
/* JADX WARN: Init of enum zzw can be incorrect */
/* JADX WARN: Init of enum zzx can be incorrect */
/* JADX WARN: Init of enum zzy can be incorrect */
/* JADX WARN: Init of enum zzz can be incorrect */
/* JADX WARN: Init of enum zzA can be incorrect */
/* JADX WARN: Init of enum zzB can be incorrect */
/* JADX WARN: Init of enum zzC can be incorrect */
/* JADX WARN: Init of enum zzD can be incorrect */
/* JADX WARN: Init of enum zzE can be incorrect */
/* JADX WARN: Init of enum zzF can be incorrect */
/* JADX WARN: Init of enum zzG can be incorrect */
/* JADX WARN: Init of enum zzH can be incorrect */
/* JADX WARN: Init of enum zzI can be incorrect */
/* JADX WARN: Init of enum zzJ can be incorrect */
/* JADX WARN: Init of enum zzK can be incorrect */
/* JADX WARN: Init of enum zzL can be incorrect */
/* JADX WARN: Init of enum zzM can be incorrect */
/* JADX WARN: Init of enum zzN can be incorrect */
/* JADX WARN: Init of enum zzO can be incorrect */
/* JADX WARN: Init of enum zzP can be incorrect */
/* JADX WARN: Init of enum zzQ can be incorrect */
/* JADX WARN: Init of enum zzR can be incorrect */
/* JADX WARN: Init of enum zzS can be incorrect */
/* JADX WARN: Init of enum zzT can be incorrect */
/* JADX WARN: Init of enum zzU can be incorrect */
/* JADX WARN: Init of enum zzV can be incorrect */
/* JADX WARN: Init of enum zzW can be incorrect */
/* JADX WARN: Init of enum zzX can be incorrect */
public enum zzup {
    DOUBLE(0, 1, r7),
    FLOAT(1, 1, r14),
    INT64(2, 1, r8),
    UINT64(3, 1, r8),
    INT32(4, 1, r9),
    FIXED64(5, 1, r8),
    FIXED32(6, 1, r9),
    BOOL(7, 1, r10),
    STRING(8, 1, r11),
    MESSAGE(9, 1, r12),
    BYTES(10, 1, r13),
    UINT32(11, 1, r9),
    ENUM(12, 1, r21),
    SFIXED32(13, 1, r9),
    SFIXED64(14, 1, r8),
    SINT32(15, 1, r9),
    SINT64(16, 1, r8),
    GROUP(17, 1, r12),
    DOUBLE_LIST(18, 2, r7),
    FLOAT_LIST(19, 2, r14),
    INT64_LIST(20, 2, r8),
    UINT64_LIST(21, 2, r8),
    INT32_LIST(22, 2, r9),
    FIXED64_LIST(23, 2, r8),
    FIXED32_LIST(24, 2, r9),
    BOOL_LIST(25, 2, r10),
    STRING_LIST(26, 2, r11),
    MESSAGE_LIST(27, 2, r12),
    BYTES_LIST(28, 2, r13),
    UINT32_LIST(29, 2, r9),
    ENUM_LIST(30, 2, r21),
    SFIXED32_LIST(31, 2, r9),
    SFIXED64_LIST(32, 2, r8),
    SINT32_LIST(33, 2, r9),
    SINT64_LIST(34, 2, r8),
    DOUBLE_LIST_PACKED(35, 3, r7),
    FLOAT_LIST_PACKED(36, 3, r14),
    INT64_LIST_PACKED(37, 3, r8),
    UINT64_LIST_PACKED(38, 3, r8),
    INT32_LIST_PACKED(39, 3, r9),
    FIXED64_LIST_PACKED(40, 3, r8),
    FIXED32_LIST_PACKED(41, 3, r9),
    BOOL_LIST_PACKED(42, 3, r10),
    UINT32_LIST_PACKED(43, 3, r9),
    ENUM_LIST_PACKED(44, 3, r21),
    SFIXED32_LIST_PACKED(45, 3, r9),
    SFIXED64_LIST_PACKED(46, 3, r7),
    SINT32_LIST_PACKED(47, 3, r9),
    SINT64_LIST_PACKED(48, 3, r7),
    GROUP_LIST(49, 2, r12),
    MAP(50, 4, zzvl.VOID);
    
    private static final zzup[] zzZ = new zzup[51];
    private final zzvl zzab;
    private final int zzac;
    private final Class<?> zzad;

    static {
        zzvl zzvl = zzvl.DOUBLE;
        zzvl zzvl2 = zzvl.FLOAT;
        zzvl zzvl3 = zzvl.LONG;
        zzvl zzvl4 = zzvl.INT;
        zzvl zzvl5 = zzvl.BOOLEAN;
        zzvl zzvl6 = zzvl.STRING;
        zzvl zzvl7 = zzvl.MESSAGE;
        zzvl zzvl8 = zzvl.BYTE_STRING;
        zzvl zzvl9 = zzvl.ENUM;
        zzvl zzvl10 = zzvl.LONG;
        zzup[] values = values();
        for (int i = 0; i < 51; i++) {
            zzup zzup = values[i];
            zzZ[zzup.zzac] = zzup;
        }
    }

    private zzup(int i, int i2, zzvl zzvl) {
        this.zzac = i;
        this.zzab = zzvl;
        zzvl zzvl2 = zzvl.VOID;
        int i3 = i2 - 1;
        if (i3 == 1) {
            this.zzad = zzvl.zza();
        } else if (i3 != 3) {
            this.zzad = null;
        } else {
            this.zzad = zzvl.zza();
        }
        if (i2 == 1) {
            zzvl.ordinal();
        }
    }

    public final int zza() {
        return this.zzac;
    }
}
