package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.f;
import androidx.lifecycle.g;
import androidx.lifecycle.i;
import java.lang.reflect.Field;

final class ImmLeaksCleaner implements g {
    private static int b;
    private static Field c;
    private static Field d;
    private static Field e;
    private Activity a;

    ImmLeaksCleaner(Activity activity) {
        this.a = activity;
    }

    @Override // androidx.lifecycle.g
    public void c(i iVar, f.a aVar) {
        if (aVar == f.a.ON_DESTROY) {
            if (b == 0) {
                try {
                    b = 2;
                    Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                    d = declaredField;
                    declaredField.setAccessible(true);
                    Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                    e = declaredField2;
                    declaredField2.setAccessible(true);
                    Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                    c = declaredField3;
                    declaredField3.setAccessible(true);
                    b = 1;
                } catch (NoSuchFieldException unused) {
                }
            }
            if (b == 1) {
                InputMethodManager inputMethodManager = (InputMethodManager) this.a.getSystemService("input_method");
                try {
                    Object obj = c.get(inputMethodManager);
                    if (obj != null) {
                        synchronized (obj) {
                            try {
                                View view = (View) d.get(inputMethodManager);
                                if (view != null) {
                                    if (!view.isAttachedToWindow()) {
                                        try {
                                            e.set(inputMethodManager, null);
                                            inputMethodManager.isActive();
                                        } catch (IllegalAccessException unused2) {
                                        }
                                    }
                                }
                            } catch (IllegalAccessException unused3) {
                            } catch (ClassCastException unused4) {
                            }
                        }
                    }
                } catch (IllegalAccessException unused5) {
                }
            }
        }
    }
}
