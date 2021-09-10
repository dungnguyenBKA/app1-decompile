package com.camerasideas.collagemaker.activity.adapter;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.PictureDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.camerasideas.collagemaker.activity.widget.RippleImageView;
import com.camerasideas.collagemaker.activity.widget.squareprogressbar.SquareProgressView;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class i extends RecyclerView.g<RecyclerView.b0> {
    private final Context c;
    private int d;
    private List<mn> e;

    public static class b extends RecyclerView.b0 {
        private RippleImageView a;
        private AppCompatImageView b;
        private SquareProgressView c;
        private ImageView d;
        private ImageView e;

        public b(View view) {
            super(view);
            this.a = (RippleImageView) view.findViewById(R.id.pv);
            this.b = (AppCompatImageView) view.findViewById(R.id.n2);
            this.c = (SquareProgressView) view.findViewById(R.id.j2);
            this.d = (ImageView) view.findViewById(R.id.j0);
            this.e = (ImageView) view.findViewById(R.id.j3);
        }
    }

    public static class c extends RecyclerView.b0 {
        public View a;
        public AppCompatImageView b;
        public TextView c;

        c(View view, a aVar) {
            super(view);
            this.a = view.findViewById(R.id.k1);
            this.b = (AppCompatImageView) view.findViewById(R.id.m0);
            this.c = (TextView) view.findViewById(R.id.lw);
        }
    }

    public i(Context context, List<mn> list) {
        ArrayList arrayList = new ArrayList();
        this.e = arrayList;
        arrayList.addAll(list);
        this.c = context;
    }

    public mn A(int i) {
        return this.e.get(i);
    }

    public int B(String str) {
        for (int i = 0; i < this.e.size(); i++) {
            mn mnVar = this.e.get(i);
            if (mnVar.e() != null && TextUtils.equals(mnVar.e().h, str)) {
                return i;
            }
        }
        return -1;
    }

    public int C(int i) {
        for (int i2 = 0; i2 < this.e.size(); i2++) {
            if (this.e.get(i2).a() == i) {
                return i2;
            }
        }
        return -1;
    }

    public void D(List<mn> list) {
        this.e = list;
        f();
    }

    public void E(int i) {
        this.d = i;
        f();
    }

    public void F(int i, String str) {
        File[] listFiles;
        mn mnVar = this.e.get(i);
        if (mnVar != null && (listFiles = new File(dq.d(str)).listFiles(a.a)) != null && listFiles.length > 0) {
            String absolutePath = listFiles[0].getAbsolutePath();
            mnVar.l(absolutePath);
            mnVar.i(c2.n(absolutePath));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int b() {
        return this.e.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int d(int i) {
        if (this.e.get(i) != null) {
            return this.e.get(i).b();
        }
        if (i == 0) {
            return 0;
        }
        return i == 1 ? 1 : 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void q(RecyclerView.b0 b0Var, int i) {
        mn mnVar = this.e.get(i);
        boolean z = true;
        if (d(i) == 0) {
            c cVar = (c) b0Var;
            cVar.b.setImageResource(mnVar.a());
            uq.w(cVar.c, this.c);
        } else if (d(i) == 2 || d(i) == 0) {
            b bVar = (b) b0Var;
            uq.t(bVar.e, false);
            uq.t(bVar.d, false);
            uq.t(bVar.b, mnVar.f() && !androidx.core.app.b.d0(this.c));
            bVar.c.b(0.0d);
            androidx.core.app.b.O0(this.c).l(bVar.a);
            if (mnVar.e() != null) {
                boolean S = yp.S(mnVar.e());
                Integer E = yp.F().E(mnVar.e().h);
                if (E != null) {
                    if (E.intValue() == -1) {
                        uq.t(bVar.e, true);
                    } else {
                        bVar.c.b((double) E.intValue());
                    }
                } else if (S) {
                    uq.t(bVar.d, false);
                } else {
                    uq.t(bVar.d, !uq.g(bVar.b));
                }
                com.bumptech.glide.c.q(bVar.a).i(PictureDrawable.class).f0(new dr()).j0(mnVar.e().i).e0(bVar.a);
            } else {
                bVar.a.setImageResource(mnVar.a());
                bVar.a.setColorFilter(Color.rgb(255, 255, 255));
            }
        }
        View view = b0Var.itemView;
        if (i != this.d) {
            z = false;
        }
        view.setSelected(z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public RecyclerView.b0 s(ViewGroup viewGroup, int i) {
        if (i == 0) {
            return new c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.cf, viewGroup, false), null);
        }
        if (i == 1) {
            return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.cb, viewGroup, false));
        }
        return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.c_, viewGroup, false));
    }

    public mn z(int i) {
        return this.e.get(i);
    }
}
