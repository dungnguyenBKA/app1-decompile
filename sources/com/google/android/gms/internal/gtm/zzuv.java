package com.google.android.gms.internal.gtm;

import com.google.android.gms.internal.gtm.zzuu;
import com.google.android.gms.internal.gtm.zzuv;

public abstract class zzuv<MessageType extends zzuv<MessageType, BuilderType>, BuilderType extends zzuu<MessageType, BuilderType>> extends zzuz<MessageType, BuilderType> implements zzwl {
    protected zzuo<zzuw> zza = zzuo.zzd();

    private final void zzc(zzux<MessageType, ?> zzux) {
        if (zzux.zza != ((zzuz) zzb(6, null, null))) {
            throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
        }
    }

    /* access modifiers changed from: package-private */
    public final zzuo<zzuw> zzU() {
        if (this.zza.zzj()) {
            this.zza = this.zza.clone();
        }
        return this.zza;
    }

    public final <Type> Type zzV(zzuh<MessageType, Type> zzuh) {
        zzux<MessageType, ?> zzux = (zzux) zzuh;
        zzc(zzux);
        Type type = (Type) this.zza.zze(zzux.zzd);
        if (type == null) {
            return zzux.zzb;
        }
        if (zzux.zzd.zzc.zza() != zzyf.ENUM) {
            return type;
        }
        zzvc<?> zzvc = zzux.zzd.zza;
        return (Type) zzyl.zzc(type.intValue());
    }

    public final <Type> boolean zzW(zzuh<MessageType, Type> zzuh) {
        zzux<MessageType, ?> zzux = (zzux) zzuh;
        zzc(zzux);
        return this.zza.zza.get(zzux.zzd) != null;
    }
}
