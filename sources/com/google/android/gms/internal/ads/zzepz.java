package com.google.android.gms.internal.ads;

public final class zzepz<T> implements zzeqb<T> {
    private zzeqo<T> zzjbx;

    public static <T> void zzbd(zzeqo<T> zzeqo, zzeqo<T> zzeqo2) {
        zzeqh.checkNotNull(zzeqo2);
        zzepz zzepz = (zzepz) zzeqo;
        if (zzepz.zzjbx == null) {
            zzepz.zzjbx = zzeqo2;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final T get() {
        zzeqo<T> zzeqo = this.zzjbx;
        if (zzeqo != null) {
            return zzeqo.get();
        }
        throw new IllegalStateException();
    }
}
