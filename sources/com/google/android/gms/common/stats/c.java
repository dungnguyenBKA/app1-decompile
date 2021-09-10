package com.google.android.gms.common.stats;

import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;

public class c {
    public static String a(PowerManager.WakeLock wakeLock, String str) {
        String valueOf = String.valueOf(String.valueOf(((long) System.identityHashCode(wakeLock)) | (((long) Process.myPid()) << 32)));
        String str2 = null;
        if (TextUtils.isEmpty(null)) {
            str2 = "";
        }
        String valueOf2 = String.valueOf(str2);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }
}
