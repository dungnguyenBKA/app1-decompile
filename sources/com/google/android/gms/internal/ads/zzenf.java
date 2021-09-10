package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* access modifiers changed from: package-private */
public final class zzenf extends zzejs {
    private final zzenh zzitr;
    private zzejw zzits = zzbki();
    private final /* synthetic */ zzeng zzitt;

    zzenf(zzeng zzeng) {
        this.zzitt = zzeng;
        this.zzitr = new zzenh(zzeng, null);
    }

    private final zzejw zzbki() {
        if (this.zzitr.hasNext()) {
            return (zzejw) ((zzejy) this.zzitr.next()).iterator();
        }
        return null;
    }

    public final boolean hasNext() {
        return this.zzits != null;
    }

    @Override // com.google.android.gms.internal.ads.zzejw
    public final byte nextByte() {
        zzejw zzejw = this.zzits;
        if (zzejw != null) {
            byte nextByte = zzejw.nextByte();
            if (!this.zzits.hasNext()) {
                this.zzits = zzbki();
            }
            return nextByte;
        }
        throw new NoSuchElementException();
    }
}
