package androidx.fragment.app;

import android.os.Build;
import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* access modifiers changed from: package-private */
public class r {
    private static final int[] a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};
    private static final w b = (Build.VERSION.SDK_INT >= 21 ? new s() : null);
    private static final w c;

    /* access modifiers changed from: package-private */
    public static class a {
        public Fragment a;
        public boolean b;
        public a c;
        public Fragment d;
        public boolean e;
        public a f;

        a() {
        }
    }

    static {
        w wVar = null;
        try {
            wVar = (w) Class.forName("androidx.transition.e").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
        }
        c = wVar;
    }

    private static void a(ArrayList<View> arrayList, x<String, View> xVar, Collection<String> collection) {
        for (int size = xVar.size() - 1; size >= 0; size--) {
            View l = xVar.l(size);
            if (collection.contains(c3.k(l))) {
                arrayList.add(l);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0038, code lost:
        if (r6.k != false) goto L_0x008a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0076, code lost:
        r12 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0088, code lost:
        if (r6.y == false) goto L_0x008a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x008a, code lost:
        r12 = true;
     */
    /* JADX WARNING: Removed duplicated region for block: B:100:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0099  */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x00dc  */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x00ed A[ADDED_TO_REGION] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void b(androidx.fragment.app.a r11, androidx.fragment.app.m.a r12, android.util.SparseArray<androidx.fragment.app.r.a> r13, boolean r14, boolean r15) {
        /*
        // Method dump skipped, instructions count: 248
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.r.b(androidx.fragment.app.a, androidx.fragment.app.m$a, android.util.SparseArray, boolean, boolean):void");
    }

    static void c(Fragment fragment, Fragment fragment2, boolean z, x<String, View> xVar, boolean z2) {
        if (z) {
            fragment2.E();
        } else {
            fragment.E();
        }
    }

    private static boolean d(w wVar, List<Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!wVar.e(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    static x<String, View> e(w wVar, x<String, String> xVar, Object obj, a aVar) {
        ArrayList<String> arrayList;
        Fragment fragment = aVar.a;
        View view = fragment.E;
        if (xVar.isEmpty() || obj == null || view == null) {
            xVar.clear();
            return null;
        }
        x<String, View> xVar2 = new x<>();
        wVar.i(xVar2, view);
        a aVar2 = aVar.c;
        if (aVar.b) {
            fragment.G();
            arrayList = aVar2.o;
        } else {
            fragment.E();
            arrayList = aVar2.p;
        }
        if (arrayList != null) {
            xVar2.n(arrayList);
            xVar2.n(xVar.values());
        }
        int size = xVar.size();
        while (true) {
            size--;
            if (size < 0) {
                return xVar2;
            }
            if (!xVar2.containsKey(xVar.l(size))) {
                xVar.j(size);
            }
        }
    }

    private static x<String, View> f(w wVar, x<String, String> xVar, Object obj, a aVar) {
        ArrayList<String> arrayList;
        if (xVar.isEmpty() || obj == null) {
            xVar.clear();
            return null;
        }
        Fragment fragment = aVar.d;
        x<String, View> xVar2 = new x<>();
        wVar.i(xVar2, fragment.Y0());
        a aVar2 = aVar.f;
        if (aVar.e) {
            fragment.E();
            arrayList = aVar2.p;
        } else {
            fragment.G();
            arrayList = aVar2.o;
        }
        xVar2.n(arrayList);
        xVar.n(xVar2.keySet());
        return xVar2;
    }

    private static w g(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            fragment.F();
            Object P = fragment.P();
            if (P != null) {
                arrayList.add(P);
            }
            Object R = fragment.R();
            if (R != null) {
                arrayList.add(R);
            }
        }
        if (fragment2 != null) {
            fragment2.D();
            Object N = fragment2.N();
            if (N != null) {
                arrayList.add(N);
            }
            fragment2.Q();
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        w wVar = b;
        if (wVar != null && d(wVar, arrayList)) {
            return wVar;
        }
        w wVar2 = c;
        if (wVar2 != null && d(wVar2, arrayList)) {
            return wVar2;
        }
        if (wVar == null && wVar2 == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    static ArrayList<View> h(w wVar, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        View view2 = fragment.E;
        if (view2 != null) {
            wVar.f(arrayList2, view2);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        wVar.b(obj, arrayList2);
        return arrayList2;
    }

    private static Object i(w wVar, Fragment fragment, boolean z) {
        Object obj = null;
        if (fragment == null) {
            return null;
        }
        if (z) {
            obj = fragment.N();
        } else {
            fragment.D();
        }
        return wVar.g(obj);
    }

    private static Object j(w wVar, Fragment fragment, boolean z) {
        Object obj = null;
        if (fragment == null) {
            return null;
        }
        if (z) {
            obj = fragment.P();
        } else {
            fragment.F();
        }
        return wVar.g(obj);
    }

    static View k(x<String, View> xVar, a aVar, Object obj, boolean z) {
        ArrayList<String> arrayList;
        String str;
        a aVar2 = aVar.c;
        if (obj == null || xVar == null || (arrayList = aVar2.o) == null || arrayList.isEmpty()) {
            return null;
        }
        if (z) {
            str = aVar2.o.get(0);
        } else {
            str = aVar2.p.get(0);
        }
        return xVar.get(str);
    }

    private static Object l(w wVar, Fragment fragment, Fragment fragment2, boolean z) {
        Object obj;
        if (z) {
            obj = fragment2.R();
        } else {
            fragment.Q();
            obj = null;
        }
        return wVar.u(wVar.g(obj));
    }

    private static void m(w wVar, Object obj, Object obj2, x<String, View> xVar, boolean z, a aVar) {
        String str;
        ArrayList<String> arrayList = aVar.o;
        if (arrayList != null && !arrayList.isEmpty()) {
            if (z) {
                str = aVar.p.get(0);
            } else {
                str = aVar.o.get(0);
            }
            View view = xVar.get(str);
            wVar.r(obj, view);
            if (obj2 != null) {
                wVar.r(obj2, view);
            }
        }
    }

    static void n(ArrayList<View> arrayList, int i) {
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).setVisibility(i);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:153:0x03f7  */
    /* JADX WARNING: Removed duplicated region for block: B:162:0x0439 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x0218 A[ADDED_TO_REGION] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void o(androidx.fragment.app.h r38, java.util.ArrayList<androidx.fragment.app.a> r39, java.util.ArrayList<java.lang.Boolean> r40, int r41, int r42, boolean r43) {
        /*
        // Method dump skipped, instructions count: 1102
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.r.o(androidx.fragment.app.h, java.util.ArrayList, java.util.ArrayList, int, int, boolean):void");
    }
}
