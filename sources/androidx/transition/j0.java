package androidx.transition;

public abstract class j0 extends u {
    private static final String[] a = {"android:visibilityPropagation:visibility", "android:visibilityPropagation:center"};

    private static int c(w wVar, int i) {
        int[] iArr;
        if (wVar == null || (iArr = (int[]) wVar.a.get("android:visibilityPropagation:center")) == null) {
            return -1;
        }
        return iArr[i];
    }

    @Override // androidx.transition.u
    public String[] a() {
        return a;
    }

    public int d(w wVar) {
        Integer num;
        if (wVar == null || (num = (Integer) wVar.a.get("android:visibilityPropagation:visibility")) == null) {
            return 8;
        }
        return num.intValue();
    }

    public int e(w wVar) {
        return c(wVar, 0);
    }

    public int f(w wVar) {
        return c(wVar, 1);
    }
}
