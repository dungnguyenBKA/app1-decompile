package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import androidx.fragment.app.Fragment;

public abstract class e implements DialogInterface.OnClickListener {
    public static e a(Activity activity, Intent intent, int i) {
        return new s(intent, activity, i);
    }

    public static e b(Fragment fragment, Intent intent, int i) {
        return new t(intent, fragment, i);
    }

    /* access modifiers changed from: protected */
    public abstract void c();

    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            c();
        } catch (ActivityNotFoundException e) {
            Log.e("DialogRedirect", "Failed to start resolution intent", e);
        } finally {
            dialogInterface.dismiss();
        }
    }
}
