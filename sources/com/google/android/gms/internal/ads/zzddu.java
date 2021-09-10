package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Set;

public final class zzddu implements zzdfj<Bundle> {
    private final String zzhcj;

    public zzddu(String str) {
        this.zzhcj = str;
    }

    /* access modifiers changed from: private */
    public static boolean zze(Set<String> set) {
        return set.contains("rewarded") || set.contains("interstitial") || set.contains("native") || set.contains("banner");
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        zzdnz.zza(bundle, "omid_v", this.zzhcj);
    }
}
