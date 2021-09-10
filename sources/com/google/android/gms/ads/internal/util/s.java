package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.e;
import com.google.android.gms.common.f;
import com.google.android.gms.internal.ads.zzaze;
import com.google.android.gms.internal.ads.zzazk;
import java.io.IOException;

/* access modifiers changed from: package-private */
public final class s extends zza {
    private Context a;

    s(Context context) {
        this.a = context;
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwe() {
        boolean z;
        try {
            z = AdvertisingIdClient.getIsAdIdFakeForDebugLogging(this.a);
        } catch (e | f | IOException | IllegalStateException e) {
            zzazk.zzc("Fail to get isAdIdFakeForDebugLogging", e);
            z = false;
        }
        zzaze.zzas(z);
        StringBuilder sb = new StringBuilder(43);
        sb.append("Update ad debug logging enablement as ");
        sb.append(z);
        zzazk.zzex(sb.toString());
    }
}
