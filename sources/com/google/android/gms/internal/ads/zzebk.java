package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzemo;

public final class zzebk<PrimitiveT, KeyProtoT extends zzemo, PublicKeyProtoT extends zzemo> extends zzeav<PrimitiveT, KeyProtoT> implements zzeaw<PrimitiveT> {
    private final zzebj<KeyProtoT, PublicKeyProtoT> zzibx;
    private final zzeax<PublicKeyProtoT> zziby;

    public zzebk(zzebj<KeyProtoT, PublicKeyProtoT> zzebj, zzeax<PublicKeyProtoT> zzeax, Class<PrimitiveT> cls) {
        super(zzebj, cls);
        this.zzibx = zzebj;
        this.zziby = zzeax;
    }
}
