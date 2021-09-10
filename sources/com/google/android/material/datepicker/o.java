package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.e;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
public class o extends RecyclerView.g<a> {
    private final CalendarConstraints c;
    private final DateSelector<?> d;
    private final e.f e;
    private final int f;

    public static class a extends RecyclerView.b0 {
        final TextView a;
        final MaterialCalendarGridView b;

        a(LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(R.id.la);
            this.a = textView;
            c3.v(textView, true);
            this.b = (MaterialCalendarGridView) linearLayout.findViewById(R.id.l6);
            if (!z) {
                textView.setVisibility(8);
            }
        }
    }

    o(Context context, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints, e.f fVar) {
        Month e2 = calendarConstraints.e();
        Month b = calendarConstraints.b();
        Month d2 = calendarConstraints.d();
        if (e2.compareTo(d2) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        } else if (d2.compareTo(b) <= 0) {
            int i = m.e;
            int i2 = e.f0;
            this.f = (i * context.getResources().getDimensionPixelSize(R.dimen.sn)) + (l.u1(context) ? context.getResources().getDimensionPixelSize(R.dimen.sn) : 0);
            this.c = calendarConstraints;
            this.d = dateSelector;
            this.e = fVar;
            x(true);
        } else {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
    }

    /* access modifiers changed from: package-private */
    public Month A(int i) {
        return this.c.e().g(i);
    }

    /* access modifiers changed from: package-private */
    public CharSequence B(int i) {
        return this.c.e().g(i).e();
    }

    /* access modifiers changed from: package-private */
    public int C(Month month) {
        return this.c.e().h(month);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int b() {
        return this.c.c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public long c(int i) {
        return this.c.e().g(i).f();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [androidx.recyclerview.widget.RecyclerView$b0, int] */
    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void q(a aVar, int i) {
        a aVar2 = aVar;
        Month g = this.c.e().g(i);
        aVar2.a.setText(g.e());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) aVar2.b.findViewById(R.id.l6);
        if (materialCalendarGridView.getAdapter() == null || !g.equals(materialCalendarGridView.getAdapter().a)) {
            m mVar = new m(g, this.d, this.c);
            materialCalendarGridView.setNumColumns(g.f);
            materialCalendarGridView.setAdapter((ListAdapter) mVar);
        } else {
            materialCalendarGridView.getAdapter().notifyDataSetChanged();
        }
        materialCalendarGridView.setOnItemClickListener(new n(this, materialCalendarGridView));
    }

    /* Return type fixed from 'androidx.recyclerview.widget.RecyclerView$b0' to match base method */
    @Override // androidx.recyclerview.widget.RecyclerView.g
    public a s(ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.d1, viewGroup, false);
        if (!l.u1(viewGroup.getContext())) {
            return new a(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.f));
        return new a(linearLayout, true);
    }
}
