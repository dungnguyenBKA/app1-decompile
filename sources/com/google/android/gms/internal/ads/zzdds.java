package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdds implements zzddp {
    private final zzddo zzhch;
    private final ArrayList zzhci;

    zzdds(zzddo zzddo, ArrayList arrayList) {
        this.zzhch = zzddo;
        this.zzhci = arrayList;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final void zzr(Bundle bundle) {
        this.zzhch.zza(this.zzhci, bundle);
    }
}
