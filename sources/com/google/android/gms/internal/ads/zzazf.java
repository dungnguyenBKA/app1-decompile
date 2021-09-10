package com.google.android.gms.internal.ads;

import android.util.JsonWriter;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzazf implements zzazh {
    private final byte[] zzehv;

    zzazf(byte[] bArr) {
        this.zzehv = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzazh
    public final void zzb(JsonWriter jsonWriter) {
        zzaze.zza(this.zzehv, jsonWriter);
    }
}
