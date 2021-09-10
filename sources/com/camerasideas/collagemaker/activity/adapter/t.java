package com.camerasideas.collagemaker.activity.adapter;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.camerasideas.collagemaker.activity.widget.roundimageview.RoundedImageView;
import java.util.ArrayList;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class t extends RecyclerView.g<RecyclerView.b0> {
    private Context c;
    private List<un> d = new ArrayList();
    private int e = -1;
    private List<Integer> f = new ArrayList();
    private List<Integer> g = new ArrayList();
    private int h = -1;
    private int i;
    private final rh j;

    public static class a extends RecyclerView.b0 {
        private AppCompatImageView a;
        private AppCompatImageView b;

        a(View view) {
            super(view);
            this.a = (AppCompatImageView) view.findViewById(R.id.j1);
            this.b = (AppCompatImageView) view.findViewById(R.id.fk);
        }
    }

    public static class b extends RecyclerView.b0 {
        private AppCompatImageView a;
        private RoundedImageView b;
        private AppCompatImageView c;

        public b(View view) {
            super(view);
            this.a = (AppCompatImageView) view.findViewById(R.id.f22jp);
            this.b = (RoundedImageView) view.findViewById(R.id.jq);
            this.c = (AppCompatImageView) view.findViewById(R.id.n2);
        }
    }

    public static class c extends RecyclerView.b0 {
        private FrameLayout a;

        c(View view) {
            super(view);
            AppCompatImageView appCompatImageView = (AppCompatImageView) view.findViewById(R.id.iq);
            this.a = (FrameLayout) view.findViewById(R.id.hi);
        }
    }

    public t(List<un> list, Context context) {
        this.d.addAll(list);
        this.c = context;
        this.i = c2.b(context, 10.0f);
        if (this.d != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= this.d.size()) {
                    break;
                } else if (this.d.get(i2).a() == 3) {
                    this.h = i2;
                    break;
                } else {
                    i2++;
                }
            }
        }
        if (this.d != null) {
            this.f.clear();
            this.g.clear();
            for (int i3 = 0; i3 < this.d.size(); i3++) {
                if (this.d.get(i3).a() == 2) {
                    List<String> list2 = com.camerasideas.collagemaker.appdata.b.e;
                    if (list2.contains(this.d.get(i3).b()) || com.camerasideas.collagemaker.appdata.b.f.contains(this.d.get(i3).b())) {
                        this.g.add(Integer.valueOf(i3));
                    }
                    if (TextUtils.equals(this.d.get(i3).b(), list2.get(0)) || TextUtils.equals(this.d.get(i3).b(), com.camerasideas.collagemaker.appdata.b.f.get(0))) {
                        this.f.add(Integer.valueOf(i3));
                    }
                }
            }
        }
        this.j = new rh(context.getResources().getDimensionPixelSize(R.dimen.pj));
    }

    public int A() {
        return this.e;
    }

    public void B(int i2) {
        this.e = 0;
        for (int i3 = 0; i3 < this.d.size(); i3++) {
            if ((!TextUtils.isEmpty(this.d.get(i3).b()) && Color.parseColor(this.d.get(i3).b()) == i2) || this.d.get(i3).d() == i2) {
                this.e = i3;
                f();
                return;
            }
        }
    }

    public void C(int i2) {
        this.e = i2;
        f();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int b() {
        return this.d.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int d(int i2) {
        if (this.d.get(i2) != null) {
            return this.d.get(i2).a();
        }
        return 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void q(RecyclerView.b0 b0Var, int i2) {
        un unVar = this.d.get(i2);
        if (d(i2) == 0) {
            c cVar = (c) b0Var;
            if (i2 == this.e) {
                cVar.a.setBackground(androidx.core.content.a.c(this.c, R.drawable.dc));
            } else {
                cVar.a.setBackground(androidx.core.content.a.c(this.c, R.drawable.db));
            }
        } else {
            boolean z = true;
            if (d(i2) == 3) {
                ((RecyclerView.LayoutParams) b0Var.itemView.getLayoutParams()).setMarginStart(i2 == this.h ? this.i : 0);
                int z2 = z(i2);
                a aVar = (a) b0Var;
                aVar.a.setImageResource(z2);
                androidx.core.app.b.O0(this.c).t(Integer.valueOf(z2)).m0(ck.Y(this.j)).e0(aVar.a);
                AppCompatImageView appCompatImageView = aVar.b;
                if (this.e != i2) {
                    z = false;
                }
                appCompatImageView.setSelected(z);
            } else if (d(i2) == 2) {
                b bVar = (b) b0Var;
                ((RecyclerView.LayoutParams) bVar.itemView.getLayoutParams()).setMarginStart(this.f.contains(Integer.valueOf(i2)) ? this.i : 0);
                if (unVar != null) {
                    androidx.core.app.b.O0(this.c).l(bVar.b);
                    if (unVar.c() != null) {
                        bVar.b.setBackground(unVar.c());
                    } else {
                        bVar.b.setBackground(new ColorDrawable(Color.parseColor(unVar.b())));
                    }
                    if ("#FFFFFF".equalsIgnoreCase(unVar.b())) {
                        bVar.b.setForeground(androidx.core.content.a.c(this.c, R.drawable.ne));
                    } else {
                        bVar.b.setForeground(null);
                    }
                    uq.t(bVar.a, false);
                    uq.t(bVar.c, this.g.contains(Integer.valueOf(i2)));
                    View view = bVar.itemView;
                    if (this.e != i2) {
                        z = false;
                    }
                    view.setSelected(z);
                    bVar.itemView.setTag(unVar);
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public RecyclerView.b0 s(ViewGroup viewGroup, int i2) {
        if (i2 == 1) {
            return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.cb, viewGroup, false));
        }
        if (i2 == 0) {
            return new c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.ch, viewGroup, false));
        }
        if (i2 == 3) {
            return new a(LayoutInflater.from(this.c).inflate(R.layout.c2, viewGroup, false));
        }
        return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.cg, viewGroup, false));
    }

    public int z(int i2) {
        try {
            if (this.d != null) {
                if (d(i2) == 2) {
                    return Color.parseColor(this.d.get(i2).b());
                }
                if (d(i2) == 3) {
                    return this.d.get(i2).d();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (d(i2) == 2) {
            return -4473925;
        }
        if (d(i2) == 3) {
            return R.drawable.pattern_gradient_14;
        }
        return -1;
    }
}
