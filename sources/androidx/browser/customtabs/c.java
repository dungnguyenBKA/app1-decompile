package androidx.browser.customtabs;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;

public final class c {
    public final Intent a;

    public static final class a {
        private final Intent a;
        private boolean b = true;

        public a(e eVar) {
            IBinder iBinder;
            Intent intent = new Intent("android.intent.action.VIEW");
            this.a = intent;
            if (eVar != null) {
                intent.setPackage(eVar.b().getPackageName());
            }
            Bundle bundle = new Bundle();
            if (eVar == null) {
                iBinder = null;
            } else {
                iBinder = eVar.a();
            }
            bundle.putBinder("android.support.customtabs.extra.SESSION", iBinder);
            intent.putExtras(bundle);
        }

        public c a() {
            this.a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.b);
            return new c(this.a, null);
        }
    }

    c(Intent intent, Bundle bundle) {
        this.a = intent;
    }
}
