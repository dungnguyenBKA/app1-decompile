package com.google.android.gms.internal.ads;

public enum zzgp implements zzelg {
    UNSUPPORTED(0),
    ARM7(2),
    X86(4),
    ARM64(5),
    X86_64(6),
    UNKNOWN(999);
    
    private static final zzelf<zzgp> zzes = new zzgs();
    private final int value;

    private zzgp(int i) {
        this.value = i;
    }

    public final String toString() {
        return "<" + zzgp.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final int zzv() {
        return this.value;
    }
}
