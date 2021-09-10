package com.google.android.gms.ads;

import android.app.IntentService;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzanf;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzwr;

public class AdService extends IntentService {
    public AdService() {
        super("AdService");
    }

    /* access modifiers changed from: protected */
    public void onHandleIntent(Intent intent) {
        try {
            zzwr.zzqo().zzb(this, new zzanf()).zzc(intent);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 50);
            sb.append("RemoteException calling handleNotificationIntent: ");
            sb.append(valueOf);
            zzazk.zzev(sb.toString());
        }
    }
}
