package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;

/* access modifiers changed from: package-private */
public final class zzbm implements zzaz {
    private final /* synthetic */ Context val$appContext;
    private File zzdb = null;

    zzbm(Context context) {
        this.val$appContext = context;
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final File zzo() {
        if (this.zzdb == null) {
            this.zzdb = new File(this.val$appContext.getCacheDir(), "volley");
        }
        return this.zzdb;
    }
}
