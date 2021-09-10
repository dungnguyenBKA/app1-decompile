package com.camerasideas.collagemaker.activity.adapter;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.b;
import androidx.recyclerview.widget.RecyclerView;
import com.camerasideas.collagemaker.activity.v0;
import com.camerasideas.collagemaker.activity.widget.squareprogressbar.SquareProgressView;
import defpackage.pk;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class u extends RecyclerView.g<RecyclerView.b0> {
    private Context c;
    private int d = 0;
    private List<wn> e;

    public static class a extends RecyclerView.b0 {
        TextView a;
        ImageView b;
        SquareProgressView c;
        ImageView d;
        View e;
        ImageView f;

        a(View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.ru);
            this.b = (ImageView) view.findViewById(R.id.ik);
            this.c = (SquareProgressView) view.findViewById(R.id.il);
            this.d = (ImageView) view.findViewById(R.id.he);
            this.e = view.findViewById(R.id.pm);
            this.f = (ImageView) view.findViewById(R.id.n2);
        }
    }

    public u(Context context) {
        this.e = vn.a(context);
        this.c = context;
    }

    public List<wn> A() {
        return this.e;
    }

    public int B(String str) {
        if (this.e == null || TextUtils.isEmpty(str)) {
            return -1;
        }
        for (int i = 0; i < this.e.size(); i++) {
            iq iqVar = this.e.get(i).c;
            if (iqVar != null && str.equalsIgnoreCase(iqVar.h)) {
                return i;
            }
        }
        return -1;
    }

    public int C() {
        return this.d;
    }

    public void D(List<wn> list) {
        this.e = list;
        f();
    }

    public void E(int i) {
        g(this.d);
        this.d = i;
        g(i);
    }

    public void F(String str) {
        for (int i = 0; i < this.e.size(); i++) {
            if (this.e.get(i).b.endsWith(str)) {
                g(this.d);
                this.d = i;
                g(i);
                return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int b() {
        List<wn> list = this.e;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void q(RecyclerView.b0 b0Var, int i) {
        wn wnVar = this.e.get(i);
        a aVar = (a) b0Var;
        boolean z = false;
        uq.t(aVar.b, false);
        aVar.d.setTag(R.id.he, Integer.valueOf(i));
        aVar.c.b(0.0d);
        uq.t(aVar.f, false);
        if (wnVar.c != null) {
            uq.t(aVar.b, false);
            uq.t(aVar.d, true);
            uq.t(aVar.a, false);
            uq.t(aVar.f, wnVar.c.b == 2 && !b.d0(this.c));
            boolean S = yp.S(wnVar.c);
            Integer E = yp.F().E(wnVar.c.h);
            if (E != null) {
                if (E.intValue() == -1) {
                    aVar.b.setImageResource(R.drawable.h0);
                    uq.t(aVar.b, true);
                } else {
                    uq.t(aVar.b, false);
                    aVar.c.b((double) E.intValue());
                }
            } else if (!S) {
                aVar.b.setImageResource(R.drawable.gz);
                uq.t(aVar.b, !uq.g(aVar.f));
            } else {
                uq.t(aVar.b, false);
            }
            v0<Drawable> o0 = b.O0(aVar.d.getContext()).u(wnVar.c.p).o0(vd.a);
            bi biVar = new bi();
            biVar.c(new pk.a().a());
            o0.l0(biVar);
            o0.N(new ColorDrawable(-657931)).e0(aVar.d);
            View view = aVar.e;
            if (this.d == i) {
                z = true;
            }
            view.setSelected(z);
            return;
        }
        uq.t(aVar.d, false);
        uq.t(aVar.a, true);
        aVar.a.setText(wnVar.a);
        Typeface a2 = mm.a(this.c, wnVar.b);
        if (a2 != null) {
            aVar.a.setTypeface(a2);
        }
        TextView textView = aVar.a;
        if (this.d == i) {
            z = true;
        }
        textView.setSelected(z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public RecyclerView.b0 s(ViewGroup viewGroup, int i) {
        return new a(LayoutInflater.from(this.c).inflate(R.layout.c8, viewGroup, false));
    }

    public wn z(int i) {
        List<wn> list = this.e;
        return list.get(Math.min(i, list.size()));
    }
}
