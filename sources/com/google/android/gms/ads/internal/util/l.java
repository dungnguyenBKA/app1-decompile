package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzai;
import com.google.android.gms.internal.ads.zzaj;
import com.google.android.gms.internal.ads.zzaze;
import com.google.android.gms.internal.ads.zzbk;
import java.util.Map;

final class l extends zzbk {
    private final /* synthetic */ byte[] b;
    private final /* synthetic */ Map c;
    private final /* synthetic */ zzaze d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    l(int i, String str, zzai zzai, zzaj zzaj, byte[] bArr, Map map, zzaze zzaze) {
        super(i, str, zzai, zzaj);
        this.b = bArr;
        this.c = map;
        this.d = zzaze;
    }

    @Override // com.google.android.gms.internal.ads.zzab
    public final Map<String, String> getHeaders() {
        Map<String, String> map = this.c;
        return map == null ? super.getHeaders() : map;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzbk, com.google.android.gms.internal.ads.zzab
    public final void zza(String str) {
        String str2 = str;
        this.d.zzes(str2);
        super.zza(str2);
    }

    @Override // com.google.android.gms.internal.ads.zzab
    public final byte[] zzg() {
        byte[] bArr = this.b;
        return bArr == null ? super.zzg() : bArr;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzbk
    public final void zzi(String str) {
        this.d.zzes(str);
        super.zza(str);
    }
}
