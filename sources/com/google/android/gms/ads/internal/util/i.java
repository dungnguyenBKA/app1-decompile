package com.google.android.gms.ads.internal.util;

import android.content.DialogInterface;
import android.net.Uri;
import com.google.android.gms.ads.internal.zzr;

final class i implements DialogInterface.OnClickListener {
    private final /* synthetic */ h b;

    i(h hVar) {
        this.b = hVar;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        zzr.zzkr();
        zzj.zzb(this.b.b, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
