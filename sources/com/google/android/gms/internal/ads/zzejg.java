package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejg;
import com.google.android.gms.internal.ads.zzejh;
import java.io.IOException;

public abstract class zzejg<MessageType extends zzejh<MessageType, BuilderType>, BuilderType extends zzejg<MessageType, BuilderType>> implements zzemn {
    /* access modifiers changed from: protected */
    public abstract BuilderType zza(MessageType messagetype);

    public abstract BuilderType zza(zzekc zzekc, zzeko zzeko);

    public BuilderType zza(byte[] bArr, int i, int i2, zzeko zzeko) {
        try {
            zzekc zzb = zzekc.zzb(bArr, 0, i2, false);
            zza(zzb, zzeko);
            zzb.zzgd(0);
            return this;
        } catch (zzelo e) {
            throw e;
        } catch (IOException e2) {
            String name = getClass().getName();
            StringBuilder p = ic.p("byte array".length() + name.length() + 60, "Reading ", name, " from a ", "byte array");
            p.append(" threw an IOException (should never happen).");
            throw new RuntimeException(p.toString(), e2);
        }
    }

    /* renamed from: zzbfy */
    public abstract BuilderType clone();

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.google.android.gms.internal.ads.zzejg<MessageType extends com.google.android.gms.internal.ads.zzejh<MessageType, BuilderType>, BuilderType extends com.google.android.gms.internal.ads.zzejg<MessageType, BuilderType>> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzemn
    public final /* synthetic */ zzemn zzf(zzemo zzemo) {
        if (zzbiq().getClass().isInstance(zzemo)) {
            return zza((zzejh) zzemo);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
