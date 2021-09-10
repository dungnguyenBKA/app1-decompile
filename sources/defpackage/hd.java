package defpackage;

import android.net.Uri;

/* renamed from: hd  reason: default package */
public final class hd {
    public static boolean a(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static boolean b(int i, int i2) {
        return i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE && i <= 512 && i2 <= 384;
    }
}
