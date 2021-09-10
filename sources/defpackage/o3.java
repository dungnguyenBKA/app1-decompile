package defpackage;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;
import java.util.Objects;

/* renamed from: o3  reason: default package */
public class o3 {
    private final Object a;

    /* renamed from: o3$a */
    static class a extends AccessibilityNodeProvider {
        final o3 a;

        a(o3 o3Var) {
            this.a = o3Var;
        }

        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            n3 a2 = this.a.a(i);
            if (a2 == null) {
                return null;
            }
            return a2.r0();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            Objects.requireNonNull(this.a);
            return null;
        }

        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.a.d(i, i2, bundle);
        }
    }

    /* renamed from: o3$b */
    static class b extends a {
        b(o3 o3Var) {
            super(o3Var);
        }

        public AccessibilityNodeInfo findFocus(int i) {
            n3 b = this.a.b(i);
            if (b == null) {
                return null;
            }
            return b.r0();
        }
    }

    public o3() {
        this.a = new b(this);
    }

    public n3 a(int i) {
        return null;
    }

    public n3 b(int i) {
        return null;
    }

    public Object c() {
        return this.a;
    }

    public boolean d(int i, int i2, Bundle bundle) {
        return false;
    }

    public o3(Object obj) {
        this.a = obj;
    }
}
