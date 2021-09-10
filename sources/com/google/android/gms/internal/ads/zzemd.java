package com.google.android.gms.internal.ads;

final class zzemd implements zzeml {
    private zzeml[] zzisj;

    zzemd(zzeml... zzemlArr) {
        this.zzisj = zzemlArr;
    }

    @Override // com.google.android.gms.internal.ads.zzeml
    public final boolean zze(Class<?> cls) {
        for (zzeml zzeml : this.zzisj) {
            if (zzeml.zze(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzeml
    public final zzemm zzf(Class<?> cls) {
        zzeml[] zzemlArr = this.zzisj;
        for (zzeml zzeml : zzemlArr) {
            if (zzeml.zze(cls)) {
                return zzeml.zzf(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }
}
