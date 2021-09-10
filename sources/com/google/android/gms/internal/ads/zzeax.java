package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import com.google.android.gms.internal.ads.zzemo;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public abstract class zzeax<KeyProtoT extends zzemo> {
    private final Class<KeyProtoT> zzibj;
    private final Map<Class<?>, zzeaz<?, KeyProtoT>> zzibk;
    private final Class<?> zzibl;

    @SafeVarargs
    protected zzeax(Class<KeyProtoT> cls, zzeaz<?, KeyProtoT>... zzeazArr) {
        this.zzibj = cls;
        HashMap hashMap = new HashMap();
        for (zzeaz<?, KeyProtoT> zzeaz : zzeazArr) {
            if (hashMap.containsKey(zzeaz.zzbai())) {
                String valueOf = String.valueOf(zzeaz.zzbai().getCanonicalName());
                throw new IllegalArgumentException(valueOf.length() != 0 ? "KeyTypeManager constructed with duplicate factories for primitive ".concat(valueOf) : new String("KeyTypeManager constructed with duplicate factories for primitive "));
            } else {
                hashMap.put(zzeaz.zzbai(), zzeaz);
            }
        }
        if (zzeazArr.length > 0) {
            this.zzibl = zzeazArr[0].zzbai();
        } else {
            this.zzibl = Void.class;
        }
        this.zzibk = Collections.unmodifiableMap(hashMap);
    }

    public abstract String getKeyType();

    public final <P> P zza(KeyProtoT keyprotot, Class<P> cls) {
        zzeaz<?, KeyProtoT> zzeaz = this.zzibk.get(cls);
        if (zzeaz != null) {
            return (P) zzeaz.zzah(keyprotot);
        }
        String canonicalName = cls.getCanonicalName();
        throw new IllegalArgumentException(ic.e(ic.m(canonicalName, 41), "Requested primitive class ", canonicalName, " not supported."));
    }

    public final Class<KeyProtoT> zzbak() {
        return this.zzibj;
    }

    public abstract zzegd.zza zzbal();

    public final Set<Class<?>> zzbam() {
        return this.zzibk.keySet();
    }

    /* access modifiers changed from: package-private */
    public final Class<?> zzban() {
        return this.zzibl;
    }

    public zzeba<?, KeyProtoT> zzbao() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }

    public abstract void zzc(KeyProtoT keyprotot);

    public abstract KeyProtoT zzp(zzejr zzejr);
}
