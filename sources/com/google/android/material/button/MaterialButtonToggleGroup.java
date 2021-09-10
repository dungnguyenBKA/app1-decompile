package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.material.R$styleable;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.i;
import defpackage.qy;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.TreeMap;
import photoeditor.cutout.backgrounderaser.R;

public class MaterialButtonToggleGroup extends LinearLayout {
    private static final String k = MaterialButtonToggleGroup.class.getSimpleName();
    private final List<c> b;
    private final b c;
    private final e d;
    private final LinkedHashSet<d> e;
    private final Comparator<MaterialButton> f;
    private Integer[] g;
    private boolean h;
    private boolean i;
    private int j;

    class a implements Comparator<MaterialButton> {
        a() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // java.util.Comparator
        public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
            MaterialButton materialButton3 = materialButton;
            MaterialButton materialButton4 = materialButton2;
            int compareTo = Boolean.valueOf(materialButton3.isChecked()).compareTo(Boolean.valueOf(materialButton4.isChecked()));
            if (compareTo != 0) {
                return compareTo;
            }
            int compareTo2 = Boolean.valueOf(materialButton3.isPressed()).compareTo(Boolean.valueOf(materialButton4.isPressed()));
            return compareTo2 != 0 ? compareTo2 : Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton3)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton4)));
        }
    }

    private class b implements MaterialButton.a {
        b(a aVar) {
        }

        @Override // com.google.android.material.button.MaterialButton.a
        public void a(MaterialButton materialButton, boolean z) {
            if (!MaterialButtonToggleGroup.this.h) {
                if (MaterialButtonToggleGroup.this.i) {
                    MaterialButtonToggleGroup.this.j = z ? materialButton.getId() : -1;
                }
                MaterialButtonToggleGroup.this.g(materialButton.getId(), z);
                MaterialButtonToggleGroup.this.l(materialButton.getId(), z);
                MaterialButtonToggleGroup.this.invalidate();
            }
        }
    }

    /* access modifiers changed from: private */
    public static class c {
        private static final iy e = new gy(0.0f);
        iy a;
        iy b;
        iy c;
        iy d;

        c(iy iyVar, iy iyVar2, iy iyVar3, iy iyVar4) {
            this.a = iyVar;
            this.b = iyVar3;
            this.c = iyVar4;
            this.d = iyVar2;
        }

        public static c a(c cVar) {
            iy iyVar = e;
            return new c(iyVar, cVar.d, iyVar, cVar.c);
        }

        public static c b(c cVar, View view) {
            int i = c3.g;
            boolean z = true;
            if (view.getLayoutDirection() != 1) {
                z = false;
            }
            if (z) {
                iy iyVar = cVar.a;
                iy iyVar2 = cVar.d;
                iy iyVar3 = e;
                return new c(iyVar, iyVar2, iyVar3, iyVar3);
            }
            iy iyVar4 = e;
            return new c(iyVar4, iyVar4, cVar.b, cVar.c);
        }

        public static c c(c cVar, View view) {
            int i = c3.g;
            boolean z = true;
            if (view.getLayoutDirection() != 1) {
                z = false;
            }
            if (z) {
                iy iyVar = e;
                return new c(iyVar, iyVar, cVar.b, cVar.c);
            }
            iy iyVar2 = cVar.a;
            iy iyVar3 = cVar.d;
            iy iyVar4 = e;
            return new c(iyVar2, iyVar3, iyVar4, iyVar4);
        }

        public static c d(c cVar) {
            iy iyVar = cVar.a;
            iy iyVar2 = e;
            return new c(iyVar, iyVar2, cVar.b, iyVar2);
        }
    }

    public interface d {
        void a(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z);
    }

    /* access modifiers changed from: private */
    public class e implements MaterialButton.b {
        e(a aVar) {
        }
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.o5);
    }

    private void f() {
        LinearLayout.LayoutParams layoutParams;
        int i2 = i();
        if (i2 != -1) {
            for (int i3 = i2 + 1; i3 < getChildCount(); i3++) {
                MaterialButton h2 = h(i3);
                int min = Math.min(h2.k(), h(i3 - 1).k());
                ViewGroup.LayoutParams layoutParams2 = h2.getLayoutParams();
                if (layoutParams2 instanceof LinearLayout.LayoutParams) {
                    layoutParams = (LinearLayout.LayoutParams) layoutParams2;
                } else {
                    layoutParams = new LinearLayout.LayoutParams(layoutParams2.width, layoutParams2.height);
                }
                if (getOrientation() == 0) {
                    layoutParams.setMarginEnd(0);
                    layoutParams.setMarginStart(-min);
                } else {
                    layoutParams.bottomMargin = 0;
                    layoutParams.topMargin = -min;
                }
                h2.setLayoutParams(layoutParams);
            }
            if (!(getChildCount() == 0 || i2 == -1)) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) ((MaterialButton) getChildAt(i2)).getLayoutParams();
                if (getOrientation() == 1) {
                    layoutParams3.topMargin = 0;
                    layoutParams3.bottomMargin = 0;
                    return;
                }
                layoutParams3.setMarginEnd(0);
                layoutParams3.setMarginStart(0);
                layoutParams3.leftMargin = 0;
                layoutParams3.rightMargin = 0;
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void g(int i2, boolean z) {
        Iterator<d> it = this.e.iterator();
        while (it.hasNext()) {
            it.next().a(this, i2, z);
        }
    }

    private MaterialButton h(int i2) {
        return (MaterialButton) getChildAt(i2);
    }

    private int i() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (getChildAt(i2).getVisibility() != 8) {
                return i2;
            }
        }
        return -1;
    }

    private void j(int i2) {
        this.j = i2;
        g(i2, true);
    }

    private void k(int i2, boolean z) {
        View findViewById = findViewById(i2);
        if (findViewById instanceof MaterialButton) {
            this.h = true;
            ((MaterialButton) findViewById).setChecked(z);
            this.h = false;
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void l(int i2, boolean z) {
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            MaterialButton h2 = h(i3);
            if (h2.isChecked() && this.i && z && h2.getId() != i2) {
                k(h2.getId(), false);
                g(h2.getId(), false);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e(k, "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i2, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        if (materialButton.getId() == -1) {
            int i3 = c3.g;
            materialButton.setId(View.generateViewId());
        }
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.o(true);
        materialButton.b(this.c);
        materialButton.q(this.d);
        materialButton.r(true);
        if (materialButton.isChecked()) {
            l(materialButton.getId(), true);
            j(materialButton.getId());
        }
        qy i4 = materialButton.i();
        this.b.add(new c(i4.k(), i4.e(), i4.m(), i4.g()));
    }

    /* access modifiers changed from: protected */
    public void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.f);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            treeMap.put(h(i2), Integer.valueOf(i2));
        }
        this.g = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    public CharSequence getAccessibilityClassName() {
        return MaterialButtonToggleGroup.class.getName();
    }

    /* access modifiers changed from: protected */
    public int getChildDrawingOrder(int i2, int i3) {
        Integer[] numArr = this.g;
        if (numArr != null && i3 < numArr.length) {
            return numArr[i3].intValue();
        }
        Log.w(k, "Child order wasn't updated");
        return i3;
    }

    /* access modifiers changed from: package-private */
    public void m() {
        c b2;
        int childCount = getChildCount();
        int i2 = i();
        int childCount2 = getChildCount() - 1;
        while (true) {
            if (childCount2 < 0) {
                childCount2 = -1;
                break;
            }
            if (getChildAt(childCount2).getVisibility() != 8) {
                break;
            }
            childCount2--;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            MaterialButton h2 = h(i3);
            if (h2.getVisibility() != 8) {
                qy i4 = h2.i();
                Objects.requireNonNull(i4);
                qy.b bVar = new qy.b(i4);
                int childCount3 = getChildCount();
                c cVar = this.b.get(i3);
                if (childCount3 != 1) {
                    boolean z = getOrientation() == 0;
                    if (i3 == i2) {
                        b2 = z ? c.c(cVar, this) : c.d(cVar);
                    } else if (i3 == childCount2) {
                        b2 = z ? c.b(cVar, this) : c.a(cVar);
                    } else {
                        cVar = null;
                    }
                    cVar = b2;
                }
                if (cVar == null) {
                    bVar.o(0.0f);
                } else {
                    bVar.y(cVar.a);
                    bVar.r(cVar.d);
                    bVar.B(cVar.b);
                    bVar.u(cVar.c);
                }
                h2.e(bVar.m());
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        int i2 = this.j;
        if (i2 != -1) {
            k(i2, true);
            l(i2, true);
            this.j = i2;
            g(i2, true);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        m();
        f();
        super.onMeasure(i2, i3);
    }

    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            MaterialButton materialButton = (MaterialButton) view;
            materialButton.n(this.c);
            materialButton.q(null);
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            this.b.remove(indexOfChild);
        }
        m();
        f();
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.b = new ArrayList();
        this.c = new b(null);
        this.d = new e(null);
        this.e = new LinkedHashSet<>();
        this.f = new a();
        this.h = false;
        TypedArray f2 = i.f(context, attributeSet, R$styleable.r, i2, R.style.qr, new int[0]);
        boolean z = f2.getBoolean(1, false);
        if (this.i != z) {
            this.i = z;
            this.h = true;
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                MaterialButton h2 = h(i3);
                h2.setChecked(false);
                g(h2.getId(), false);
            }
            this.h = false;
            j(-1);
        }
        this.j = f2.getResourceId(0, -1);
        setChildrenDrawingOrderEnabled(true);
        f2.recycle();
    }
}
