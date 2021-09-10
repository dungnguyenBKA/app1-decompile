package defpackage;

import android.content.Context;

/* access modifiers changed from: package-private */
/* renamed from: v00  reason: default package */
public class v00 {
    private String a;

    v00() {
    }

    /* access modifiers changed from: package-private */
    public synchronized String a(Context context) {
        if (this.a == null) {
            String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
            if (installerPackageName == null) {
                installerPackageName = "";
            }
            this.a = installerPackageName;
        }
        return "".equals(this.a) ? null : this.a;
    }
}
