package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzemo;
import java.security.GeneralSecurityException;

public class zzeav<PrimitiveT, KeyProtoT extends zzemo> implements zzeaw<PrimitiveT> {
    private final zzeax<KeyProtoT> zzibh;
    private final Class<PrimitiveT> zzibi;

    public zzeav(zzeax<KeyProtoT> zzeax, Class<PrimitiveT> cls) {
        if (zzeax.zzbam().contains(cls) || Void.class.equals(cls)) {
            this.zzibh = zzeax;
            this.zzibi = cls;
            return;
        }
        throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", zzeax.toString(), cls.getName()));
    }

    /* JADX DEBUG: Type inference failed for r1v1. Raw type applied. Possible types: java.lang.Class<PrimitiveT>, java.lang.Class<P> */
    private final PrimitiveT zzb(KeyProtoT keyprotot) {
        if (!Void.class.equals(this.zzibi)) {
            this.zzibh.zzc(keyprotot);
            return (PrimitiveT) this.zzibh.zza(keyprotot, (Class<PrimitiveT>) this.zzibi);
        }
        throw new GeneralSecurityException("Cannot create a primitive for Void");
    }

    private final zzeay<?, KeyProtoT> zzbaj() {
        return new zzeay<>(this.zzibh.zzbao());
    }

    @Override // com.google.android.gms.internal.ads.zzeaw
    public final String getKeyType() {
        return this.zzibh.getKeyType();
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: com.google.android.gms.internal.ads.zzemo */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzeaw
    public final PrimitiveT zza(zzemo zzemo) {
        String name = this.zzibh.zzbak().getName();
        String concat = name.length() != 0 ? "Expected proto of type ".concat(name) : new String("Expected proto of type ");
        if (this.zzibh.zzbak().isInstance(zzemo)) {
            return zzb(zzemo);
        }
        throw new GeneralSecurityException(concat);
    }

    @Override // com.google.android.gms.internal.ads.zzeaw
    public final Class<PrimitiveT> zzbai() {
        return this.zzibi;
    }

    @Override // com.google.android.gms.internal.ads.zzeaw
    public final PrimitiveT zzm(zzejr zzejr) {
        try {
            return zzb(this.zzibh.zzp(zzejr));
        } catch (zzelo e) {
            String name = this.zzibh.zzbak().getName();
            throw new GeneralSecurityException(name.length() != 0 ? "Failures parsing proto of type ".concat(name) : new String("Failures parsing proto of type "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeaw
    public final zzemo zzn(zzejr zzejr) {
        try {
            return zzbaj().zzq(zzejr);
        } catch (zzelo e) {
            String name = this.zzibh.zzbao().zzbap().getName();
            throw new GeneralSecurityException(name.length() != 0 ? "Failures parsing proto of type ".concat(name) : new String("Failures parsing proto of type "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeaw
    public final zzegd zzo(zzejr zzejr) {
        try {
            return (zzegd) ((zzelb) zzegd.zzbea().zzhu(this.zzibh.getKeyType()).zzag(zzbaj().zzq(zzejr).zzbfz()).zzb(this.zzibh.zzbal()).zzbiw());
        } catch (zzelo e) {
            throw new GeneralSecurityException("Unexpected proto", e);
        }
    }
}
