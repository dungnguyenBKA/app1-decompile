package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzga;
import com.google.android.gms.internal.measurement.zzgb;

public abstract class zzga<MessageType extends zzgb<MessageType, BuilderType>, BuilderType extends zzga<MessageType, BuilderType>> implements zziw {
    /* renamed from: zzaq */
    public abstract BuilderType clone();

    public BuilderType zzar(byte[] bArr, int i, int i2) {
        throw null;
    }

    public BuilderType zzas(byte[] bArr, int i, int i2, zzhe zzhe) {
        throw null;
    }

    /* access modifiers changed from: protected */
    public abstract BuilderType zzat(MessageType messagetype);

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.google.android.gms.internal.measurement.zzga<MessageType extends com.google.android.gms.internal.measurement.zzgb<MessageType, BuilderType>, BuilderType extends com.google.android.gms.internal.measurement.zzga<MessageType, BuilderType>> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zziw
    public final /* bridge */ /* synthetic */ zziw zzau(zzix zzix) {
        if (zzbK().getClass().isInstance(zzix)) {
            return zzat((zzgb) zzix);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final /* bridge */ /* synthetic */ zziw zzav(byte[] bArr, zzhe zzhe) {
        return zzas(bArr, 0, bArr.length, zzhe);
    }

    @Override // com.google.android.gms.internal.measurement.zziw
    public final /* bridge */ /* synthetic */ zziw zzaw(byte[] bArr) {
        return zzar(bArr, 0, bArr.length);
    }
}
