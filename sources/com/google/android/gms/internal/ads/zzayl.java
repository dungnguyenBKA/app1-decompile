package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.e;
import com.google.android.gms.common.f;
import java.io.IOException;

final class zzayl implements Runnable {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzbaa zzebs;

    zzayl(zzayi zzayi, Context context, zzbaa zzbaa) {
        this.val$context = context;
        this.zzebs = zzbaa;
    }

    public final void run() {
        try {
            this.zzebs.set(AdvertisingIdClient.getAdvertisingIdInfo(this.val$context));
        } catch (e | f | IOException | IllegalStateException e) {
            this.zzebs.setException(e);
            zzazk.zzc("Exception while getting advertising Id info", e);
        }
    }
}
