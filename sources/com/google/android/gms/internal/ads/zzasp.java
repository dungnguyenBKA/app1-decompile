package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.query.UpdateImpressionUrlsCallback;
import java.util.List;

/* access modifiers changed from: package-private */
public final class zzasp extends zzasi {
    private final /* synthetic */ UpdateImpressionUrlsCallback zzdts;

    zzasp(zzasm zzasm, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        this.zzdts = updateImpressionUrlsCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzasj
    public final void onError(String str) {
        this.zzdts.onFailure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzasj
    public final void onSuccess(List<Uri> list) {
        this.zzdts.onSuccess(list);
    }
}
