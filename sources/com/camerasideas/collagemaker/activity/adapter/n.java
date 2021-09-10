package com.camerasideas.collagemaker.activity.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import photoeditor.cutout.backgrounderaser.R;

public class n extends RecyclerView.g<a> {
    private ArrayList<d> c;
    private Context d;
    private int e;
    private boolean f = true;

    public class a extends RecyclerView.b0 {
        private int a;
        private TextView b;
        private AppCompatImageView c;

        public a(n nVar, View view) {
            super(view);
            this.c = (AppCompatImageView) view.findViewById(R.id.py);
            this.b = (TextView) view.findViewById(R.id.q0);
        }

        public TextView c() {
            return this.b;
        }

        public int d() {
            return this.a;
        }

        public void e(int i) {
            this.a = i;
        }
    }

    public n(Context context) {
        this.d = context;
        this.e = c2.b(context, 80.0f);
        ArrayList<d> arrayList = new ArrayList<>();
        Resources resources = context.getResources();
        arrayList.add(new d(0, R.drawable.i8, resources.getString(R.string.gm), "other"));
        arrayList.add(new d(2, R.drawable.hg, resources.getString(R.string.gk), "com.instagram.android"));
        arrayList.add(new d(3, R.drawable.j2, resources.getString(R.string.go), "com.whatsapp"));
        arrayList.add(new d(4, R.drawable.h8, resources.getString(R.string.gj), "com.facebook.katana"));
        arrayList.add(new d(5, R.drawable.hm, resources.getString(R.string.gl), "com.facebook.orca"));
        arrayList.add(new d(6, R.drawable.iy, resources.getString(R.string.gn), "com.twitter.android"));
        arrayList.add(new d(7, R.drawable.h4, resources.getString(R.string.gi), ""));
        this.c = arrayList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int b() {
        ArrayList<d> arrayList = this.c;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public long c(int i) {
        ArrayList<d> arrayList = this.c;
        if (arrayList == null) {
            return -1;
        }
        return (long) arrayList.get(i).b();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [androidx.recyclerview.widget.RecyclerView$b0, int] */
    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void q(a aVar, int i) {
        Typeface a2;
        a aVar2 = aVar;
        d dVar = this.c.get(i);
        aVar2.e(dVar.b());
        aVar2.c.setImageResource(dVar.a());
        aVar2.b.setText(dVar.c());
        Context context = this.d;
        TextView textView = aVar2.b;
        if (!(context == null || textView == null || (a2 = mm.a(context, "Roboto-Regular.ttf")) == null)) {
            textView.setTypeface(a2);
        }
        aVar2.itemView.setEnabled(this.f);
        ViewGroup.LayoutParams layoutParams = aVar2.itemView.getLayoutParams();
        int b = c2.b(this.d, 0.0f);
        Context context2 = this.d;
        int i2 = this.e;
        int b2 = b();
        int h = c2.h(context2) - b;
        float f2 = ((float) (h / i2)) + 0.5f;
        if (((float) b2) >= f2) {
            i2 = (int) (((float) h) / f2);
        }
        layoutParams.width = i2;
        aVar2.itemView.setLayoutParams(layoutParams);
    }

    /* Return type fixed from 'androidx.recyclerview.widget.RecyclerView$b0' to match base method */
    @Override // androidx.recyclerview.widget.RecyclerView.g
    public a s(ViewGroup viewGroup, int i) {
        return new a(this, LayoutInflater.from(this.d).inflate(R.layout.e2, viewGroup, false));
    }

    public void z(boolean z) {
        this.f = z;
        f();
    }
}
