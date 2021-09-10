package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import defpackage.c;

public class PostMessageService extends Service {
    private c.a b = new a(this);

    class a extends c.a {
        a(PostMessageService postMessageService) {
        }

        @Override // defpackage.c
        public void n(defpackage.a aVar, Bundle bundle) {
            aVar.K(bundle);
        }

        @Override // defpackage.c
        public void u(defpackage.a aVar, String str, Bundle bundle) {
            aVar.J(str, bundle);
        }
    }

    public IBinder onBind(Intent intent) {
        return this.b;
    }
}
