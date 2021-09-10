package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.camerasideas.collagemaker.activity.adapter.e;
import com.camerasideas.collagemaker.activity.adapter.i;
import com.camerasideas.collagemaker.activity.adapter.j;
import com.camerasideas.collagemaker.activity.adapter.k;
import com.camerasideas.collagemaker.message.UpdateCutoutBGEvent;
import com.camerasideas.collagemaker.message.d;
import com.camerasideas.collagemaker.photoproc.editorview.CutoutEditorView;
import defpackage.dm;
import defpackage.yp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class ImageCutoutShapeFragment extends h0<Object, no> implements Object, yp.e, yp.f {
    private LinearLayoutManager e0;
    private i f0;
    private LinearLayoutManager g0;
    private e h0;
    private boolean i0;
    private boolean j0;
    private boolean k0;
    private int l0;
    private UpdateCutoutBGEvent m0;
    @BindView
    RecyclerView mRecyclerView;
    @BindView
    RecyclerView mTab;
    private String n0;
    private List<String> o0 = Collections.synchronizedList(new ArrayList());
    private dm.d p0 = new b();

    class a extends RecyclerView.s {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public void b(RecyclerView recyclerView, int i, int i2) {
            if (ImageCutoutShapeFragment.this.j0) {
                ImageCutoutShapeFragment.this.j0 = false;
                int x1 = ImageCutoutShapeFragment.this.l0 - ImageCutoutShapeFragment.this.e0.x1();
                if (x1 >= 0 && x1 < ImageCutoutShapeFragment.this.mRecyclerView.getChildCount()) {
                    ImageCutoutShapeFragment.this.i0 = true;
                    int left = ImageCutoutShapeFragment.this.mRecyclerView.getChildAt(x1).getLeft();
                    ImageCutoutShapeFragment imageCutoutShapeFragment = ImageCutoutShapeFragment.this;
                    imageCutoutShapeFragment.mRecyclerView.scrollBy(left - c2.b(((tm) imageCutoutShapeFragment).U, 15.0f), 0);
                }
            } else if (ImageCutoutShapeFragment.this.k0) {
                ImageCutoutShapeFragment.this.k0 = false;
                ImageCutoutShapeFragment.this.i0 = true;
                ImageCutoutShapeFragment.this.mRecyclerView.scrollBy(-c2.b(((tm) ImageCutoutShapeFragment.this).U, 15.0f), 0);
            } else if (ImageCutoutShapeFragment.this.i0) {
                ImageCutoutShapeFragment.this.i0 = false;
            }
        }
    }

    class b implements dm.d {
        b() {
        }

        @Override // defpackage.dm.d
        public void l(RecyclerView recyclerView, RecyclerView.b0 b0Var, int i, View view) {
            mn A;
            if (i != -1 && ImageCutoutShapeFragment.this.f0.d(i) != 1 && !ImageCutoutShapeFragment.this.t1() && ImageCutoutShapeFragment.this.f0 != null && (A = ImageCutoutShapeFragment.this.f0.A(i)) != null) {
                if (ImageCutoutShapeFragment.this.f0.d(i) == 0) {
                    ImageCutoutShapeFragment.this.f0.E(i);
                    ImageCutoutShapeFragment.this.R1(null);
                } else if (ImageCutoutShapeFragment.this.f0.d(i) != 2) {
                } else {
                    if (androidx.core.app.b.d0(((tm) ImageCutoutShapeFragment.this).U) || !A.f()) {
                        ImageCutoutShapeFragment.M1(ImageCutoutShapeFragment.this, i);
                        if (A.e() == null || yp.S(A.e())) {
                            ImageCutoutShapeFragment.this.f0.E(i);
                            ImageCutoutShapeFragment.this.R1(A);
                            return;
                        }
                        ImageCutoutShapeFragment.this.n0 = A.e().h;
                        ImageCutoutShapeFragment.this.o0.add(ImageCutoutShapeFragment.this.n0);
                        yp.F().z(A.e());
                        return;
                    }
                    ImageCutoutShapeFragment.this.v1("ProShape");
                }
            }
        }
    }

    static void M1(ImageCutoutShapeFragment imageCutoutShapeFragment, int i) {
        if (i < imageCutoutShapeFragment.f0.b()) {
            imageCutoutShapeFragment.h0.b();
            int A = imageCutoutShapeFragment.h0.A(imageCutoutShapeFragment.f0.z(i).e() != null ? imageCutoutShapeFragment.f0.z(i).e().f() : "");
            imageCutoutShapeFragment.P1(A);
            imageCutoutShapeFragment.h0.C(A);
        }
    }

    @Override // defpackage.vm, androidx.fragment.app.Fragment, defpackage.tm, com.camerasideas.collagemaker.activity.fragment.imagefragment.h0
    public void D0(View view, Bundle bundle) {
        super.D0(view, bundle);
        if (bundle != null || this.b0 == null) {
            androidx.core.app.b.t0(this.W, ImageCutoutBgFragment.class);
            return;
        }
        if (A() != null && this.m0 == null) {
            this.m0 = (UpdateCutoutBGEvent) A().getParcelable("mEventArgument");
        }
        uq.s(this.d0, 4);
        List<nn> b2 = ln.b(this.U);
        this.h0 = new e(this.U, b2);
        this.mTab.addItemDecoration(new j(c2.b(this.U, 10.0f), true, c2.b(this.U, 15.0f)));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(0, false);
        this.g0 = linearLayoutManager;
        this.mTab.setLayoutManager(linearLayoutManager);
        this.mTab.setAdapter(this.h0);
        dm.d(this.mTab).e(new d0(this));
        i iVar = new i(this.W, ln.a(b2));
        this.f0 = iVar;
        this.mRecyclerView.setAdapter(iVar);
        this.mRecyclerView.addItemDecoration(new k(c2.b(this.W, 5.0f), true));
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(0, false);
        this.e0 = linearLayoutManager2;
        this.mRecyclerView.setLayoutManager(linearLayoutManager2);
        dm.d(this.mRecyclerView).e(this.p0);
        this.f0.E(0);
        mn K = this.b0.K();
        if (K != null) {
            if (K.e() != null) {
                int B = this.f0.B(K.e().h);
                this.f0.E(B);
                this.e0.R1(B, c2.h(this.U) / 2);
            } else if (K.a() != 0) {
                int C = this.f0.C(K.a());
                this.f0.E(C);
                this.e0.R1(C, c2.h(this.U) / 2);
            }
        }
        this.mRecyclerView.addOnScrollListener(new a());
        this.b0.m0(1);
        yp.F().x(this);
        yp.F().y(this);
        com.camerasideas.collagemaker.network.b.a().c(this);
        if (!androidx.core.app.b.f0(this.U)) {
            mr.d(T(R.string.e_));
        }
    }

    public void N1(RecyclerView recyclerView, RecyclerView.b0 b0Var, int i, View view) {
        if (this.mTab.isEnabled()) {
            this.h0.C(i);
            this.l0 = 0;
            for (int i2 = 0; i2 < i; i2++) {
                this.l0 = this.h0.z().get(i2).a() + this.l0;
            }
            int i3 = this.l0;
            int x1 = this.e0.x1();
            int A1 = this.e0.A1();
            if (i3 < x1) {
                this.k0 = true;
                this.mRecyclerView.scrollToPosition(i3);
            } else if (i3 <= A1) {
                this.j0 = true;
                this.mRecyclerView.scrollBy(this.mRecyclerView.getChildAt(i3 - x1).getLeft(), 0);
            } else {
                this.j0 = true;
                this.mRecyclerView.scrollToPosition(i3);
            }
            P1(i);
        }
    }

    public /* synthetic */ void O1(int i, String str, Boolean bool) {
        o1();
        Bundle bundle = new Bundle();
        UpdateCutoutBGEvent updateCutoutBGEvent = this.m0;
        if (updateCutoutBGEvent != null) {
            bundle.putParcelable("mEventArgument", updateCutoutBGEvent);
            bundle.putInt("CutoutStickerItemCount", i);
        }
        bundle.putBoolean("FromShape", true);
        bundle.putString("CutoutEditMode", str);
        androidx.core.app.b.s(this.W, ImageCutoutBgFragment.class, bundle, R.id.cw, true, false);
    }

    public void P1(int i) {
        if (i >= 0) {
            try {
                this.mTab.scrollToPosition(i);
                int x1 = i - this.g0.x1();
                if (x1 >= 0 && x1 < this.g0.C()) {
                    View childAt = this.mTab.getChildAt(x1);
                    this.mTab.smoothScrollBy((childAt.getLeft() - (this.mTab.getWidth() / 2)) + (childAt.getWidth() / 2), 0);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void Q1() {
        am.a().b(new d());
        androidx.core.app.b.t0(this.W, ImageCutoutShapeFragment.class);
    }

    public void R1(mn mnVar) {
        CutoutEditorView cutoutEditorView = this.b0;
        if (cutoutEditorView != null && cutoutEditorView.K() != mnVar) {
            this.b0.w0(mnVar);
        }
    }

    public void S1(UpdateCutoutBGEvent updateCutoutBGEvent) {
        this.m0 = updateCutoutBGEvent;
    }

    public void h() {
        if (Z()) {
            yp.F().K();
        }
    }

    @Override // defpackage.yp.e
    public void j(String str) {
        i iVar;
        if (this.o0.contains(str) && (iVar = this.f0) != null) {
            this.f0.g(iVar.B(str));
        }
    }

    public void k() {
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.tm
    public int m1() {
        return R.layout.bd;
    }

    @Override // defpackage.yp.e
    public void n(String str) {
        if (this.o0.contains(str) && this.f0 != null) {
            this.o0.remove(str);
            if (str != null && str.startsWith("shape_")) {
                int B = this.f0.B(str);
                this.f0.F(B, str);
                if (str.equals(this.n0)) {
                    this.f0.E(B);
                    R1(this.f0.z(B));
                    return;
                }
                this.f0.g(B);
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.vm
    public yn n1() {
        return new no();
    }

    @Override // defpackage.vm, androidx.fragment.app.Fragment, defpackage.tm, com.camerasideas.collagemaker.activity.fragment.imagefragment.h0
    public void o0() {
        super.o0();
        uq.s(this.d0, 0);
    }

    @OnClick
    public void onClick(View view) {
        if (jm.a("sclick:button-click") && !t1() && this.b0 != null) {
            switch (view.getId()) {
                case R.id.eg /*{ENCODED_INT: 2131230911}*/:
                    u1();
                    new we0(new c0(this)).e(nf0.c()).a(yd0.a()).b(new b0(this, com.camerasideas.collagemaker.photoproc.graphicsitems.i.k().i(), this.b0.E()), oe0.d, oe0.b, oe0.a());
                    return;
                case R.id.eh /*{ENCODED_INT: 2131230912}*/:
                    am.a().b(new d());
                    androidx.core.app.b.t0(this.W, ImageCutoutShapeFragment.class);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // defpackage.yp.e
    public void q(String str) {
        i iVar;
        if (this.o0.contains(str) && (iVar = this.f0) != null) {
            this.f0.h(iVar.B(str), Boolean.FALSE);
            this.o0.remove(str);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.fragment.imagefragment.h0
    public boolean q1() {
        return false;
    }

    @Override // defpackage.yp.f
    public void s(int i, boolean z) {
        if (i == -1) {
            mr.d(T(R.string.ea));
        } else if (i == 3 && z && this.h0 != null && this.f0 != null) {
            List<nn> b2 = ln.b(this.U);
            this.h0.B(b2);
            this.f0.D(ln.a(b2));
        }
    }

    @Override // defpackage.yp.e
    public void u(String str, int i) {
        i iVar;
        if (this.o0.contains(str) && (iVar = this.f0) != null) {
            this.f0.g(iVar.B(str));
        }
    }
}
