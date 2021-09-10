package com.camerasideas.baseutils.utils.thumbnail;

import android.net.Uri;

public final class a {
    public static final Uri a = a("external");

    static {
        a("internal");
    }

    public static Uri a(String str) {
        return Uri.parse("content://media/" + str + "/images/media");
    }
}
