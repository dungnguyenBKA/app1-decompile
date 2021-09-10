package defpackage;

import android.os.Build;
import android.view.WindowInsets;
import java.util.Objects;

/* renamed from: l3  reason: default package */
public class l3 {
    private final Object a;

    l3(Object obj) {
        this.a = obj;
    }

    public static l3 j(WindowInsets windowInsets) {
        Objects.requireNonNull(windowInsets);
        return new l3(windowInsets);
    }

    public l3 a() {
        if (Build.VERSION.SDK_INT >= 20) {
            return new l3(((WindowInsets) this.a).consumeSystemWindowInsets());
        }
        return null;
    }

    public int b() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.a).getSystemWindowInsetBottom();
        }
        return 0;
    }

    public int c() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.a).getSystemWindowInsetLeft();
        }
        return 0;
    }

    public int d() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.a).getSystemWindowInsetRight();
        }
        return 0;
    }

    public int e() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.a).getSystemWindowInsetTop();
        }
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l3)) {
            return false;
        }
        return Objects.equals(this.a, ((l3) obj).a);
    }

    public boolean f() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.a).hasSystemWindowInsets();
        }
        return false;
    }

    public boolean g() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((WindowInsets) this.a).isConsumed();
        }
        return false;
    }

    public l3 h(int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 20) {
            return new l3(((WindowInsets) this.a).replaceSystemWindowInsets(i, i2, i3, i4));
        }
        return null;
    }

    public int hashCode() {
        Object obj = this.a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public WindowInsets i() {
        return (WindowInsets) this.a;
    }
}
