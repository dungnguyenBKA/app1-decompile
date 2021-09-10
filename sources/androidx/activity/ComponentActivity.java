package androidx.activity;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.lifecycle.f;
import androidx.lifecycle.g;
import androidx.lifecycle.i;
import androidx.lifecycle.j;
import androidx.lifecycle.q;
import androidx.lifecycle.u;
import androidx.lifecycle.v;
import androidx.savedstate.SavedStateRegistry;

public class ComponentActivity extends androidx.core.app.ComponentActivity implements i, v, androidx.savedstate.b, c {
    private int mContentLayoutId;
    private final j mLifecycleRegistry;
    private final OnBackPressedDispatcher mOnBackPressedDispatcher;
    private final androidx.savedstate.a mSavedStateRegistryController;
    private u mViewModelStore;

    class a implements Runnable {
        a() {
        }

        public void run() {
            ComponentActivity.super.onBackPressed();
        }
    }

    /* access modifiers changed from: package-private */
    public static final class b {
        Object a;
        u b;

        b() {
        }
    }

    public ComponentActivity() {
        this.mLifecycleRegistry = new j(this);
        this.mSavedStateRegistryController = androidx.savedstate.a.a(this);
        this.mOnBackPressedDispatcher = new OnBackPressedDispatcher(new a());
        if (getLifecycle() != null) {
            int i = Build.VERSION.SDK_INT;
            getLifecycle().a(new g() {
                /* class androidx.activity.ComponentActivity.AnonymousClass2 */

                @Override // androidx.lifecycle.g
                public void c(i iVar, f.a aVar) {
                    if (aVar == f.a.ON_STOP) {
                        Window window = ComponentActivity.this.getWindow();
                        View peekDecorView = window != null ? window.peekDecorView() : null;
                        if (peekDecorView != null) {
                            peekDecorView.cancelPendingInputEvents();
                        }
                    }
                }
            });
            getLifecycle().a(new g() {
                /* class androidx.activity.ComponentActivity.AnonymousClass3 */

                @Override // androidx.lifecycle.g
                public void c(i iVar, f.a aVar) {
                    if (aVar == f.a.ON_DESTROY && !ComponentActivity.this.isChangingConfigurations()) {
                        ComponentActivity.this.getViewModelStore().a();
                    }
                }
            });
            if (i <= 23) {
                getLifecycle().a(new ImmLeaksCleaner(this));
                return;
            }
            return;
        }
        throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
    }

    @Deprecated
    public Object getLastCustomNonConfigurationInstance() {
        b bVar = (b) getLastNonConfigurationInstance();
        if (bVar != null) {
            return bVar.a;
        }
        return null;
    }

    @Override // androidx.core.app.ComponentActivity, androidx.lifecycle.i
    public f getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // androidx.activity.c
    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.mOnBackPressedDispatcher;
    }

    @Override // androidx.savedstate.b
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.mSavedStateRegistryController.b();
    }

    @Override // androidx.lifecycle.v
    public u getViewModelStore() {
        if (getApplication() != null) {
            if (this.mViewModelStore == null) {
                b bVar = (b) getLastNonConfigurationInstance();
                if (bVar != null) {
                    this.mViewModelStore = bVar.b;
                }
                if (this.mViewModelStore == null) {
                    this.mViewModelStore = new u();
                }
            }
            return this.mViewModelStore;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    public void onBackPressed() {
        this.mOnBackPressedDispatcher.b();
    }

    /* access modifiers changed from: protected */
    @Override // androidx.core.app.ComponentActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mSavedStateRegistryController.c(bundle);
        q.b(this);
        int i = this.mContentLayoutId;
        if (i != 0) {
            setContentView(i);
        }
    }

    @Deprecated
    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    public final Object onRetainNonConfigurationInstance() {
        b bVar;
        Object onRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        u uVar = this.mViewModelStore;
        if (uVar == null && (bVar = (b) getLastNonConfigurationInstance()) != null) {
            uVar = bVar.b;
        }
        if (uVar == null && onRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        b bVar2 = new b();
        bVar2.a = onRetainCustomNonConfigurationInstance;
        bVar2.b = uVar;
        return bVar2;
    }

    /* access modifiers changed from: protected */
    @Override // androidx.core.app.ComponentActivity
    public void onSaveInstanceState(Bundle bundle) {
        f lifecycle = getLifecycle();
        if (lifecycle instanceof j) {
            ((j) lifecycle).k(f.b.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.d(bundle);
    }

    public ComponentActivity(int i) {
        this();
        this.mContentLayoutId = i;
    }
}
