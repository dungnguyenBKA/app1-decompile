package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.lifecycle.f;
import androidx.lifecycle.i;
import androidx.lifecycle.j;
import androidx.lifecycle.q;
import defpackage.q2;

public class ComponentActivity extends Activity implements i, q2.a {
    private e0<Class<? extends a>, a> mExtraDataMap = new e0<>();
    private j mLifecycleRegistry = new j(this);

    @Deprecated
    public static class a {
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !q2.a(decorView, keyEvent)) {
            return q2.b(this, decorView, this, keyEvent);
        }
        return true;
    }

    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !q2.a(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @Deprecated
    public <T extends a> T getExtraData(Class<T> cls) {
        return (T) this.mExtraDataMap.getOrDefault(cls, null);
    }

    @Override // androidx.lifecycle.i
    public f getLifecycle() {
        return this.mLifecycleRegistry;
    }

    /* access modifiers changed from: protected */
    @SuppressLint({"RestrictedApi"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        q.b(this);
    }

    /* access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle bundle) {
        this.mLifecycleRegistry.g(f.b.CREATED);
        super.onSaveInstanceState(bundle);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: e0<java.lang.Class<? extends androidx.core.app.ComponentActivity$a>, androidx.core.app.ComponentActivity$a> */
    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public void putExtraData(a aVar) {
        this.mExtraDataMap.put(aVar.getClass(), aVar);
    }

    @Override // defpackage.q2.a
    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }
}
