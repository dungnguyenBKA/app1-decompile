package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzaxn implements zzaxs {
    static final zzaxs zzebl = new zzaxn();

    private zzaxn() {
    }

    @Override // com.google.android.gms.internal.ads.zzaxs
    public final Object zza(zzbfu zzbfu) {
        String currentScreenName = zzbfu.getCurrentScreenName();
        if (currentScreenName != null) {
            return currentScreenName;
        }
        String currentScreenClass = zzbfu.getCurrentScreenClass();
        return currentScreenClass != null ? currentScreenClass : "";
    }
}
