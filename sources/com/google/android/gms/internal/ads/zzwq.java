package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.HashMap;

/* access modifiers changed from: package-private */
public final class zzwq extends zzws<zzaey> {
    private final /* synthetic */ zzwc zzciw;
    private final /* synthetic */ View zzcjh;
    private final /* synthetic */ HashMap zzcji;
    private final /* synthetic */ HashMap zzcjj;

    zzwq(zzwc zzwc, View view, HashMap hashMap, HashMap hashMap2) {
        this.zzciw = zzwc;
        this.zzcjh = view;
        this.zzcji = hashMap;
        this.zzcjj = hashMap2;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaey zza(zzxy zzxy) {
        return zzxy.zza(aw.Q(this.zzcjh), aw.Q(this.zzcji), aw.Q(this.zzcjj));
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaey zzqj() {
        zzwc.zza(this.zzcjh.getContext(), "native_ad_view_holder_delegate");
        return new zzaaj();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaey zzqk() {
        return this.zzciw.zzcje.zzb(this.zzcjh, this.zzcji, this.zzcjj);
    }
}
