package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzbeh implements zzdzl<Map<String, String>> {
    private final /* synthetic */ Uri val$uri;
    private final /* synthetic */ zzbee zzern;
    private final /* synthetic */ List zzero;
    private final /* synthetic */ String zzerp;

    zzbeh(zzbee zzbee, List list, String str, Uri uri) {
        this.zzern = zzbee;
        this.zzero = list;
        this.zzerp = str;
        this.val$uri = uri;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(Map<String, String> map) {
        this.zzern.zza((zzbee) map, (Map) this.zzero, (List) this.zzerp);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        String valueOf = String.valueOf(this.val$uri);
        StringBuilder sb = new StringBuilder(valueOf.length() + 33);
        sb.append("Failed to parse gmsg params for: ");
        sb.append(valueOf);
        zzazk.zzex(sb.toString());
    }
}
