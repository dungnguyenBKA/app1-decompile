package com.google.android.gms.internal.ads;

import android.content.Context;
import android.widget.FrameLayout;

/* access modifiers changed from: package-private */
public final class zzwn extends zzws<zzaev> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzwc zzciw;
    private final /* synthetic */ FrameLayout zzcjf;
    private final /* synthetic */ FrameLayout zzcjg;

    zzwn(zzwc zzwc, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.zzciw = zzwc;
        this.zzcjf = frameLayout;
        this.zzcjg = frameLayout2;
        this.val$context = context;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaev zza(zzxy zzxy) {
        return zzxy.zza(aw.Q(this.zzcjf), aw.Q(this.zzcjg));
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaev zzqj() {
        zzwc.zza(this.val$context, "native_ad_view_delegate");
        return new zzaag();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaev zzqk() {
        return this.zzciw.zzcja.zzb(this.val$context, this.zzcjf, this.zzcjg);
    }
}
