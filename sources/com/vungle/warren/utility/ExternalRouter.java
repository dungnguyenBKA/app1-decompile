package com.vungle.warren.utility;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.vungle.warren.utility.ActivityManager;

public class ExternalRouter {
    public static final String TAG = "ExternalRouter";

    public static boolean launch(String str, Context context, ActivityManager.LeftApplicationCallback leftApplicationCallback) {
        if (!TextUtils.isEmpty(str) && context != null) {
            try {
                Intent parseUri = Intent.parseUri(str, 0);
                parseUri.setFlags(268435456);
                ActivityManager.startWhenForeground(context, parseUri, leftApplicationCallback);
                return true;
            } catch (Exception e) {
                String str2 = TAG;
                StringBuilder q = ic.q("Error while opening url");
                q.append(e.getLocalizedMessage());
                Log.e(str2, q.toString());
            }
        }
        return false;
    }
}
