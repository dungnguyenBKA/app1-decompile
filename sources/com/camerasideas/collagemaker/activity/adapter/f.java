package com.camerasideas.collagemaker.activity.adapter;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.app.b;
import androidx.recyclerview.widget.RecyclerView;
import com.camerasideas.collagemaker.activity.v0;
import com.camerasideas.collagemaker.activity.widget.roundimageview.RoundedImageView;
import com.camerasideas.collagemaker.activity.widget.squareprogressbar.SquareProgressView;
import defpackage.pk;
import java.util.ArrayList;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class f extends RecyclerView.g<RecyclerView.b0> {
    private Context c;
    private List<jn> d = new ArrayList();
    private String e;

    public static class a extends RecyclerView.b0 {
        private RoundedImageView a;
        SquareProgressView b;
        ImageView c;
        ImageView d;
        ImageView e;
        ImageView f;
        FrameLayout g;

        public a(View view) {
            super(view);
            this.a = (RoundedImageView) view.findViewById(R.id.jq);
            this.b = (SquareProgressView) view.findViewById(R.id.j2);
            this.c = (ImageView) view.findViewById(R.id.j0);
            this.d = (ImageView) view.findViewById(R.id.j3);
            this.e = (ImageView) view.findViewById(R.id.rg);
            this.f = (ImageView) view.findViewById(R.id.iy);
            this.g = (FrameLayout) view.findViewById(R.id.k1);
        }
    }

    public f(Context context, in inVar) {
        this.c = context;
        context.getResources().getDimensionPixelSize(R.dimen.o3);
        context.getResources().getDimensionPixelSize(R.dimen.q5);
        this.d.addAll(inVar.b());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int b() {
        return this.d.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void q(RecyclerView.b0 b0Var, int i) {
        jn jnVar = this.d.get(i);
        a aVar = (a) b0Var;
        uq.t(aVar.d, false);
        uq.t(aVar.c, false);
        uq.t(aVar.e, jnVar.h() && !b.d0(this.c));
        jnVar.p(TextUtils.equals(jnVar.e(), this.e));
        aVar.itemView.setSelected(jnVar.i());
        aVar.b.b(0.0d);
        aVar.a.setForeground(null);
        v0<Drawable> o0 = b.O0(this.c).u(jnVar.c()).o0(vd.a);
        bi biVar = new bi();
        biVar.c(new pk.a().a());
        o0.l0(biVar);
        o0.N(new ColorDrawable(-1315861)).e0(aVar.a);
        boolean S = yp.S(jnVar.f());
        Integer E = yp.F().E(jnVar.e());
        if (E != null) {
            if (E.intValue() == -1) {
                uq.t(aVar.d, true);
            } else {
                aVar.b.b((double) E.intValue());
            }
        } else if (S) {
            uq.t(aVar.c, false);
        } else {
            uq.t(aVar.c, !uq.g(aVar.e));
        }
        if (jnVar.f() == null || !jnVar.f().f() || !jnVar.i()) {
            uq.t(aVar.f, false);
        } else {
            uq.t(aVar.f, true);
        }
        aVar.itemView.setTag(jnVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public RecyclerView.b0 s(ViewGroup viewGroup, int i) {
        return new a(LayoutInflater.from(this.c).inflate(R.layout.c1, viewGroup, false));
    }

    public void z(String str) {
        this.e = str;
        f();
    }
}
