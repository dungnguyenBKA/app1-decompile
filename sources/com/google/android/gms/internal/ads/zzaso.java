package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.query.UpdateClickUrlCallback;
import java.util.List;

/* access modifiers changed from: package-private */
public final class zzaso extends zzasi {
    private final /* synthetic */ UpdateClickUrlCallback zzdtr;

    zzaso(zzasm zzasm, UpdateClickUrlCallback updateClickUrlCallback) {
        this.zzdtr = updateClickUrlCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzasj
    public final void onError(String str) {
        this.zzdtr.onFailure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzasj
    public final void onSuccess(List<Uri> list) {
        this.zzdtr.onSuccess(list.get(0));
    }
}
