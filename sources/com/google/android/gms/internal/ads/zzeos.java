package com.google.android.gms.internal.ads;

/* JADX WARN: Init of enum zziwe can be incorrect */
/* JADX WARN: Init of enum zziwf can be incorrect */
/* JADX WARN: Init of enum zziwg can be incorrect */
/* JADX WARN: Init of enum zziwh can be incorrect */
/* JADX WARN: Init of enum zziwi can be incorrect */
/* JADX WARN: Init of enum zziwl can be incorrect */
/* JADX WARN: Init of enum zziwm can be incorrect */
/* JADX WARN: Init of enum zziwo can be incorrect */
/* JADX WARN: Init of enum zziwq can be incorrect */
/* JADX WARN: Init of enum zziwr can be incorrect */
/* JADX WARN: Init of enum zziws can be incorrect */
/* JADX WARN: Init of enum zziwt can be incorrect */
public enum zzeos {
    DOUBLE(zzeov.DOUBLE, 1),
    FLOAT(zzeov.FLOAT, 5),
    INT64(r5, 0),
    UINT64(r5, 0),
    INT32(r11, 0),
    FIXED64(r5, 1),
    FIXED32(r11, 5),
    BOOL(zzeov.BOOLEAN, 0),
    STRING(zzeov.STRING, 2) {
    },
    GROUP(r13, 3) {
    },
    MESSAGE(r13, 2) {
    },
    BYTES(zzeov.BYTE_STRING, 2) {
    },
    UINT32(r11, 0),
    ENUM(zzeov.ENUM, 0),
    SFIXED32(r11, 5),
    SFIXED64(r5, 1),
    SINT32(r11, 0),
    SINT64(r5, 0);
    
    private final zzeov zziwu;
    private final int zziwv;

    static {
        zzeov zzeov = zzeov.LONG;
        zzeov zzeov2 = zzeov.INT;
        zzeov zzeov3 = zzeov.MESSAGE;
    }

    private zzeos(zzeov zzeov, int i) {
        this.zziwu = zzeov;
        this.zziwv = i;
    }

    public final zzeov zzbli() {
        return this.zziwu;
    }

    public final int zzblj() {
        return this.zziwv;
    }

    /* synthetic */ zzeos(zzeov zzeov, int i, zzeop zzeop) {
        this(zzeov, i);
    }
}
