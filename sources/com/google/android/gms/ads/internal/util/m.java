package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzaj;
import com.google.android.gms.internal.ads.zzap;
import com.google.android.gms.internal.ads.zzazk;

final class m implements zzaj {
    private final /* synthetic */ String a;
    private final /* synthetic */ n b;

    m(String str, n nVar) {
        this.a = str;
        this.b = nVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaj
    public final void zzd(zzap zzap) {
        String str = this.a;
        String exc = zzap.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(exc).length() + String.valueOf(str).length() + 21);
        sb.append("Failed to load URL: ");
        sb.append(str);
        sb.append("\n");
        sb.append(exc);
        zzazk.zzex(sb.toString());
        this.b.zzb(null);
    }
}
