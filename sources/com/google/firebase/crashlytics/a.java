package com.google.firebase.crashlytics;

import android.os.Bundle;
import defpackage.vy;
import java.util.Locale;

/* access modifiers changed from: package-private */
public class a implements vy.b {
    private ez a;
    private ez b;

    a() {
    }

    @Override // defpackage.vy.b
    public void a(int i, Bundle bundle) {
        ez ezVar;
        az.f().h(String.format(Locale.US, "Analytics listener received message. ID: %d, Extras: %s", Integer.valueOf(i), bundle));
        String string = bundle.getString("name");
        if (string != null) {
            Bundle bundle2 = bundle.getBundle("params");
            if (bundle2 == null) {
                bundle2 = new Bundle();
            }
            if ("clx".equals(bundle2.getString("_o"))) {
                ezVar = this.a;
            } else {
                ezVar = this.b;
            }
            if (ezVar != null) {
                ezVar.onEvent(string, bundle2);
            }
        }
    }

    public void b(ez ezVar) {
        this.b = ezVar;
    }

    public void c(ez ezVar) {
        this.a = ezVar;
    }
}
