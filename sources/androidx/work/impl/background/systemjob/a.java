package androidx.work.impl.background.systemjob;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.h;

class a {
    private static final String b = h.f("SystemJobInfoConverter");
    private final ComponentName a;

    a(Context context) {
        this.a = new ComponentName(context.getApplicationContext(), SystemJobService.class);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0020, code lost:
        if (android.os.Build.VERSION.SDK_INT < 26) goto L_0x0028;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0025, code lost:
        if (android.os.Build.VERSION.SDK_INT >= 24) goto L_0x0040;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.app.job.JobInfo a(defpackage.c6 r10, int r11) {
        /*
        // Method dump skipped, instructions count: 243
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.background.systemjob.a.a(c6, int):android.app.job.JobInfo");
    }
}
