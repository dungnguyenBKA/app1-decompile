package com.google.android.gms.internal.gtm;

import com.google.android.gms.internal.gtm.zzut;
import com.google.android.gms.internal.gtm.zzuz;

public class zzut<MessageType extends zzuz<MessageType, BuilderType>, BuilderType extends zzut<MessageType, BuilderType>> extends zzsg<MessageType, BuilderType> {
    protected MessageType zza;
    protected boolean zzb = false;
    private final MessageType zzc;

    protected zzut(MessageType messagetype) {
        this.zzc = messagetype;
        this.zza = (MessageType) ((zzuz) messagetype.zzb(4, null, null));
    }

    private static final void zza(MessageType messagetype, MessageType messagetype2) {
        zzwt.zza().zzb(messagetype.getClass()).zzg(messagetype, messagetype2);
    }

    /* renamed from: zzA */
    public final MessageType zzC() {
        MessageType zzB = zzD();
        if (zzB.zzas()) {
            return zzB;
        }
        throw new zzxn(zzB);
    }

    /* renamed from: zzB */
    public MessageType zzD() {
        if (this.zzb) {
            return this.zza;
        }
        MessageType messagetype = this.zza;
        zzwt.zza().zzb(messagetype.getClass()).zzf(messagetype);
        this.zzb = true;
        return this.zza;
    }

    /* access modifiers changed from: protected */
    public void zzF() {
        MessageType messagetype = (MessageType) ((zzuz) this.zza.zzb(4, null, null));
        zza(messagetype, this.zza);
        this.zza = messagetype;
    }

    @Override // com.google.android.gms.internal.gtm.zzwl
    public final /* bridge */ /* synthetic */ zzwk zzar() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.gtm.zzwl
    public final boolean zzas() {
        throw null;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: com.google.android.gms.internal.gtm.zzut<MessageType extends com.google.android.gms.internal.gtm.zzuz<MessageType, BuilderType>, BuilderType extends com.google.android.gms.internal.gtm.zzut<MessageType, BuilderType>> */
    /* JADX WARN: Multi-variable type inference failed */
    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.gtm.zzsg
    public final /* bridge */ /* synthetic */ zzsg zzw(zzsh zzsh) {
        zzz((zzuz) zzsh);
        return this;
    }

    /* renamed from: zzy */
    public final BuilderType zzv() {
        BuilderType buildertype = (BuilderType) ((zzut) this.zzc.zzb(5, null, null));
        buildertype.zzz(zzD());
        return buildertype;
    }

    public final BuilderType zzz(MessageType messagetype) {
        if (this.zzb) {
            zzF();
            this.zzb = false;
        }
        zza(this.zza, messagetype);
        return this;
    }
}
