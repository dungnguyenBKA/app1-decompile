package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.os.Bundle;
import android.view.Window;

public class U5 implements AbstractC0618Kr {
    @Override // com.facebook.ads.redexgen.X.AbstractC0618Kr
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Window.Callback callback;
        if (activity.getWindow() != null) {
            callback = activity.getWindow().getCallback();
        } else {
            callback = null;
        }
        if (callback != null) {
            Window$CallbackC0614Kn kn = new Window$CallbackC0614Kn(callback, activity);
            Window$CallbackC0614Kn.A00(new U4(this));
            activity.getWindow().setCallback(kn);
        }
    }
}
