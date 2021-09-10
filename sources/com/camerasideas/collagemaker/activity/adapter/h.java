package com.camerasideas.collagemaker.activity.adapter;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.camerasideas.collagemaker.activity.widget.roundimageview.RoundedImageView;
import java.util.ArrayList;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class h extends RecyclerView.g<RecyclerView.b0> {
    public static final int m = Color.parseColor("#EBEBEB");
    private Context c;
    private int d = 0;
    private List<hn> e = new ArrayList();
    private ShapeDrawable f;
    private int g = m;
    private List<Integer> h = new ArrayList();
    private List<Integer> i = new ArrayList();
    private int j;
    private int k;
    private boolean l;

    public static class a extends RecyclerView.b0 {
        private AppCompatImageView a;
        private RoundedImageView b;
        private ImageView c;

        public a(View view) {
            super(view);
            this.a = (AppCompatImageView) view.findViewById(R.id.f22jp);
            this.b = (RoundedImageView) view.findViewById(R.id.jq);
            this.c = (ImageView) view.findViewById(R.id.jt);
        }
    }

    public static class b extends RecyclerView.b0 {
        private AppCompatImageView a;
        private FrameLayout b;
        private View c;

        b(View view) {
            super(view);
            this.a = (AppCompatImageView) view.findViewById(R.id.iq);
            this.b = (FrameLayout) view.findViewById(R.id.hi);
            this.c = view.findViewById(R.id.ta);
        }
    }

    public h(Context context, boolean z) {
        this.l = z;
        this.c = context;
        this.j = c2.b(context, 10.0f);
        hn hnVar = new hn(R.drawable.hu, 0);
        hn hnVar2 = new hn(0, 2);
        hn hnVar3 = new hn(R.drawable.hw, 1);
        hn hnVar4 = new hn(R.drawable.h_, 1);
        this.e.add(hnVar);
        this.e.add(hnVar2);
        this.e.add(hnVar4);
        this.e.add(hnVar3);
        int i2 = 0;
        while (true) {
            String[] strArr = com.camerasideas.collagemaker.appdata.b.g;
            if (i2 >= strArr.length) {
                break;
            }
            this.e.add(new hn(strArr[i2], 3, false));
            i2++;
        }
        this.h.add(Integer.valueOf(this.e.size()));
        int i3 = 0;
        while (true) {
            String[] strArr2 = com.camerasideas.collagemaker.appdata.b.h;
            if (i3 >= strArr2.length) {
                break;
            }
            this.e.add(new hn(strArr2[i3], 3, false));
            i3++;
        }
        this.h.add(Integer.valueOf(this.e.size()));
        this.i.add(Integer.valueOf(this.e.size()));
        int i4 = 0;
        while (true) {
            String[] strArr3 = com.camerasideas.collagemaker.appdata.b.i;
            if (i4 >= strArr3.length) {
                break;
            }
            this.e.add(new hn(strArr3[i4], 3, true));
            i4++;
        }
        this.h.add(Integer.valueOf(this.e.size()));
        int i5 = 0;
        while (true) {
            String[] strArr4 = com.camerasideas.collagemaker.appdata.b.j;
            if (i5 >= strArr4.length) {
                break;
            }
            this.e.add(new hn(strArr4[i5], 3, false));
            i5++;
        }
        this.k = this.e.size();
        this.i.add(Integer.valueOf(this.e.size()));
        this.h.add(Integer.valueOf(this.e.size()));
        for (on onVar : rn.a()) {
            if (onVar instanceof qn) {
                hn hnVar5 = new hn();
                hnVar5.k(5);
                hnVar5.j(((qn) onVar).a());
                hnVar5.l(true);
                this.e.add(hnVar5);
            }
        }
        float dimensionPixelSize = (float) this.c.getResources().getDimensionPixelSize(R.dimen.om);
        float[] fArr = {dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize};
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, null, fArr));
        this.f = shapeDrawable;
        shapeDrawable.getPaint().setColor(this.g);
        this.f.getPaint().setAntiAlias(true);
        this.f.getPaint().setStyle(Paint.Style.FILL);
    }

    public int A(int i2) {
        for (int i3 = 0; i3 < this.e.size(); i3++) {
            try {
                hn hnVar = this.e.get(i3);
                if ((!TextUtils.isEmpty(hnVar.b()) && Color.parseColor(hnVar.b()) == i2) || (hnVar.e() != 0 && hnVar.e() == i2)) {
                    return i3;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return -1;
            }
        }
        return -1;
    }

    public void B(int i2) {
        this.g = i2;
        if (m != i2) {
            this.d = 3;
        }
        f();
    }

    public void C(int i2) {
        this.d = i2;
        f();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int b() {
        return this.e.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int d(int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (i2 == 1) {
            return 2;
        }
        if (i2 == 2) {
            return 1;
        }
        if (i2 == 3) {
            return 4;
        }
        return i2 > this.k - 1 ? 5 : 3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void q(RecyclerView.b0 b0Var, int i2) {
        hn hnVar = this.e.get(i2);
        boolean z = true;
        if (d(i2) == 0) {
            a aVar = (a) b0Var;
            androidx.core.app.b.O0(this.c).l(aVar.b);
            aVar.b.setBackground(androidx.core.content.a.c(this.c, this.l ? R.drawable.cl : R.drawable.ck));
            uq.t(aVar.a, false);
            View view = aVar.itemView;
            if (this.d != i2) {
                z = false;
            }
            view.setSelected(z);
            aVar.itemView.setTag(hnVar);
        } else if (d(i2) == 4) {
            b bVar = (b) b0Var;
            this.f.getPaint().setColor(this.g);
            bVar.b.setBackground(this.f);
            if (k1.a(this.g) < 0.5d) {
                bVar.a.setImageResource(R.drawable.hy);
            } else {
                bVar.a.setImageResource(R.drawable.hx);
            }
        } else if (d(i2) == 3 || d(i2) == 5) {
            a aVar2 = (a) b0Var;
            ((RecyclerView.LayoutParams) b0Var.itemView.getLayoutParams()).setMarginStart(this.h.contains(Integer.valueOf(i2)) ? this.j : 0);
            uq.t(aVar2.c, this.i.contains(Integer.valueOf(i2)) && !androidx.core.app.b.d0(this.c));
            if (hnVar != null) {
                androidx.core.app.b.O0(this.c).l(aVar2.b);
                if (hnVar.e() == 0) {
                    if (hnVar.d() != null) {
                        aVar2.b.setBackground(hnVar.d());
                    } else {
                        aVar2.b.setBackground(new ColorDrawable(Color.parseColor(hnVar.b())));
                    }
                    if ("#FFFFFF".equalsIgnoreCase(hnVar.b())) {
                        aVar2.b.setForeground(androidx.core.content.a.c(this.c, R.drawable.ne));
                    } else {
                        aVar2.b.setForeground(null);
                    }
                } else {
                    androidx.core.app.b.O0(this.c).t(Integer.valueOf(hnVar.e())).e0(aVar2.b);
                }
                uq.t(aVar2.a, false);
                View view2 = aVar2.itemView;
                if (this.d != i2) {
                    z = false;
                }
                view2.setSelected(z);
                aVar2.itemView.setTag(hnVar);
            }
        } else if (d(i2) == 1) {
            a aVar3 = (a) b0Var;
            androidx.core.app.b.O0(this.c).l(aVar3.b);
            androidx.core.app.b.O0(this.c).t(Integer.valueOf(hnVar.e())).e0(aVar3.a);
            uq.t(aVar3.a, true);
            View view3 = aVar3.itemView;
            if (this.d != i2) {
                z = false;
            }
            view3.setSelected(z);
            aVar3.itemView.setTag(hnVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public RecyclerView.b0 s(ViewGroup viewGroup, int i2) {
        if (i2 == 2) {
            return new a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.cb, viewGroup, false));
        }
        if (i2 == 4) {
            return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.c3, viewGroup, false));
        }
        return new a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.c7, viewGroup, false));
    }

    public hn z(int i2) {
        List<hn> list = this.e;
        if (list == null || list.isEmpty() || this.e.size() <= i2) {
            return null;
        }
        return this.e.get(i2);
    }
}
