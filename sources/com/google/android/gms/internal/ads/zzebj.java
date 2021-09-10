package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzemo;

public abstract class zzebj<KeyProtoT extends zzemo, PublicKeyProtoT extends zzemo> extends zzeax<KeyProtoT> {
    private final Class<PublicKeyProtoT> zzibw;

    @SafeVarargs
    protected zzebj(Class<KeyProtoT> cls, Class<PublicKeyProtoT> cls2, zzeaz<?, KeyProtoT>... zzeazArr) {
        super(cls, zzeazArr);
        this.zzibw = cls2;
    }
}
