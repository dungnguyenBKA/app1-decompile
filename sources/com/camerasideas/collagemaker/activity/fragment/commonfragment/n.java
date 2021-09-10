package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.x;
import com.camerasideas.collagemaker.activity.widget.PreviewBottomRoundView;
import com.github.chrisbanes.photoview.PhotoView;
import java.util.ArrayList;
import photoeditor.cutout.backgrounderaser.R;

public class n extends Fragment implements View.OnClickListener {
    private int U;
    private int V;
    private RecyclerView W;
    private PreviewBottomRoundView X;
    private ArrayList<String> Y;
    private int Z;
    private boolean a0;

    class a extends RecyclerView.s {
        final /* synthetic */ x a;
        final /* synthetic */ RecyclerView.o b;

        a(x xVar, RecyclerView.o oVar) {
            this.a = xVar;
            this.b = oVar;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public void a(RecyclerView recyclerView, int i) {
            if (i == 0) {
                n.this.X.c(n.this.W.getChildAdapterPosition(this.a.e(this.b)));
            }
        }
    }

    private class b extends RecyclerView.g<RecyclerView.b0> {
        b(a aVar) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public int b() {
            if (n.this.Y != null) {
                return n.this.Y.size();
            }
            return 0;
        }

        /* JADX WARNING: Removed duplicated region for block: B:19:0x006a  */
        /* JADX WARNING: Removed duplicated region for block: B:30:0x00c3  */
        /* JADX WARNING: Removed duplicated region for block: B:31:0x00d0  */
        /* JADX WARNING: Removed duplicated region for block: B:34:0x00ff  */
        /* JADX WARNING: Removed duplicated region for block: B:45:0x01ce  */
        /* JADX WARNING: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
        /* JADX WARNING: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
        @Override // androidx.recyclerview.widget.RecyclerView.g
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void q(androidx.recyclerview.widget.RecyclerView.b0 r11, int r12) {
            /*
            // Method dump skipped, instructions count: 514
            */
            throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.activity.fragment.commonfragment.n.b.q(androidx.recyclerview.widget.RecyclerView$b0, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public RecyclerView.b0 s(ViewGroup viewGroup, int i) {
            return new c(n.this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.cd, viewGroup, false));
        }
    }

    private class c extends RecyclerView.b0 {
        private PhotoView a;
        private ProgressBar b;
        private View c;

        c(n nVar, View view) {
            super(view);
            this.c = view.findViewById(R.id.mz);
            this.a = (PhotoView) view.findViewById(R.id.mv);
            this.b = (ProgressBar) view.findViewById(R.id.n5);
        }
    }

    private class d extends jk implements View.OnClickListener {
        private View e;

        d(n nVar, ImageView imageView, View view) {
            super(imageView);
            this.e = view;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, sk] */
        @Override // defpackage.kk, defpackage.nk
        public void b(Drawable drawable, sk<? super Drawable> skVar) {
            super.b(drawable, skVar);
            View view = this.e;
            if (view != null) {
                view.setVisibility(8);
            }
        }

        @Override // defpackage.kk, defpackage.fk, defpackage.nk
        public void d(Drawable drawable) {
            super.d(drawable);
            View view = this.e;
            if (view != null) {
                view.setVisibility(8);
            }
        }

        @Override // defpackage.kk, defpackage.ok, defpackage.nk
        public void e(Drawable drawable) {
            super.e(drawable);
            View view = this.e;
            if (view != null) {
                view.setVisibility(0);
            }
        }

        public void onClick(View view) {
            if (f() != null && !f().isRunning()) {
                f().c();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void D0(View view, Bundle bundle) {
        if (A() != null) {
            this.a0 = A().getBoolean("isPng");
        }
        ArrayList<String> stringArrayList = A() != null ? A().getStringArrayList("Key.Image.Preview.Path") : null;
        this.Y = stringArrayList;
        if (stringArrayList == null || stringArrayList.size() == 0) {
            nm.a(new g(this), 300);
            return;
        }
        this.Z = this.Y.size() > 1 ? 1920 : 3000;
        this.W = (RecyclerView) view.findViewById(R.id.mt);
        this.X = (PreviewBottomRoundView) view.findViewById(R.id.ol);
        C();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(0, false);
        x xVar = new x();
        xVar.a(this.W);
        this.W.setLayoutManager(linearLayoutManager);
        this.W.setAdapter(new b(null));
        if (this.Y.size() > 1) {
            this.X.setVisibility(0);
            this.X.b(this.Y.size());
            this.W.addOnScrollListener(new a(xVar, linearLayoutManager));
        } else {
            this.X.setVisibility(8);
        }
        this.U = c2.h(C()) / 2;
        if (c2.v(C())) {
            this.U = c2.b(C(), 30.0f) + this.U;
        } else {
            this.U -= c2.b(C(), 30.0f);
        }
        int b2 = c2.b(C(), 49.0f);
        this.V = b2;
        cm.u(view, this.U, b2, 300);
    }

    @Override // androidx.fragment.app.Fragment
    public View m0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.bj, viewGroup, false);
    }

    public void onClick(View view) {
        cm.j((AppCompatActivity) x(), n.class, this.U, this.V, 300);
    }

    public /* synthetic */ void q1() {
        cm.j((AppCompatActivity) x(), n.class, this.U, this.V, 300);
    }
}
