package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.r;
import com.google.android.material.button.MaterialButton;
import photoeditor.cutout.backgrounderaser.R;

public final class e<S> extends q<S> {
    public static final /* synthetic */ int f0 = 0;
    private int V;
    private DateSelector<S> W;
    private CalendarConstraints X;
    private Month Y;
    private EnumC0076e Z;
    private b a0;
    private RecyclerView b0;
    private RecyclerView c0;
    private View d0;
    private View e0;

    /* access modifiers changed from: package-private */
    public class a implements Runnable {
        final /* synthetic */ int b;

        a(int i) {
            this.b = i;
        }

        public void run() {
            e.this.c0.smoothScrollToPosition(this.b);
        }
    }

    class b extends n2 {
        b(e eVar) {
        }

        @Override // defpackage.n2
        public void e(View view, n3 n3Var) {
            super.e(view, n3Var);
            n3Var.T(null);
        }
    }

    class c extends r {
        final /* synthetic */ int G;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        c(Context context, int i, boolean z, int i2) {
            super(context, i, z);
            this.G = i2;
        }

        /* access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public void l1(RecyclerView.y yVar, int[] iArr) {
            if (this.G == 0) {
                iArr[0] = e.this.c0.getWidth();
                iArr[1] = e.this.c0.getWidth();
                return;
            }
            iArr[0] = e.this.c0.getHeight();
            iArr[1] = e.this.c0.getHeight();
        }
    }

    class d implements f {
        d() {
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.datepicker.e$e  reason: collision with other inner class name */
    public enum EnumC0076e {
        DAY,
        YEAR
    }

    /* access modifiers changed from: package-private */
    public interface f {
    }

    private void x1(int i) {
        this.c0.post(new a(i));
    }

    @Override // androidx.fragment.app.Fragment
    public void A0(Bundle bundle) {
        bundle.putInt("THEME_RES_ID_KEY", this.V);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.W);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.X);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.Y);
    }

    /* access modifiers changed from: package-private */
    public void A1() {
        EnumC0076e eVar = EnumC0076e.DAY;
        EnumC0076e eVar2 = this.Z;
        EnumC0076e eVar3 = EnumC0076e.YEAR;
        if (eVar2 == eVar3) {
            z1(eVar);
        } else if (eVar2 == eVar) {
            z1(eVar3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void j0(Bundle bundle) {
        super.j0(bundle);
        if (bundle == null) {
            bundle = A();
        }
        this.V = bundle.getInt("THEME_RES_ID_KEY");
        this.W = (DateSelector) bundle.getParcelable("GRID_SELECTOR_KEY");
        this.X = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.Y = (Month) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public View m0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        int i2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(C(), this.V);
        this.a0 = new b(contextThemeWrapper);
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month e = this.X.e();
        if (l.u1(contextThemeWrapper)) {
            i2 = R.layout.d4;
            i = 1;
        } else {
            i2 = R.layout.cz;
            i = 0;
        }
        View inflate = cloneInContext.inflate(i2, viewGroup, false);
        GridView gridView = (GridView) inflate.findViewById(R.id.lc);
        c3.u(gridView, new b(this));
        gridView.setAdapter((ListAdapter) new d());
        gridView.setNumColumns(e.f);
        gridView.setEnabled(false);
        this.c0 = (RecyclerView) inflate.findViewById(R.id.lf);
        this.c0.setLayoutManager(new c(C(), i, false, i));
        this.c0.setTag("MONTHS_VIEW_GROUP_TAG");
        o oVar = new o(contextThemeWrapper, this.W, this.X, new d());
        this.c0.setAdapter(oVar);
        int integer = contextThemeWrapper.getResources().getInteger(R.integer.x);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.li);
        this.b0 = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.b0.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.b0.setAdapter(new t(this));
            this.b0.addItemDecoration(new f(this));
        }
        if (inflate.findViewById(R.id.l8) != null) {
            MaterialButton materialButton = (MaterialButton) inflate.findViewById(R.id.l8);
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            c3.u(materialButton, new g(this));
            MaterialButton materialButton2 = (MaterialButton) inflate.findViewById(R.id.l_);
            materialButton2.setTag("NAVIGATION_PREV_TAG");
            MaterialButton materialButton3 = (MaterialButton) inflate.findViewById(R.id.l9);
            materialButton3.setTag("NAVIGATION_NEXT_TAG");
            this.d0 = inflate.findViewById(R.id.li);
            this.e0 = inflate.findViewById(R.id.lb);
            z1(EnumC0076e.DAY);
            materialButton.setText(this.Y.e());
            this.c0.addOnScrollListener(new h(this, oVar, materialButton));
            materialButton.setOnClickListener(new i(this));
            materialButton3.setOnClickListener(new j(this, oVar));
            materialButton2.setOnClickListener(new k(this, oVar));
        }
        if (!l.u1(contextThemeWrapper)) {
            new r().a(this.c0);
        }
        this.c0.scrollToPosition(oVar.C(this.Y));
        return inflate;
    }

    /* access modifiers changed from: package-private */
    public CalendarConstraints s1() {
        return this.X;
    }

    /* access modifiers changed from: package-private */
    public b t1() {
        return this.a0;
    }

    /* access modifiers changed from: package-private */
    public Month u1() {
        return this.Y;
    }

    public DateSelector<S> v1() {
        return this.W;
    }

    /* access modifiers changed from: package-private */
    public LinearLayoutManager w1() {
        return (LinearLayoutManager) this.c0.getLayoutManager();
    }

    /* access modifiers changed from: package-private */
    public void y1(Month month) {
        o oVar = (o) this.c0.getAdapter();
        int C = oVar.C(month);
        int C2 = C - oVar.C(this.Y);
        boolean z = true;
        boolean z2 = Math.abs(C2) > 3;
        if (C2 <= 0) {
            z = false;
        }
        this.Y = month;
        if (z2 && z) {
            this.c0.scrollToPosition(C - 3);
            x1(C);
        } else if (z2) {
            this.c0.scrollToPosition(C + 3);
            x1(C);
        } else {
            x1(C);
        }
    }

    /* access modifiers changed from: package-private */
    public void z1(EnumC0076e eVar) {
        this.Z = eVar;
        if (eVar == EnumC0076e.YEAR) {
            this.b0.getLayoutManager().Y0(((t) this.b0.getAdapter()).A(this.Y.e));
            this.d0.setVisibility(0);
            this.e0.setVisibility(8);
        } else if (eVar == EnumC0076e.DAY) {
            this.d0.setVisibility(8);
            this.e0.setVisibility(0);
            y1(this.Y);
        }
    }
}
