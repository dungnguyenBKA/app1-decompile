package defpackage;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import androidx.core.app.b;

/* renamed from: t2  reason: default package */
public class t2 {
    private ViewParent a;
    private ViewParent b;
    private final View c;
    private boolean d;
    private int[] e;

    public t2(View view) {
        this.c = view;
    }

    private boolean g(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent h;
        int i6;
        int i7;
        int[] iArr3;
        if (!this.d || (h = h(i5)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.c.getLocationInWindow(iArr);
            i7 = iArr[0];
            i6 = iArr[1];
        } else {
            i7 = 0;
            i6 = 0;
        }
        if (iArr2 == null) {
            if (this.e == null) {
                this.e = new int[2];
            }
            int[] iArr4 = this.e;
            iArr4[0] = 0;
            iArr4[1] = 0;
            iArr3 = iArr4;
        } else {
            iArr3 = iArr2;
        }
        b.k0(h, this.c, i, i2, i3, i4, i5, iArr3);
        if (iArr != null) {
            this.c.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i7;
            iArr[1] = iArr[1] - i6;
        }
        return true;
    }

    private ViewParent h(int i) {
        if (i == 0) {
            return this.a;
        }
        if (i != 1) {
            return null;
        }
        return this.b;
    }

    public boolean a(float f, float f2, boolean z) {
        ViewParent h;
        if (!this.d || (h = h(0)) == null) {
            return false;
        }
        return b.h0(h, this.c, f, f2, z);
    }

    public boolean b(float f, float f2) {
        ViewParent h;
        if (!this.d || (h = h(0)) == null) {
            return false;
        }
        return b.i0(h, this.c, f, f2);
    }

    public boolean c(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        ViewParent h;
        int i4;
        int i5;
        if (!this.d || (h = h(i3)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0) {
            if (iArr2 != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
            }
            return false;
        }
        if (iArr2 != null) {
            this.c.getLocationInWindow(iArr2);
            i5 = iArr2[0];
            i4 = iArr2[1];
        } else {
            i5 = 0;
            i4 = 0;
        }
        if (iArr == null) {
            if (this.e == null) {
                this.e = new int[2];
            }
            iArr = this.e;
        }
        iArr[0] = 0;
        iArr[1] = 0;
        b.j0(h, this.c, i, i2, iArr, i3);
        if (iArr2 != null) {
            this.c.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i5;
            iArr2[1] = iArr2[1] - i4;
        }
        if (iArr[0] == 0 && iArr[1] == 0) {
            return false;
        }
        return true;
    }

    public void d(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        g(i, i2, i3, i4, iArr, i5, iArr2);
    }

    public boolean e(int i, int i2, int i3, int i4, int[] iArr) {
        return g(i, i2, i3, i4, iArr, 0, null);
    }

    public boolean f(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return g(i, i2, i3, i4, iArr, i5, null);
    }

    public boolean i(int i) {
        return h(i) != null;
    }

    public boolean j() {
        return this.d;
    }

    public void k(boolean z) {
        if (this.d) {
            View view = this.c;
            int i = c3.g;
            if (Build.VERSION.SDK_INT >= 21) {
                view.stopNestedScroll();
            } else if (view instanceof s2) {
                ((s2) view).stopNestedScroll();
            }
        }
        this.d = z;
    }

    public boolean l(int i, int i2) {
        boolean z;
        if (h(i2) != null) {
            return true;
        }
        if (this.d) {
            View view = this.c;
            for (ViewParent parent = this.c.getParent(); parent != null; parent = parent.getParent()) {
                View view2 = this.c;
                boolean z2 = parent instanceof u2;
                if (z2) {
                    z = ((u2) parent).n(view, view2, i, i2);
                } else {
                    if (i2 == 0) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            try {
                                z = parent.onStartNestedScroll(view, view2, i);
                            } catch (AbstractMethodError e2) {
                                Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onStartNestedScroll", e2);
                            }
                        } else if (parent instanceof w2) {
                            z = ((w2) parent).onStartNestedScroll(view, view2, i);
                        }
                    }
                    z = false;
                }
                if (z) {
                    if (i2 == 0) {
                        this.a = parent;
                    } else if (i2 == 1) {
                        this.b = parent;
                    }
                    View view3 = this.c;
                    if (z2) {
                        ((u2) parent).o(view, view3, i, i2);
                    } else if (i2 == 0) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            try {
                                parent.onNestedScrollAccepted(view, view3, i);
                            } catch (AbstractMethodError e3) {
                                Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted", e3);
                            }
                        } else if (parent instanceof w2) {
                            ((w2) parent).onNestedScrollAccepted(view, view3, i);
                        }
                    }
                    return true;
                }
                if (parent instanceof View) {
                    view = (View) parent;
                }
            }
        }
        return false;
    }

    public void m(int i) {
        ViewParent h = h(i);
        if (h != null) {
            View view = this.c;
            if (h instanceof u2) {
                ((u2) h).p(view, i);
            } else if (i == 0) {
                if (Build.VERSION.SDK_INT >= 21) {
                    try {
                        h.onStopNestedScroll(view);
                    } catch (AbstractMethodError e2) {
                        Log.e("ViewParentCompat", "ViewParent " + h + " does not implement interface method onStopNestedScroll", e2);
                    }
                } else if (h instanceof w2) {
                    ((w2) h).onStopNestedScroll(view);
                }
            }
            if (i == 0) {
                this.a = null;
            } else if (i == 1) {
                this.b = null;
            }
        }
    }
}
