package com.google.android.gms.internal.ads;

import java.util.List;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzclv implements Runnable {
    private final String zzesf;
    private final zzclq zzgmp;
    private final zzdog zzgnd;
    private final zzajj zzgne;
    private final List zzgnf;

    zzclv(zzclq zzclq, zzdog zzdog, zzajj zzajj, List list, String str) {
        this.zzgmp = zzclq;
        this.zzgnd = zzdog;
        this.zzgne = zzajj;
        this.zzgnf = list;
        this.zzesf = str;
    }

    public final void run() {
        this.zzgmp.zza(this.zzgnd, this.zzgne, this.zzgnf, this.zzesf);
    }
}
