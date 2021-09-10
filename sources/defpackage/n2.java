package defpackage;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import defpackage.n3;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: n2  reason: default package */
public class n2 {
    private static final View.AccessibilityDelegate c = new View.AccessibilityDelegate();
    private final View.AccessibilityDelegate a;
    private final View.AccessibilityDelegate b;

    /* access modifiers changed from: package-private */
    /* renamed from: n2$a */
    public static final class a extends View.AccessibilityDelegate {
        final n2 a;

        a(n2 n2Var) {
            this.a = n2Var;
        }

        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.a.a(view, accessibilityEvent);
        }

        public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            o3 b = this.a.b(view);
            if (b != null) {
                return (AccessibilityNodeProvider) b.c();
            }
            return null;
        }

        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.a.d(view, accessibilityEvent);
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            boolean z;
            boolean z2;
            n3 s0 = n3.s0(accessibilityNodeInfo);
            int i = c3.g;
            Boolean bool = (Boolean) new d3(R.id.rh, Boolean.class, 28).d(view);
            if (bool == null) {
                z = false;
            } else {
                z = bool.booleanValue();
            }
            s0.j0(z);
            Boolean bool2 = (Boolean) new f3(R.id.re, Boolean.class, 28).d(view);
            if (bool2 == null) {
                z2 = false;
            } else {
                z2 = bool2.booleanValue();
            }
            s0.b0(z2);
            s0.g0((CharSequence) new e3(R.id.rf, CharSequence.class, 8, 28).d(view));
            this.a.e(view, s0);
            s0.e(accessibilityNodeInfo.getText(), view);
            List list = (List) view.getTag(R.id.rc);
            if (list == null) {
                list = Collections.emptyList();
            }
            for (int i2 = 0; i2 < list.size(); i2++) {
                s0.b((n3.a) list.get(i2));
            }
        }

        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.a.f(view, accessibilityEvent);
        }

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.a.g(viewGroup, view, accessibilityEvent);
        }

        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return this.a.h(view, i, bundle);
        }

        public void sendAccessibilityEvent(View view, int i) {
            this.a.i(view, i);
        }

        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.a.j(view, accessibilityEvent);
        }
    }

    public n2() {
        this.a = c;
        this.b = new a(this);
    }

    public boolean a(View view, AccessibilityEvent accessibilityEvent) {
        return this.a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public o3 b(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = this.a.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new o3(accessibilityNodeProvider);
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public View.AccessibilityDelegate c() {
        return this.b;
    }

    public void d(View view, AccessibilityEvent accessibilityEvent) {
        this.a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void e(View view, n3 n3Var) {
        this.a.onInitializeAccessibilityNodeInfo(view, n3Var.r0());
    }

    public void f(View view, AccessibilityEvent accessibilityEvent) {
        this.a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean g(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public boolean h(View view, int i, Bundle bundle) {
        boolean z;
        WeakReference weakReference;
        boolean z2;
        List list = (List) view.getTag(R.id.rc);
        if (list == null) {
            list = Collections.emptyList();
        }
        boolean z3 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= list.size()) {
                z = false;
                break;
            }
            n3.a aVar = (n3.a) list.get(i2);
            if (aVar.b() == i) {
                z = aVar.c(view, bundle);
                break;
            }
            i2++;
        }
        if (!z) {
            z = this.a.performAccessibilityAction(view, i, bundle);
        }
        if (z || i != R.id.q) {
            return z;
        }
        int i3 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
        SparseArray sparseArray = (SparseArray) view.getTag(R.id.rd);
        if (!(sparseArray == null || (weakReference = (WeakReference) sparseArray.get(i3)) == null)) {
            ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
            if (clickableSpan != null) {
                ClickableSpan[] m = n3.m(view.createAccessibilityNodeInfo().getText());
                int i4 = 0;
                while (true) {
                    if (m == null || i4 >= m.length) {
                        break;
                    } else if (clickableSpan.equals(m[i4])) {
                        z2 = true;
                        break;
                    } else {
                        i4++;
                    }
                }
            }
            z2 = false;
            if (z2) {
                clickableSpan.onClick(view);
                z3 = true;
            }
        }
        return z3;
    }

    public void i(View view, int i) {
        this.a.sendAccessibilityEvent(view, i);
    }

    public void j(View view, AccessibilityEvent accessibilityEvent) {
        this.a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public n2(View.AccessibilityDelegate accessibilityDelegate) {
        this.a = accessibilityDelegate;
        this.b = new a(this);
    }
}
