package com.google.android.gms.internal.ads;

import android.content.DialogInterface;

/* access modifiers changed from: package-private */
public final class zzaqn implements DialogInterface.OnClickListener {
    private final /* synthetic */ zzaql zzdqa;

    zzaqn(zzaql zzaql) {
        this.zzdqa = zzaql;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.zzdqa.zzds("User canceled the download.");
    }
}
