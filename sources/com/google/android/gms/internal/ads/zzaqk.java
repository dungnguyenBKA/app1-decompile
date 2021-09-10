package com.google.android.gms.internal.ads;

import android.app.DownloadManager;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.ui.JavascriptBridge;

/* access modifiers changed from: package-private */
public final class zzaqk implements DialogInterface.OnClickListener {
    private final /* synthetic */ String zzdpy;
    private final /* synthetic */ String zzdpz;
    private final /* synthetic */ zzaql zzdqa;

    zzaqk(zzaql zzaql, String str, String str2) {
        this.zzdqa = zzaql;
        this.zzdpy = str;
        this.zzdpz = str2;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        DownloadManager downloadManager = (DownloadManager) this.zzdqa.context.getSystemService(JavascriptBridge.MraidHandler.DOWNLOAD_ACTION);
        try {
            String str = this.zzdpy;
            String str2 = this.zzdpz;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            zzr.zzkr();
            zzj.zza(request);
            downloadManager.enqueue(request);
        } catch (IllegalStateException unused) {
            this.zzdqa.zzds("Could not store picture.");
        }
    }
}
