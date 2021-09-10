package com.google.android.gms.common.util;

import android.content.Context;
import android.util.Log;
import java.util.Objects;

public final class e {
    public static boolean a(Context context, Throwable th) {
        try {
            Objects.requireNonNull(context, "null reference");
            Objects.requireNonNull(th, "null reference");
            return false;
        } catch (Exception e) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e);
            return false;
        }
    }
}
