package androidx.browser.customtabs;

import android.content.ComponentName;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import defpackage.a;
import java.util.Objects;

public class b {
    private final defpackage.b a;
    private final ComponentName b;

    class a extends a.AbstractBinderC0000a {
        private Handler b = new Handler(Looper.getMainLooper());
        final /* synthetic */ a c;

        /* renamed from: androidx.browser.customtabs.b$a$a  reason: collision with other inner class name */
        class RunnableC0006a implements Runnable {
            final /* synthetic */ int b;
            final /* synthetic */ Bundle c;

            RunnableC0006a(int i, Bundle bundle) {
                this.b = i;
                this.c = bundle;
            }

            public void run() {
                Objects.requireNonNull(a.this);
                throw null;
            }
        }

        /* renamed from: androidx.browser.customtabs.b$a$b  reason: collision with other inner class name */
        class RunnableC0007b implements Runnable {
            final /* synthetic */ String b;
            final /* synthetic */ Bundle c;

            RunnableC0007b(String str, Bundle bundle) {
                this.b = str;
                this.c = bundle;
            }

            public void run() {
                Objects.requireNonNull(a.this);
                throw null;
            }
        }

        class c implements Runnable {
            final /* synthetic */ Bundle b;

            c(Bundle bundle) {
                this.b = bundle;
            }

            public void run() {
                Objects.requireNonNull(a.this);
                throw null;
            }
        }

        class d implements Runnable {
            final /* synthetic */ String b;
            final /* synthetic */ Bundle c;

            d(String str, Bundle bundle) {
                this.b = str;
                this.c = bundle;
            }

            public void run() {
                Objects.requireNonNull(a.this);
                throw null;
            }
        }

        class e implements Runnable {
            final /* synthetic */ int b;
            final /* synthetic */ Uri c;
            final /* synthetic */ boolean d;
            final /* synthetic */ Bundle e;

            e(int i, Uri uri, boolean z, Bundle bundle) {
                this.b = i;
                this.c = uri;
                this.d = z;
                this.e = bundle;
            }

            public void run() {
                Objects.requireNonNull(a.this);
                throw null;
            }
        }

        a(b bVar, a aVar) {
            this.c = aVar;
        }

        @Override // defpackage.a
        public void C(String str, Bundle bundle) {
            if (this.c != null) {
                this.b.post(new RunnableC0007b(str, bundle));
            }
        }

        @Override // defpackage.a
        public void F(int i, Bundle bundle) {
            if (this.c != null) {
                this.b.post(new RunnableC0006a(i, bundle));
            }
        }

        @Override // defpackage.a
        public void J(String str, Bundle bundle) {
            if (this.c != null) {
                this.b.post(new d(str, bundle));
            }
        }

        @Override // defpackage.a
        public void K(Bundle bundle) {
            if (this.c != null) {
                this.b.post(new c(bundle));
            }
        }

        @Override // defpackage.a
        public void L(int i, Uri uri, boolean z, Bundle bundle) {
            if (this.c != null) {
                this.b.post(new e(i, uri, z, bundle));
            }
        }
    }

    b(defpackage.b bVar, ComponentName componentName) {
        this.a = bVar;
        this.b = componentName;
    }

    public e a(a aVar) {
        a aVar2 = new a(this, null);
        try {
            if (!this.a.z(aVar2)) {
                return null;
            }
            return new e(this.a, aVar2, this.b);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public boolean b(long j) {
        try {
            return this.a.r(j);
        } catch (RemoteException unused) {
            return false;
        }
    }
}
