package com.google.android.gms.internal.ads;

import java.io.PrintWriter;

final class zzejf extends zzeiz {
    zzejf() {
    }

    @Override // com.google.android.gms.internal.ads.zzeiz
    public final void zza(Throwable th, Throwable th2) {
        th.addSuppressed(th2);
    }

    @Override // com.google.android.gms.internal.ads.zzeiz
    public final void zza(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
    }
}
