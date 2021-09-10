package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzho;
import com.google.android.gms.internal.measurement.zzhs;
import java.io.IOException;

public class zzho<MessageType extends zzhs<MessageType, BuilderType>, BuilderType extends zzho<MessageType, BuilderType>> extends zzga<MessageType, BuilderType> {
    protected MessageType zza;
    protected boolean zzb = false;
    private final MessageType zzc;

    protected zzho(MessageType messagetype) {
        this.zzc = messagetype;
        this.zza = (MessageType) ((zzhs) messagetype.zzl(4, null, null));
    }

    private static final void zza(MessageType messagetype, MessageType messagetype2) {
        zzjf.zza().zzb(messagetype.getClass()).zzd(messagetype, messagetype2);
    }

    public final MessageType zzaA() {
        MessageType zzaz = zzaD();
        boolean z = true;
        byte byteValue = ((Byte) zzaz.zzl(1, null, null)).byteValue();
        if (byteValue != 1) {
            if (byteValue == 0) {
                z = false;
            } else {
                boolean zzj = zzjf.zza().zzb(zzaz.getClass()).zzj(zzaz);
                zzaz.zzl(2, true != zzj ? null : zzaz, null);
                z = zzj;
            }
        }
        if (z) {
            return zzaz;
        }
        throw new zzjv(zzaz);
    }

    public final BuilderType zzaB(MessageType messagetype) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        zza(this.zza, messagetype);
        return this;
    }

    public final BuilderType zzaC(byte[] bArr, int i, int i2, zzhe zzhe) {
        if (this.zzb) {
            zzax();
            this.zzb = false;
        }
        try {
            zzjf.zza().zzb(this.zza.getClass()).zzh(this.zza, bArr, 0, i2, new zzge(zzhe));
            return this;
        } catch (zzic e) {
            throw e;
        } catch (IndexOutOfBoundsException unused) {
            throw zzic.zza();
        } catch (IOException e2) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzga
    public final /* bridge */ /* synthetic */ zzga zzar(byte[] bArr, int i, int i2) {
        zzaC(bArr, 0, i2, zzhe.zza());
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzga
    public final /* bridge */ /* synthetic */ zzga zzas(byte[] bArr, int i, int i2, zzhe zzhe) {
        zzaC(bArr, 0, i2, zzhe);
        return this;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: com.google.android.gms.internal.measurement.zzho<MessageType extends com.google.android.gms.internal.measurement.zzhs<MessageType, BuilderType>, BuilderType extends com.google.android.gms.internal.measurement.zzho<MessageType, BuilderType>> */
    /* JADX WARN: Multi-variable type inference failed */
    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzga
    public final /* bridge */ /* synthetic */ zzga zzat(zzgb zzgb) {
        zzaB((zzhs) zzgb);
        return this;
    }

    /* access modifiers changed from: protected */
    public void zzax() {
        MessageType messagetype = (MessageType) ((zzhs) this.zza.zzl(4, null, null));
        zza(messagetype, this.zza);
        this.zza = messagetype;
    }

    /* renamed from: zzay */
    public final BuilderType zzaq() {
        BuilderType buildertype = (BuilderType) ((zzho) this.zzc.zzl(5, null, null));
        buildertype.zzaB(zzaD());
        return buildertype;
    }

    /* renamed from: zzaz */
    public MessageType zzaD() {
        if (this.zzb) {
            return this.zza;
        }
        MessageType messagetype = this.zza;
        zzjf.zza().zzb(messagetype.getClass()).zzi(messagetype);
        this.zzb = true;
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zziy
    public final /* bridge */ /* synthetic */ zzix zzbK() {
        return this.zzc;
    }
}
