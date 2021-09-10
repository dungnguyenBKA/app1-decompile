package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzab;
import com.google.android.gms.internal.ads.zzag;
import com.google.android.gms.internal.ads.zzaze;
import com.google.android.gms.internal.ads.zzbaa;
import com.google.android.gms.internal.ads.zzbc;
import com.google.android.gms.internal.ads.zzz;
import org.apache.http.client.methods.HttpGet;

public final class zzbe extends zzab<zzz> {
    private final zzbaa<zzz> b;
    private final zzaze c;

    public zzbe(String str, zzbaa<zzz> zzbaa) {
        super(0, str, new o(zzbaa));
        this.b = zzbaa;
        zzaze zzaze = new zzaze();
        this.c = zzaze;
        zzaze.zza(str, HttpGet.METHOD_NAME, null, null);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzab
    public final zzag<zzz> zza(zzz zzz) {
        return zzag.zza(zzz, zzbc.zzb(zzz));
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzab
    public final /* synthetic */ void zza(zzz zzz) {
        zzz zzz2 = zzz;
        this.c.zza(zzz2.zzaj, zzz2.statusCode);
        zzaze zzaze = this.c;
        byte[] bArr = zzz2.data;
        if (zzaze.isEnabled() && bArr != null) {
            zzaze.zzi(bArr);
        }
        this.b.set(zzz2);
    }
}
