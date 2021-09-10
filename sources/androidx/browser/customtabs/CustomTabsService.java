package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import defpackage.b;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;

public abstract class CustomTabsService extends Service {
    final Map<IBinder, IBinder.DeathRecipient> b = new x();
    private b.a c = new a();

    class a extends b.a {

        /* renamed from: androidx.browser.customtabs.CustomTabsService$a$a  reason: collision with other inner class name */
        class C0005a implements IBinder.DeathRecipient {
            final /* synthetic */ f a;

            C0005a(f fVar) {
                this.a = fVar;
            }

            public void binderDied() {
                CustomTabsService customTabsService = CustomTabsService.this;
                f fVar = this.a;
                Objects.requireNonNull(customTabsService);
                try {
                    synchronized (customTabsService.b) {
                        IBinder a2 = fVar.a();
                        a2.unlinkToDeath(customTabsService.b.get(a2), 0);
                        customTabsService.b.remove(a2);
                    }
                } catch (NoSuchElementException unused) {
                }
            }
        }

        a() {
        }

        @Override // defpackage.b
        public boolean E(defpackage.a aVar, Bundle bundle) {
            return CustomTabsService.this.f(new f(aVar), bundle);
        }

        @Override // defpackage.b
        public boolean G(defpackage.a aVar, Uri uri) {
            return CustomTabsService.this.e(new f(aVar), uri);
        }

        @Override // defpackage.b
        public boolean c(defpackage.a aVar, Uri uri, Bundle bundle, List<Bundle> list) {
            return CustomTabsService.this.b(new f(aVar), uri, bundle, list);
        }

        @Override // defpackage.b
        public boolean d(defpackage.a aVar, int i, Uri uri, Bundle bundle) {
            return CustomTabsService.this.g(new f(aVar), i, uri, bundle);
        }

        @Override // defpackage.b
        public Bundle j(String str, Bundle bundle) {
            return CustomTabsService.this.a(str, bundle);
        }

        @Override // defpackage.b
        public boolean r(long j) {
            return CustomTabsService.this.h(j);
        }

        @Override // defpackage.b
        public int x(defpackage.a aVar, String str, Bundle bundle) {
            return CustomTabsService.this.d(new f(aVar), str, bundle);
        }

        @Override // defpackage.b
        public boolean z(defpackage.a aVar) {
            f fVar = new f(aVar);
            try {
                C0005a aVar2 = new C0005a(fVar);
                synchronized (CustomTabsService.this.b) {
                    aVar.asBinder().linkToDeath(aVar2, 0);
                    CustomTabsService.this.b.put(aVar.asBinder(), aVar2);
                }
                return CustomTabsService.this.c(fVar);
            } catch (RemoteException unused) {
                return false;
            }
        }
    }

    /* access modifiers changed from: protected */
    public abstract Bundle a(String str, Bundle bundle);

    /* access modifiers changed from: protected */
    public abstract boolean b(f fVar, Uri uri, Bundle bundle, List<Bundle> list);

    /* access modifiers changed from: protected */
    public abstract boolean c(f fVar);

    /* access modifiers changed from: protected */
    public abstract int d(f fVar, String str, Bundle bundle);

    /* access modifiers changed from: protected */
    public abstract boolean e(f fVar, Uri uri);

    /* access modifiers changed from: protected */
    public abstract boolean f(f fVar, Bundle bundle);

    /* access modifiers changed from: protected */
    public abstract boolean g(f fVar, int i, Uri uri, Bundle bundle);

    /* access modifiers changed from: protected */
    public abstract boolean h(long j);

    public IBinder onBind(Intent intent) {
        return this.c;
    }
}
