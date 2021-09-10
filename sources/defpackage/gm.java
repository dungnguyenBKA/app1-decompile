package defpackage;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.text.TextUtils;

/* access modifiers changed from: package-private */
/* renamed from: gm  reason: default package */
public class gm implements MediaScannerConnection.OnScanCompletedListener {
    final /* synthetic */ Context a;
    final /* synthetic */ String b;

    gm(Context context, String str) {
        this.a = context;
        this.b = str;
    }

    public void onScanCompleted(String str, Uri uri) {
        if (uri == null || TextUtils.isEmpty(str)) {
            cm.s(this.a, this.b);
            em.h("MediaLibraryUtils", "scannerFile failed: use send broadcast scan file");
        }
    }
}
