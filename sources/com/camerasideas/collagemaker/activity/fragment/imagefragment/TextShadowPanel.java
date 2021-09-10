package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import androidx.core.app.b;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.camerasideas.collagemaker.activity.adapter.k;
import com.camerasideas.collagemaker.activity.adapter.t;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.SubscribeProFragment;
import com.camerasideas.collagemaker.activity.widget.SeekBarWithTextView;
import com.camerasideas.collagemaker.activity.widget.StyleEditText;
import defpackage.dm;
import java.util.ArrayList;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class TextShadowPanel extends um implements SeekBarWithTextView.a {
    private StyleEditText Y;
    private LinearLayoutManager Z;
    private t a0;
    private List<un> b0;
    private dm.d c0 = new a();
    @BindView
    ImageView mIconShadowDegree;
    @BindView
    ImageView mIconShadowX;
    @BindView
    ImageView mIconShadowY;
    @BindView
    ImageView mIconTransparent;
    @BindView
    RecyclerView mRecyclerView;
    @BindView
    SeekBarWithTextView mSeekBarShadowAlpha;
    @BindView
    SeekBarWithTextView mSeekBarShadowDegree;
    @BindView
    SeekBarWithTextView mSeekBarShadowX;
    @BindView
    SeekBarWithTextView mSeekBarShadowY;

    class a implements dm.d {
        a() {
        }

        @Override // defpackage.dm.d
        public void l(RecyclerView recyclerView, RecyclerView.b0 b0Var, int i, View view) {
            if (i != -1 && TextShadowPanel.this.a0 != null && TextShadowPanel.this.b0 != null && TextShadowPanel.this.Y != null && TextShadowPanel.this.a0.d(i) != 1) {
                boolean z = false;
                if (TextUtils.isEmpty(TextShadowPanel.this.Y.getText())) {
                    if (mr.b() != null) {
                        mr.b().setGravity(17, 0, -c2.b(((tm) TextShadowPanel.this).U, 50.0f));
                    }
                    mr.d(TextShadowPanel.this.T(R.string.ia));
                } else if (TextShadowPanel.this.a0.d(i) == 2 || TextShadowPanel.this.a0.d(i) == 0) {
                    un unVar = (un) TextShadowPanel.this.b0.get(i);
                    String b2 = unVar.b();
                    if (!b.d0(((tm) TextShadowPanel.this).U) && (com.camerasideas.collagemaker.appdata.b.e.contains(b2) || com.camerasideas.collagemaker.appdata.b.f.contains(b2))) {
                        z = true;
                    }
                    if (z) {
                        Bundle bundle = new Bundle();
                        bundle.putString("PRO_FROM", "ShadowColor");
                        b.s(((tm) TextShadowPanel.this).W, SubscribeProFragment.class, bundle, R.id.hn, true, true);
                        return;
                    }
                    TextShadowPanel.this.a0.C(i);
                    TextShadowPanel.this.Y.w(unVar.b());
                    TextShadowPanel.this.u1(!TextUtils.isEmpty(unVar.b()));
                } else if (TextShadowPanel.this.a0.d(i) == 3) {
                    TextShadowPanel.this.a0.C(i);
                    TextShadowPanel.this.u1(true);
                    TextShadowPanel.this.Y.x(TextShadowPanel.this.a0.z(i));
                }
            }
        }
    }

    @Override // defpackage.vm, androidx.fragment.app.Fragment, defpackage.tm
    public void D0(View view, Bundle bundle) {
        super.D0(view, bundle);
        Fragment M = M();
        if (M instanceof TextFontStylePanel) {
            StyleEditText u1 = ((TextFontStylePanel) M).u1();
            this.Y = u1;
            if (u1 == null || u1.b() == null) {
                b.t0(this.W, TextColorPanel.class);
                return;
            }
        }
        ArrayList arrayList = new ArrayList();
        un unVar = new un();
        unVar.e(0);
        unVar.f(R.drawable.gb);
        arrayList.add(unVar);
        un unVar2 = new un();
        unVar2.e(1);
        arrayList.add(unVar2);
        for (String str : com.camerasideas.collagemaker.appdata.b.d) {
            arrayList.add(new un(str, 2));
        }
        for (String str2 : com.camerasideas.collagemaker.appdata.b.e) {
            arrayList.add(new un(str2, 2));
        }
        for (String str3 : com.camerasideas.collagemaker.appdata.b.f) {
            arrayList.add(new un(str3, 2));
        }
        for (on onVar : rn.a()) {
            if (onVar instanceof qn) {
                un unVar3 = new un();
                unVar3.e(3);
                unVar3.f(((qn) onVar).a());
                arrayList.add(unVar3);
            }
        }
        this.b0 = arrayList;
        this.a0 = new t(arrayList, this.W);
        this.Z = new LinearLayoutManager(0, false);
        this.mRecyclerView.addItemDecoration(new k(c2.b(this.U, 7.5f), true));
        this.mRecyclerView.setLayoutManager(this.Z);
        this.mRecyclerView.setAdapter(this.a0);
        dm.d(this.mRecyclerView).e(this.c0);
        this.mSeekBarShadowAlpha.k(this);
        this.mSeekBarShadowDegree.k(this);
        this.mSeekBarShadowX.k(this);
        this.mSeekBarShadowY.k(this);
        this.mSeekBarShadowAlpha.l((int) (this.Y.b().q() * 100.0f));
        this.mSeekBarShadowDegree.l(this.Y.b().s());
        this.mSeekBarShadowX.j(-50, 50);
        this.mSeekBarShadowX.l(this.Y.b().u());
        this.mSeekBarShadowY.j(-50, 50);
        this.mSeekBarShadowY.l(this.Y.b().v());
        v1();
    }

    @Override // com.camerasideas.collagemaker.activity.widget.SeekBarWithTextView.a
    public void d(SeekBarWithTextView seekBarWithTextView, int i, boolean z) {
        if (!z) {
            return;
        }
        if (seekBarWithTextView.getId() == R.id.pc) {
            float f = ((float) i) / 100.0f;
            if (f >= 0.0f && f <= 255.0f) {
                this.Y.u(f);
            }
        } else if (seekBarWithTextView.getId() == R.id.pf) {
            this.Y.v(i);
        } else if (seekBarWithTextView.getId() == R.id.pg) {
            this.Y.y(i);
        } else if (seekBarWithTextView.getId() == R.id.ph) {
            this.Y.z(i);
        }
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.tm
    public int m1() {
        return R.layout.br;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.vm
    public yn n1() {
        return new xn();
    }

    @Override // com.camerasideas.collagemaker.activity.widget.SeekBarWithTextView.a
    public void p(SeekBarWithTextView seekBarWithTextView) {
    }

    @Override // com.camerasideas.collagemaker.activity.widget.SeekBarWithTextView.a
    public void t(SeekBarWithTextView seekBarWithTextView) {
    }

    public void u1(boolean z) {
        this.mSeekBarShadowAlpha.i(z);
        this.mSeekBarShadowDegree.i(z);
        this.mSeekBarShadowX.i(z);
        this.mSeekBarShadowY.i(z);
        float f = 1.0f;
        this.mIconTransparent.setAlpha(z ? 1.0f : 0.4f);
        this.mIconShadowDegree.setAlpha(z ? 1.0f : 0.4f);
        this.mIconShadowX.setAlpha(z ? 1.0f : 0.4f);
        ImageView imageView = this.mIconShadowY;
        if (!z) {
            f = 0.4f;
        }
        imageView.setAlpha(f);
    }

    public void v1() {
        this.mSeekBarShadowAlpha.l((int) (this.Y.b().q() * 100.0f));
        this.mSeekBarShadowDegree.l(this.Y.b().s());
        this.mSeekBarShadowX.l(this.Y.b().u());
        this.mSeekBarShadowY.l(this.Y.b().v());
        this.a0.B(this.Y.b().t() == 0 ? this.Y.b().r() : this.Y.b().t());
        this.Z.R1(this.a0.A(), c2.h(this.U) / 2);
        u1(this.Y.b().d());
    }
}
