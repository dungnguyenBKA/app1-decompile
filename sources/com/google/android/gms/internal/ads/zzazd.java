package com.google.android.gms.internal.ads;

import android.util.JsonWriter;
import java.util.Map;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzazd implements zzazh {
    private final String zzdjf;
    private final String zzdlh;
    private final Map zzehq;
    private final byte[] zzehr;

    zzazd(String str, String str2, Map map, byte[] bArr) {
        this.zzdlh = str;
        this.zzdjf = str2;
        this.zzehq = map;
        this.zzehr = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzazh
    public final void zzb(JsonWriter jsonWriter) {
        zzaze.zza(this.zzdlh, this.zzdjf, this.zzehq, this.zzehr, jsonWriter);
    }
}
