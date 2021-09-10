package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.core.app.b;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.a0;
import butterknife.BindView;
import com.camerasideas.collagemaker.activity.adapter.u;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.SubscribeProFragment;
import com.camerasideas.collagemaker.activity.widget.StyleEditText;
import defpackage.dm;
import defpackage.yp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class TextFontPanel extends um implements yp.e, SharedPreferences.OnSharedPreferenceChangeListener, yp.f, com.camerasideas.collagemaker.network.a {
    private StyleEditText Y;
    private u Z;
    private LinearLayoutManager a0;
    private String b0;
    private List<String> c0 = Collections.synchronizedList(new ArrayList());
    private dm.d d0 = new a();
    @BindView
    RecyclerView mRecyclerView;

    class a implements dm.d {
        a() {
        }

        @Override // defpackage.dm.d
        public void l(RecyclerView recyclerView, RecyclerView.b0 b0Var, int i, View view) {
            if (i != -1 && TextFontPanel.this.Z != null) {
                if (TextUtils.isEmpty(TextFontPanel.this.Y.getText())) {
                    if (mr.b() != null) {
                        mr.b().setGravity(17, 0, -c2.b(((tm) TextFontPanel.this).U, 50.0f));
                    }
                    mr.d(TextFontPanel.this.T(R.string.ia));
                    return;
                }
                wn z = TextFontPanel.this.Z.z(i);
                iq iqVar = z.c;
                if (iqVar != null && iqVar.b == 2 && !b.d0(((tm) TextFontPanel.this).U)) {
                    Bundle bundle = new Bundle();
                    bundle.putString("PRO_FROM", "ProFont");
                    b.s(((tm) TextFontPanel.this).W, SubscribeProFragment.class, bundle, R.id.hn, true, true);
                } else if (iqVar == null || iqVar.b == -1 || yp.S(iqVar)) {
                    TextFontPanel.this.Z.E(i);
                    TextFontPanel.this.Y.r(z.b);
                } else {
                    TextFontPanel.this.b0 = iqVar.h;
                    if (!TextFontPanel.this.c0.contains(iqVar.h)) {
                        TextFontPanel.this.c0.add(iqVar.h);
                    }
                    yp.F().z(iqVar);
                }
            }
        }
    }

    @Override // defpackage.vm, androidx.fragment.app.Fragment, defpackage.tm
    public void D0(View view, Bundle bundle) {
        super.D0(view, bundle);
        Fragment M = M();
        if (M instanceof ImageTextFragment) {
            StyleEditText styleEditText = ((ImageTextFragment) M).mEditText;
            this.Y = styleEditText;
            if (styleEditText == null || styleEditText.b() == null) {
                b.t0(this.W, TextFontPanel.class);
                return;
            }
        }
        this.Z = new u(C());
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this.U, 3);
        this.a0 = gridLayoutManager;
        this.mRecyclerView.setLayoutManager(gridLayoutManager);
        this.mRecyclerView.setAdapter(this.Z);
        RecyclerView.l itemAnimator = this.mRecyclerView.getItemAnimator();
        if (itemAnimator instanceof a0) {
            ((a0) itemAnimator).t(false);
        }
        this.Z.F(this.Y.b().l());
        this.a0.R1(this.Z.C(), O().getDimensionPixelSize(R.dimen.p_));
        dm.d(this.mRecyclerView).e(this.d0);
        yp.F().x(this);
        b.r0(this);
        yp.F().y(this);
        com.camerasideas.collagemaker.network.b.a().c(this);
        if (!b.f0(this.U)) {
            mr.d(T(R.string.e_));
        }
    }

    @Override // com.camerasideas.collagemaker.network.a
    public void h() {
        if (Z()) {
            yp.F().K();
        }
    }

    @Override // defpackage.yp.e
    public void j(String str) {
        if (this.c0.contains(str) && this.Z != null && str != null && str.startsWith("font_")) {
            this.Z.g(this.Z.B(str));
        }
    }

    @Override // com.camerasideas.collagemaker.network.a
    public void k() {
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.tm
    public int m1() {
        return R.layout.bp;
    }

    @Override // defpackage.yp.e
    public void n(String str) {
        if (str.startsWith("font_") && this.Z != null) {
            if (this.c0.contains(str) && str.equals(this.b0)) {
                int B = this.Z.B(str);
                this.Z.g(B);
                this.Z.E(B);
                this.Y.r(this.Z.z(B).b);
            }
            if (this.c0.size() > 0) {
                this.c0.remove(str);
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.vm
    public yn n1() {
        return new xn();
    }

    @Override // defpackage.vm, androidx.fragment.app.Fragment, defpackage.tm
    public void o0() {
        super.o0();
        yp.F().T(this);
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        u uVar;
        if (TextUtils.equals(str, "SubscribePro") && (uVar = this.Z) != null) {
            uVar.f();
        }
    }

    @Override // defpackage.yp.e
    public void q(String str) {
        this.c0.remove(str);
        u uVar = this.Z;
        if (uVar != null) {
            uVar.F(this.Y.b().l());
        }
    }

    @Override // defpackage.yp.f
    public void s(int i, boolean z) {
        u uVar;
        if (i == -1) {
            mr.d(T(R.string.ea));
        } else if (i == 2 && z && (uVar = this.Z) != null && uVar.A() != null && this.Z.A().size() < 3) {
            this.Z.D(vn.a(this.U));
        }
    }

    @Override // defpackage.yp.e
    public void u(String str, int i) {
        if (this.c0.contains(str) && this.Z != null && str != null && str.startsWith("font_")) {
            this.Z.g(this.Z.B(str));
        }
    }
}
