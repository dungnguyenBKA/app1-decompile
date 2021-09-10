package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;

/* access modifiers changed from: package-private */
public final class zzasn extends zzaxw {
    private final /* synthetic */ QueryInfoGenerationCallback zzdtq;

    zzasn(zzask zzask, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        this.zzdtq = queryInfoGenerationCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void onError(String str) {
        this.zzdtq.onFailure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza(String str, String str2, Bundle bundle) {
        QueryInfo queryInfo = new QueryInfo(new zzzx(str, bundle));
        zzwr.zzqv().put(queryInfo, str2);
        this.zzdtq.onSuccess(queryInfo);
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zzj(String str, String str2) {
        QueryInfo queryInfo = new QueryInfo(new zzzx(str, null));
        zzwr.zzqv().put(queryInfo, str2);
        this.zzdtq.onSuccess(queryInfo);
    }
}
