package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Calendar;
import java.util.Locale;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
public class t extends RecyclerView.g<a> {
    private final e<?> c;

    public static class a extends RecyclerView.b0 {
        final TextView a;

        a(TextView textView) {
            super(textView);
            this.a = textView;
        }
    }

    t(e<?> eVar) {
        this.c = eVar;
    }

    /* access modifiers changed from: package-private */
    public int A(int i) {
        return i - this.c.s1().e().e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int b() {
        return this.c.s1().f();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [androidx.recyclerview.widget.RecyclerView$b0, int] */
    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void q(a aVar, int i) {
        a aVar2 = aVar;
        int i2 = this.c.s1().e().e + i;
        String string = aVar2.a.getContext().getString(R.string.dr);
        aVar2.a.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i2)));
        aVar2.a.setContentDescription(String.format(string, Integer.valueOf(i2)));
        b t1 = this.c.t1();
        Calendar d = c.d();
        a aVar3 = d.get(1) == i2 ? t1.f : t1.d;
        for (Long l : this.c.v1().S()) {
            d.setTimeInMillis(l.longValue());
            if (d.get(1) == i2) {
                aVar3 = t1.e;
            }
        }
        aVar3.d(aVar2.a);
        aVar2.a.setOnClickListener(new s(this, i2));
    }

    /* Return type fixed from 'androidx.recyclerview.widget.RecyclerView$b0' to match base method */
    @Override // androidx.recyclerview.widget.RecyclerView.g
    public a s(ViewGroup viewGroup, int i) {
        return new a((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.d5, viewGroup, false));
    }
}
