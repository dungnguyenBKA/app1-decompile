package com.camerasideas.collagemaker.activity.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.ads.AdError;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import photoeditor.cutout.backgrounderaser.R;

public class p extends RecyclerView.g<RecyclerView.b0> {
    private Context c;
    private final LayoutInflater d;
    private ArrayList<int[]> e;
    private int f = 0;
    private String g;
    private b h;

    public static class a extends RecyclerView.b0 {
        ImageView a;
        TextView b;

        a(View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iw);
            this.b = (TextView) view.findViewById(R.id.ro);
        }
    }

    public interface b {
        void f(String str, int i, int i2);
    }

    public p(Context context, String str, boolean z) {
        this.c = context;
        this.g = str;
        this.d = LayoutInflater.from(context);
        ArrayList<int[]> arrayList = new ArrayList<>();
        arrayList.add(new int[]{R.drawable.mi, R.drawable.mj, R.string.c_, 0, 0});
        arrayList.add(new int[]{R.drawable.lz, R.drawable.m0, R.string.bg, 0, -1});
        if (z) {
            arrayList.add(new int[]{R.drawable.mc, R.drawable.md, R.string.i4, -1, -1});
        }
        arrayList.add(new int[]{R.drawable.l2, R.drawable.l3, R.string.fz, 1, 1});
        arrayList.add(new int[]{R.drawable.lf, R.drawable.lg, R.string.g0, 4, 5});
        arrayList.add(new int[]{R.drawable.me, R.drawable.mf, R.string.g1, 9, 16});
        arrayList.add(new int[]{R.drawable.mq, R.drawable.mr, R.string.g6, 16, 9});
        arrayList.add(new int[]{R.drawable.ll, R.drawable.lm, R.string.fn, 5, 4});
        arrayList.add(new int[]{R.drawable.l_, R.drawable.la, R.string.fi, 3, 4});
        arrayList.add(new int[]{R.drawable.ld, R.drawable.le, R.string.fk, 4, 3});
        arrayList.add(new int[]{R.drawable.lt, R.drawable.lu, R.string.fr, 9, 16});
        arrayList.add(new int[]{R.drawable.l0, R.drawable.l1, R.string.fd, 16, 9});
        arrayList.add(new int[]{R.drawable.m1, R.drawable.m2, R.string.g5, -1, 0});
        arrayList.add(new int[]{R.drawable.ma, R.drawable.mb, R.string.g4, 1, 1});
        arrayList.add(new int[]{R.drawable.m7, R.drawable.m8, R.string.fw, 1920, 1080});
        arrayList.add(new int[]{R.drawable.m3, R.drawable.m4, R.string.fu, 1200, 628});
        arrayList.add(new int[]{R.drawable.l4, R.drawable.l5, R.string.fe, 1, 2});
        arrayList.add(new int[]{R.drawable.mo, R.drawable.mp, R.string.g3, 2, 1});
        arrayList.add(new int[]{R.drawable.mm, R.drawable.mn, R.string.fy, 3, 1});
        arrayList.add(new int[]{R.drawable.lp, R.drawable.lq, R.string.fp, 7, 5});
        arrayList.add(new int[]{R.drawable.l8, R.drawable.l9, R.string.fo, 6, 4});
        arrayList.add(new int[]{R.drawable.l6, R.drawable.l7, R.string.fl, 4, 6});
        arrayList.add(new int[]{R.drawable.lj, R.drawable.lk, R.string.fm, 5, 3});
        arrayList.add(new int[]{R.drawable.lb, R.drawable.lc, R.string.fj, 3, 5});
        arrayList.add(new int[]{R.drawable.lr, R.drawable.ls, R.string.fq, 4, 5});
        arrayList.add(new int[]{R.drawable.ll, R.drawable.lm, R.string.fc, 5, 4});
        arrayList.add(new int[]{R.drawable.lv, R.drawable.lw, R.string.fs, AdError.NETWORK_ERROR_CODE, 1414});
        arrayList.add(new int[]{R.drawable.mg, R.drawable.mh, R.string.g2, 85, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD});
        this.e = arrayList;
        this.f = A(this.g);
    }

    private int A(String str) {
        Iterator<int[]> it = this.e.iterator();
        int i = 0;
        while (it.hasNext() && !TextUtils.equals(str, this.c.getString(it.next()[2]))) {
            i++;
        }
        return i;
    }

    public void B(View view) {
        int layoutPosition = ((a) view.getTag()).getLayoutPosition();
        int[] iArr = this.e.get(layoutPosition);
        if (this.h != null) {
            if (!TextUtils.equals(this.c.getString(R.string.bg), this.c.getString(iArr[2]))) {
                this.f = layoutPosition;
                f();
            }
            if (TextUtils.equals(this.g, this.c.getString(R.string.bg)) || !TextUtils.equals(this.g, this.c.getString(iArr[2]))) {
                String string = this.c.getString(iArr[2]);
                this.g = string;
                this.h.f(string, iArr[3], iArr[4]);
            }
        }
    }

    public void C(b bVar) {
        this.h = bVar;
    }

    public void D(String str) {
        this.g = str;
        this.f = A(str);
        f();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int b() {
        return this.e.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void q(RecyclerView.b0 b0Var, int i) {
        Context context;
        int i2;
        int[] iArr = this.e.get(i);
        a aVar = (a) b0Var;
        aVar.a.setImageResource(this.f == i ? iArr[1] : iArr[0]);
        aVar.b.setText(iArr[2]);
        TextView textView = aVar.b;
        if (this.f == i) {
            context = this.c;
            i2 = R.color.b6;
        } else {
            context = this.c;
            i2 = R.color.gq;
        }
        textView.setTextColor(androidx.core.content.a.b(context, i2));
        aVar.itemView.setTag(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public RecyclerView.b0 s(ViewGroup viewGroup, int i) {
        View inflate = this.d.inflate(R.layout.ce, viewGroup, false);
        inflate.setOnClickListener(new c(this));
        return new a(inflate);
    }

    public int z() {
        return this.f;
    }
}
