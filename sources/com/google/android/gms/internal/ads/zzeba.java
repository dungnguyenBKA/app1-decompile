package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzemo;

public abstract class zzeba<KeyFormatProtoT extends zzemo, KeyT> {
    private final Class<KeyFormatProtoT> zzibj;

    public zzeba(Class<KeyFormatProtoT> cls) {
        this.zzibj = cls;
    }

    public final Class<KeyFormatProtoT> zzbap() {
        return this.zzibj;
    }

    public abstract void zzd(KeyFormatProtoT keyformatprotot);

    public abstract KeyT zze(KeyFormatProtoT keyformatprotot);

    public abstract KeyFormatProtoT zzr(zzejr zzejr);
}
