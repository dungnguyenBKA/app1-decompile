package com.google.android.gms.internal.gtm;

/* JADX WARN: Init of enum zzc can be incorrect */
/* JADX WARN: Init of enum zzd can be incorrect */
/* JADX WARN: Init of enum zze can be incorrect */
/* JADX WARN: Init of enum zzf can be incorrect */
/* JADX WARN: Init of enum zzg can be incorrect */
/* JADX WARN: Init of enum zzj can be incorrect */
/* JADX WARN: Init of enum zzk can be incorrect */
/* JADX WARN: Init of enum zzm can be incorrect */
/* JADX WARN: Init of enum zzo can be incorrect */
/* JADX WARN: Init of enum zzp can be incorrect */
/* JADX WARN: Init of enum zzq can be incorrect */
/* JADX WARN: Init of enum zzr can be incorrect */
public enum zzye {
    DOUBLE(zzyf.DOUBLE, 1),
    FLOAT(zzyf.FLOAT, 5),
    INT64(r5, 0),
    UINT64(r5, 0),
    INT32(r11, 0),
    FIXED64(r5, 1),
    FIXED32(r11, 5),
    BOOL(zzyf.BOOLEAN, 0),
    STRING(zzyf.STRING, 2),
    GROUP(r13, 3),
    MESSAGE(r13, 2),
    BYTES(zzyf.BYTE_STRING, 2),
    UINT32(r11, 0),
    ENUM(zzyf.ENUM, 0),
    SFIXED32(r11, 5),
    SFIXED64(r5, 1),
    SINT32(r11, 0),
    SINT64(r5, 0);
    
    private final zzyf zzt;

    static {
        zzyf zzyf = zzyf.LONG;
        zzyf zzyf2 = zzyf.INT;
        zzyf zzyf3 = zzyf.MESSAGE;
    }

    private zzye(zzyf zzyf, int i) {
        this.zzt = zzyf;
    }

    public final zzyf zza() {
        return this.zzt;
    }
}
