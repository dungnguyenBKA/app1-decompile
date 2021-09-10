package defpackage;

import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import defpackage.n2;
import defpackage.n3;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: c3  reason: default package */
public class c3 {
    private static final AtomicInteger a = new AtomicInteger(1);
    private static WeakHashMap<View, String> b;
    private static WeakHashMap<View, h3> c = null;
    private static Field d;
    private static boolean e = false;
    private static ThreadLocal<Rect> f;
    public static final /* synthetic */ int g = 0;

    /* access modifiers changed from: package-private */
    /* renamed from: c3$a */
    public static class a implements View.OnApplyWindowInsetsListener {
        final /* synthetic */ y2 a;

        a(y2 y2Var) {
            this.a = y2Var;
        }

        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            Objects.requireNonNull(windowInsets);
            return this.a.a(view, new l3(windowInsets)).i();
        }
    }

    /* renamed from: c3$b */
    static class b implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {
        private WeakHashMap<View, Boolean> b = new WeakHashMap<>();

        b() {
        }

        public void onGlobalLayout() {
            for (Map.Entry<View, Boolean> entry : this.b.entrySet()) {
                View key = entry.getKey();
                boolean booleanValue = entry.getValue().booleanValue();
                boolean z = key.getVisibility() == 0;
                if (booleanValue != z) {
                    if (z) {
                        c3.m(key, 16);
                    }
                    this.b.put(key, Boolean.valueOf(z));
                }
            }
        }

        public void onViewAttachedToWindow(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* renamed from: c3$d */
    public interface d {
        boolean a(View view, KeyEvent keyEvent);
    }

    /* access modifiers changed from: package-private */
    /* renamed from: c3$e */
    public static class e {
        private static final ArrayList<WeakReference<View>> d = new ArrayList<>();
        public static final /* synthetic */ int e = 0;
        private WeakHashMap<View, Boolean> a = null;
        private SparseArray<WeakReference<View>> b = null;
        private WeakReference<KeyEvent> c = null;

        e() {
        }

        private View b(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.a;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View b2 = b(viewGroup.getChildAt(childCount), keyEvent);
                        if (b2 != null) {
                            return b2;
                        }
                    }
                }
                if (c(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        private boolean c(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(R.id.rk);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((d) arrayList.get(size)).a(view, keyEvent)) {
                    return true;
                }
            }
            return false;
        }

        /* access modifiers changed from: package-private */
        public boolean a(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                WeakHashMap<View, Boolean> weakHashMap = this.a;
                if (weakHashMap != null) {
                    weakHashMap.clear();
                }
                ArrayList<WeakReference<View>> arrayList = d;
                if (!arrayList.isEmpty()) {
                    synchronized (arrayList) {
                        if (this.a == null) {
                            this.a = new WeakHashMap<>();
                        }
                        int size = arrayList.size();
                        while (true) {
                            size--;
                            if (size < 0) {
                                break;
                            }
                            ArrayList<WeakReference<View>> arrayList2 = d;
                            View view2 = arrayList2.get(size).get();
                            if (view2 == null) {
                                arrayList2.remove(size);
                            } else {
                                this.a.put(view2, Boolean.TRUE);
                                for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                    this.a.put((View) parent, Boolean.TRUE);
                                }
                            }
                        }
                    }
                }
            }
            View b2 = b(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (b2 != null && !KeyEvent.isModifierKey(keyCode)) {
                    if (this.b == null) {
                        this.b = new SparseArray<>();
                    }
                    this.b.put(keyCode, new WeakReference<>(b2));
                }
            }
            return b2 != null;
        }

        /* access modifiers changed from: package-private */
        public boolean d(KeyEvent keyEvent) {
            int indexOfKey;
            WeakReference<KeyEvent> weakReference = this.c;
            if (weakReference != null && weakReference.get() == keyEvent) {
                return false;
            }
            this.c = new WeakReference<>(keyEvent);
            WeakReference<View> weakReference2 = null;
            if (this.b == null) {
                this.b = new SparseArray<>();
            }
            SparseArray<WeakReference<View>> sparseArray = this.b;
            if (keyEvent.getAction() == 1 && (indexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                weakReference2 = sparseArray.valueAt(indexOfKey);
                sparseArray.removeAt(indexOfKey);
            }
            if (weakReference2 == null) {
                weakReference2 = sparseArray.get(keyEvent.getKeyCode());
            }
            if (weakReference2 == null) {
                return false;
            }
            View view = weakReference2.get();
            if (view != null) {
                int i = c3.g;
                if (view.isAttachedToWindow()) {
                    c(view, keyEvent);
                }
            }
            return true;
        }
    }

    static {
        new b();
    }

    private static void A(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    public static h3 a(View view) {
        if (c == null) {
            c = new WeakHashMap<>();
        }
        h3 h3Var = c.get(view);
        if (h3Var != null) {
            return h3Var;
        }
        h3 h3Var2 = new h3(view);
        c.put(view, h3Var2);
        return h3Var2;
    }

    private static void b(View view, int i) {
        view.offsetLeftAndRight(i);
        if (view.getVisibility() == 0) {
            float translationY = view.getTranslationY();
            view.setTranslationY(1.0f + translationY);
            view.setTranslationY(translationY);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                A((View) parent);
            }
        }
    }

    private static void c(View view, int i) {
        view.offsetTopAndBottom(i);
        if (view.getVisibility() == 0) {
            float translationY = view.getTranslationY();
            view.setTranslationY(1.0f + translationY);
            view.setTranslationY(translationY);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                A((View) parent);
            }
        }
    }

    public static l3 d(View view, l3 l3Var) {
        if (Build.VERSION.SDK_INT < 21) {
            return l3Var;
        }
        WindowInsets i = l3Var.i();
        WindowInsets dispatchApplyWindowInsets = view.dispatchApplyWindowInsets(i);
        if (!dispatchApplyWindowInsets.equals(i)) {
            i = new WindowInsets(dispatchApplyWindowInsets);
        }
        return l3.j(i);
    }

    static boolean e(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        int i = e.e;
        e eVar = (e) view.getTag(R.id.rj);
        if (eVar == null) {
            eVar = new e();
            view.setTag(R.id.rj, eVar);
        }
        return eVar.a(view, keyEvent);
    }

    public static n2 f(View view) {
        View.AccessibilityDelegate g2 = g(view);
        if (g2 == null) {
            return null;
        }
        if (g2 instanceof n2.a) {
            return ((n2.a) g2).a;
        }
        return new n2(g2);
    }

    private static View.AccessibilityDelegate g(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return view.getAccessibilityDelegate();
        }
        if (e) {
            return null;
        }
        if (d == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                d = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                e = true;
                return null;
            }
        }
        try {
            Object obj = d.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            e = true;
            return null;
        }
    }

    public static ColorStateList h(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintList();
        }
        if (view instanceof b3) {
            return ((b3) view).d();
        }
        return null;
    }

    public static float i(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getElevation();
        }
        return 0.0f;
    }

    private static Rect j() {
        if (f == null) {
            f = new ThreadLocal<>();
        }
        Rect rect = f.get();
        if (rect == null) {
            rect = new Rect();
            f.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    public static String k(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getTransitionName();
        }
        WeakHashMap<View, String> weakHashMap = b;
        if (weakHashMap == null) {
            return null;
        }
        return weakHashMap.get(view);
    }

    public static boolean l(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.isNestedScrollingEnabled();
        }
        if (view instanceof s2) {
            return ((s2) view).isNestedScrollingEnabled();
        }
        return false;
    }

    static void m(View view, int i) {
        if (((AccessibilityManager) view.getContext().getSystemService("accessibility")).isEnabled()) {
            boolean z = ((CharSequence) new e3(R.id.rf, CharSequence.class, 8, 28).d(view)) != null;
            if (view.getAccessibilityLiveRegion() != 0 || (z && view.getVisibility() == 0)) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z ? 32 : 2048);
                obtain.setContentChangeTypes(i);
                view.sendAccessibilityEventUnchecked(obtain);
            } else if (view.getParent() != null) {
                try {
                    view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
                } catch (AbstractMethodError e2) {
                    Log.e("ViewCompat", view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e2);
                }
            }
        }
    }

    public static void n(View view, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            view.offsetLeftAndRight(i);
        } else if (i2 >= 21) {
            Rect j = j();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                j.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !j.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            b(view, i);
            if (z && j.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(j);
            }
        } else {
            b(view, i);
        }
    }

    public static void o(View view, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            view.offsetTopAndBottom(i);
        } else if (i2 >= 21) {
            Rect j = j();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                j.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !j.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            c(view, i);
            if (z && j.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(j);
            }
        } else {
            c(view, i);
        }
    }

    public static l3 p(View view, l3 l3Var) {
        if (Build.VERSION.SDK_INT < 21) {
            return l3Var;
        }
        WindowInsets i = l3Var.i();
        WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(i);
        if (!onApplyWindowInsets.equals(i)) {
            i = new WindowInsets(onApplyWindowInsets);
        }
        return l3.j(i);
    }

    public static void q(View view, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            r(i, view);
            m(view, 0);
        }
    }

    private static void r(int i, View view) {
        ArrayList arrayList = (ArrayList) view.getTag(R.id.rc);
        if (arrayList == null) {
            arrayList = new ArrayList();
            view.setTag(R.id.rc, arrayList);
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (((n3.a) arrayList.get(i2)).b() == i) {
                arrayList.remove(i2);
                return;
            }
        }
    }

    public static void s(View view, n3.a aVar, CharSequence charSequence, p3 p3Var) {
        if (p3Var == null) {
            q(view, aVar.b());
            return;
        }
        n3.a a2 = aVar.a(null, p3Var);
        if (Build.VERSION.SDK_INT >= 21) {
            n2 f2 = f(view);
            if (f2 == null) {
                f2 = new n2();
            }
            u(view, f2);
            r(a2.b(), view);
            ArrayList arrayList = (ArrayList) view.getTag(R.id.rc);
            if (arrayList == null) {
                arrayList = new ArrayList();
                view.setTag(R.id.rc, arrayList);
            }
            arrayList.add(a2);
            m(view, 0);
        }
    }

    public static void t(View view) {
        if (Build.VERSION.SDK_INT >= 20) {
            view.requestApplyInsets();
        } else {
            view.requestFitSystemWindows();
        }
    }

    public static void u(View view, n2 n2Var) {
        View.AccessibilityDelegate accessibilityDelegate;
        if (n2Var == null && (g(view) instanceof n2.a)) {
            n2Var = new n2();
        }
        if (n2Var == null) {
            accessibilityDelegate = null;
        } else {
            accessibilityDelegate = n2Var.c();
        }
        view.setAccessibilityDelegate(accessibilityDelegate);
    }

    public static void v(View view, boolean z) {
        new f3(R.id.re, Boolean.class, 28).e(view, Boolean.valueOf(z));
    }

    public static void w(View view, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setElevation(f2);
        }
    }

    public static void x(View view, y2 y2Var) {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (y2Var == null) {
            view.setOnApplyWindowInsetsListener(null);
        } else {
            view.setOnApplyWindowInsetsListener(new a(y2Var));
        }
    }

    public static void y(View view, a3 a3Var) {
        if (Build.VERSION.SDK_INT >= 24) {
            view.setPointerIcon((PointerIcon) (a3Var != null ? a3Var.a() : null));
        }
    }

    public static void z(View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTransitionName(str);
            return;
        }
        if (b == null) {
            b = new WeakHashMap<>();
        }
        b.put(view, str);
    }

    /* access modifiers changed from: package-private */
    /* renamed from: c3$c */
    public static abstract class c<T> {
        private final int a;
        private final Class<T> b;
        private final int c;

        c(int i, Class<T> cls, int i2) {
            this.a = i;
            this.b = cls;
            this.c = i2;
        }

        /* access modifiers changed from: package-private */
        public boolean a(Boolean bool, Boolean bool2) {
            boolean z;
            boolean booleanValue = bool == null ? false : bool.booleanValue();
            if (bool2 == null) {
                z = false;
            } else {
                z = bool2.booleanValue();
            }
            if (booleanValue == z) {
                return true;
            }
            return false;
        }

        /* access modifiers changed from: package-private */
        public abstract T b(View view);

        /* access modifiers changed from: package-private */
        public abstract void c(View view, T t);

        /* access modifiers changed from: package-private */
        public T d(View view) {
            if (Build.VERSION.SDK_INT >= this.c) {
                return b(view);
            }
            T t = (T) view.getTag(this.a);
            if (this.b.isInstance(t)) {
                return t;
            }
            return null;
        }

        /* access modifiers changed from: package-private */
        public void e(View view, T t) {
            if (Build.VERSION.SDK_INT >= this.c) {
                c(view, t);
            } else if (f(d(view), t)) {
                n2 f = c3.f(view);
                if (f == null) {
                    f = new n2();
                }
                c3.u(view, f);
                view.setTag(this.a, t);
                c3.m(view, 0);
            }
        }

        /* access modifiers changed from: package-private */
        public abstract boolean f(T t, T t2);

        c(int i, Class<T> cls, int i2, int i3) {
            this.a = i;
            this.b = cls;
            this.c = i3;
        }
    }
}
