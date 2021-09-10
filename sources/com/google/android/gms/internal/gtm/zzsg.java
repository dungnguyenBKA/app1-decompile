package com.google.android.gms.internal.gtm;

import com.google.android.gms.internal.gtm.zzsg;
import com.google.android.gms.internal.gtm.zzsh;

public abstract class zzsg<MessageType extends zzsh<MessageType, BuilderType>, BuilderType extends zzsg<MessageType, BuilderType>> implements zzwj {
    /* renamed from: zzv */
    public abstract BuilderType clone();

    /* access modifiers changed from: protected */
    public abstract BuilderType zzw(MessageType messagetype);

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.google.android.gms.internal.gtm.zzsg<MessageType extends com.google.android.gms.internal.gtm.zzsh<MessageType, BuilderType>, BuilderType extends com.google.android.gms.internal.gtm.zzsg<MessageType, BuilderType>> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.gtm.zzwj
    public final /* bridge */ /* synthetic */ zzwj zzx(zzwk zzwk) {
        if (zzar().getClass().isInstance(zzwk)) {
            return zzw((zzsh) zzwk);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
