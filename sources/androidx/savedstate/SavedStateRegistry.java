package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.f;
import androidx.lifecycle.g;
import androidx.lifecycle.i;
import java.util.Map;
import java.util.Objects;

@SuppressLint({"RestrictedApi"})
public final class SavedStateRegistry {
    private w<String, b> a = new w<>();
    private Bundle b;
    private boolean c;

    public interface a {
        void a(b bVar);
    }

    public interface b {
        Bundle a();
    }

    SavedStateRegistry() {
    }

    public Bundle a(String str) {
        if (this.c) {
            Bundle bundle = this.b;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.b.remove(str);
            if (this.b.isEmpty()) {
                this.b = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    /* access modifiers changed from: package-private */
    public void b(f fVar, Bundle bundle) {
        if (!this.c) {
            if (bundle != null) {
                this.b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
            fVar.a(new g() {
                /* class androidx.savedstate.SavedStateRegistry.AnonymousClass1 */

                @Override // androidx.lifecycle.g
                public void c(i iVar, f.a aVar) {
                    if (aVar == f.a.ON_START) {
                        Objects.requireNonNull(SavedStateRegistry.this);
                    } else if (aVar == f.a.ON_STOP) {
                        Objects.requireNonNull(SavedStateRegistry.this);
                    }
                }
            });
            this.c = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already restored.");
    }

    /* access modifiers changed from: package-private */
    public void c(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        w<K, V>.d d = this.a.d();
        while (d.hasNext()) {
            Map.Entry entry = (Map.Entry) d.next();
            bundle2.putBundle((String) entry.getKey(), ((b) entry.getValue()).a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
