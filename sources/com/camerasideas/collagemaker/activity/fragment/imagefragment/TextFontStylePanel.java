package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.core.app.b;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.camerasideas.collagemaker.activity.adapter.o;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.SubscribeProFragment;
import com.camerasideas.collagemaker.activity.widget.FontTextView;
import com.camerasideas.collagemaker.activity.widget.StyleEditText;
import com.camerasideas.collagemaker.photoproc.graphicsitems.k;
import defpackage.dm;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class TextFontStylePanel extends um {
    private StyleEditText Y;
    private List<FontTextView> Z = new ArrayList();
    private o a0;
    private List<tn> b0;
    private int c0;
    private dm.d d0 = new a();
    @BindView
    FontTextView mBtnAlign;
    @BindView
    FontTextView mBtnBackgroundColor;
    @BindView
    FontTextView mBtnOutlineColor;
    @BindView
    FontTextView mBtnShadowColor;
    @BindView
    FontTextView mBtnTextColor;
    @BindView
    RecyclerView mPresetRecyclerView;

    class a implements dm.d {
        a() {
        }

        @Override // defpackage.dm.d
        public void l(RecyclerView recyclerView, RecyclerView.b0 b0Var, int i, View view) {
            if (i != -1 && TextFontStylePanel.this.a0 != null && TextFontStylePanel.this.a0.d(i) != 1) {
                if (TextUtils.isEmpty(TextFontStylePanel.this.Y.getText())) {
                    if (mr.b() != null) {
                        mr.b().setGravity(17, 0, -c2.b(((tm) TextFontStylePanel.this).U, 50.0f));
                    }
                    mr.d(TextFontStylePanel.this.T(R.string.ia));
                    return;
                }
                tn tnVar = (tn) TextFontStylePanel.this.b0.get(i);
                if (tnVar != null && tnVar.b() != null) {
                    if (!tnVar.d() || b.d0(((tm) TextFontStylePanel.this).U)) {
                        tnVar.b().a0(TextFontStylePanel.this.Y.b().A());
                        tnVar.b().M(TextFontStylePanel.this.Y.b().l());
                        TextFontStylePanel.this.Y.a(tnVar.b());
                        Fragment c = TextFontStylePanel.this.B().c(TextColorPanel.class.getName());
                        TextAlignPanel textAlignPanel = null;
                        if (c == null) {
                            c = null;
                        }
                        if (c != null) {
                            ((TextColorPanel) c).x1();
                        }
                        Fragment c2 = TextFontStylePanel.this.B().c(TextShadowPanel.class.getName());
                        if (c2 == null) {
                            c2 = null;
                        }
                        if (c2 != null) {
                            ((TextShadowPanel) c2).v1();
                        }
                        Fragment c3 = TextFontStylePanel.this.B().c(TextAlignPanel.class.getName());
                        if (c3 != null) {
                            textAlignPanel = c3;
                        }
                        if (textAlignPanel != null) {
                            TextAlignPanel textAlignPanel2 = textAlignPanel;
                            textAlignPanel2.onClick(textAlignPanel2.mBtnAlignMiddle);
                            textAlignPanel2.mBtnTextBold.setSelected(false);
                            textAlignPanel2.mBtnTextItalic.setSelected(false);
                            textAlignPanel2.mBtnTextUnderline.setSelected(false);
                            textAlignPanel2.mSeekBarLetterSpacing.l(0);
                            textAlignPanel2.mSeekBarLineSpacing.l(0);
                            return;
                        }
                        return;
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("PRO_FROM", "ProTextStyle");
                    b.s(((tm) TextFontStylePanel.this).W, SubscribeProFragment.class, bundle, R.id.hn, true, true);
                }
            }
        }
    }

    private void v1(View view) {
        for (FontTextView fontTextView : this.Z) {
            fontTextView.setSelected(view.getId() == fontTextView.getId());
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
                b.t0(this.W, TextFontStylePanel.class);
                return;
            }
        }
        this.Z.addAll(Arrays.asList(this.mBtnTextColor, this.mBtnOutlineColor, this.mBtnBackgroundColor, this.mBtnShadowColor, this.mBtnAlign));
        uq.v(this.mBtnTextColor);
        uq.v(this.mBtnOutlineColor);
        uq.v(this.mBtnBackgroundColor);
        uq.v(this.mBtnShadowColor);
        uq.v(this.mBtnAlign);
        ArrayList arrayList = new ArrayList();
        tn tnVar = new tn();
        tnVar.f(0);
        tnVar.e(new k());
        arrayList.add(tnVar);
        tn tnVar2 = new tn();
        tnVar2.f(1);
        arrayList.add(tnVar2);
        tn tnVar3 = new tn(2, R.drawable.np, false);
        k kVar = new k();
        kVar.Y(Color.parseColor("#FFFFFF"));
        kVar.J(Color.parseColor("#000000"));
        kVar.L(40);
        tnVar3.e(kVar);
        tn tnVar4 = new tn(2, R.drawable.o0, false);
        k kVar2 = new k();
        kVar2.Y(Color.parseColor("#000000"));
        kVar2.J(Color.parseColor("#FFFFFF"));
        kVar2.L(40);
        tnVar4.e(kVar2);
        tn tnVar5 = new tn(2, R.drawable.o4, false);
        k kVar3 = new k();
        kVar3.Y(Color.parseColor("#FDE472"));
        kVar3.J(Color.parseColor("#000000"));
        kVar3.L(40);
        tnVar5.e(kVar3);
        tn tnVar6 = new tn(2, R.drawable.o5, false);
        k kVar4 = new k();
        kVar4.Y(Color.parseColor("#FFFFFF"));
        kVar4.J(Color.parseColor("#FF679F"));
        kVar4.L(40);
        tnVar6.e(kVar4);
        tn tnVar7 = new tn(2, R.drawable.o6, false);
        k kVar5 = new k();
        kVar5.Y(Color.parseColor("#99D2F9"));
        kVar5.J(Color.parseColor("#000000"));
        kVar5.L(40);
        tnVar7.e(kVar5);
        tn tnVar8 = new tn(2, R.drawable.o7, false);
        k kVar6 = new k();
        kVar6.Y(Color.parseColor("#FFA4B9"));
        kVar6.J(Color.parseColor("#FB2C78"));
        kVar6.L(40);
        tnVar8.e(kVar6);
        tn tnVar9 = new tn(2, R.drawable.o8, false);
        k kVar7 = new k();
        kVar7.Y(Color.parseColor("#99D2F9"));
        kVar7.J(Color.parseColor("#058BC0"));
        kVar7.L(40);
        tnVar9.e(kVar7);
        tn tnVar10 = new tn(2, R.drawable.o9, false);
        k kVar8 = new k();
        kVar8.Y(Color.parseColor("#AACE87"));
        kVar8.J(Color.parseColor("#6D822B"));
        kVar8.L(40);
        tnVar10.e(kVar8);
        tn tnVar11 = new tn(2, R.drawable.o_, false);
        k kVar9 = new k();
        kVar9.Y(Color.parseColor("#FFD7CD"));
        kVar9.J(Color.parseColor("#CD181F"));
        kVar9.L(40);
        tnVar11.e(kVar9);
        tn tnVar12 = new tn(2, R.drawable.nq, true);
        k kVar10 = new k();
        kVar10.Y(Color.parseColor("#F6490D"));
        kVar10.J(Color.parseColor("#F4C131"));
        kVar10.L(40);
        kVar10.R(Color.parseColor("#F4C131"));
        kVar10.V(30);
        kVar10.S(50);
        tnVar12.e(kVar10);
        tn tnVar13 = new tn(2, R.drawable.nr, true);
        k kVar11 = new k();
        kVar11.Y(Color.parseColor("#4AE3D2"));
        kVar11.J(Color.parseColor("#3EA2D7"));
        kVar11.L(40);
        kVar11.R(Color.parseColor("#1DCED8"));
        kVar11.V(30);
        kVar11.S(50);
        tnVar13.e(kVar11);
        tn tnVar14 = new tn(2, R.drawable.ns, true);
        k kVar12 = new k();
        kVar12.Y(Color.parseColor("#3ADB7C"));
        kVar12.J(Color.parseColor("#FF3274"));
        kVar12.L(40);
        kVar12.R(Color.parseColor("#FF3274"));
        kVar12.V(30);
        kVar12.S(50);
        tnVar14.e(kVar12);
        tn tnVar15 = new tn(2, R.drawable.nt, true);
        k kVar13 = new k();
        kVar13.Y(Color.parseColor("#F2C4CD"));
        kVar13.J(Color.parseColor("#F22D52"));
        kVar13.L(40);
        kVar13.R(Color.parseColor("#FF3274"));
        kVar13.V(30);
        kVar13.S(50);
        tnVar15.e(kVar13);
        tn tnVar16 = new tn(2, R.drawable.nu, false);
        k kVar14 = new k();
        kVar14.Y(Color.parseColor("#000000"));
        kVar14.G(Color.parseColor("#FFFFFF"));
        kVar14.F(100);
        tnVar16.e(kVar14);
        tn tnVar17 = new tn(2, R.drawable.nv, false);
        k kVar15 = new k();
        kVar15.Y(Color.parseColor("#ffffff"));
        kVar15.G(Color.parseColor("#000000"));
        kVar15.F(100);
        tnVar17.e(kVar15);
        tn tnVar18 = new tn(2, R.drawable.nw, true);
        k kVar16 = new k();
        kVar16.Y(Color.parseColor("#F2C4CD"));
        kVar16.G(Color.parseColor("#730068"));
        kVar16.F(100);
        tnVar18.e(kVar16);
        tn tnVar19 = new tn(2, R.drawable.nx, true);
        k kVar17 = new k();
        kVar17.Y(Color.parseColor("#000000"));
        kVar17.G(Color.parseColor("#4AE3D2"));
        kVar17.F(100);
        tnVar19.e(kVar17);
        tn tnVar20 = new tn(2, R.drawable.ny, true);
        k kVar18 = new k();
        kVar18.Y(Color.parseColor("#000000"));
        kVar18.G(Color.parseColor("#FF5733"));
        kVar18.F(100);
        tnVar20.e(kVar18);
        tn tnVar21 = new tn(2, R.drawable.nz, true);
        k kVar19 = new k();
        kVar19.Y(Color.parseColor("#000000"));
        kVar19.G(Color.parseColor("#FF3274"));
        kVar19.F(100);
        tnVar21.e(kVar19);
        tn tnVar22 = new tn(2, R.drawable.o1, false);
        k kVar20 = new k();
        kVar20.Y(Color.parseColor("#000000"));
        kVar20.G(Color.parseColor("#FDE472"));
        kVar20.F(100);
        tnVar22.e(kVar20);
        tn tnVar23 = new tn(2, R.drawable.o2, false);
        k kVar21 = new k();
        kVar21.Y(Color.parseColor("#FFFFFF"));
        kVar21.G(Color.parseColor("#72462F"));
        kVar21.F(100);
        tnVar23.e(kVar21);
        tn tnVar24 = new tn(2, R.drawable.o3, false);
        k kVar22 = new k();
        kVar22.Y(Color.parseColor("#4DAF9D"));
        kVar22.G(Color.parseColor("#000000"));
        kVar22.F(100);
        tnVar24.e(kVar22);
        arrayList.add(tnVar3);
        arrayList.add(tnVar4);
        arrayList.add(tnVar5);
        arrayList.add(tnVar6);
        arrayList.add(tnVar7);
        arrayList.add(tnVar8);
        arrayList.add(tnVar9);
        arrayList.add(tnVar10);
        arrayList.add(tnVar11);
        arrayList.add(tnVar12);
        arrayList.add(tnVar13);
        arrayList.add(tnVar14);
        arrayList.add(tnVar15);
        arrayList.add(tnVar16);
        arrayList.add(tnVar17);
        arrayList.add(tnVar18);
        arrayList.add(tnVar19);
        arrayList.add(tnVar20);
        arrayList.add(tnVar21);
        arrayList.add(tnVar22);
        arrayList.add(tnVar23);
        arrayList.add(tnVar24);
        this.b0 = arrayList;
        this.a0 = new o(arrayList, this.W);
        this.mPresetRecyclerView.setLayoutManager(new LinearLayoutManager(0, false));
        this.mPresetRecyclerView.setAdapter(this.a0);
        dm.d(this.mPresetRecyclerView).e(this.d0);
        onClick(this.mBtnTextColor);
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.tm
    public int m1() {
        return R.layout.bs;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.vm
    public yn n1() {
        return new xn();
    }

    @Override // defpackage.vm, androidx.fragment.app.Fragment, defpackage.tm
    public void o0() {
        super.o0();
    }

    @OnClick
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.d6 /*{ENCODED_INT: 2131230863}*/:
                if (!com.camerasideas.collagemaker.activity.fragment.utils.a.b(B(), TextAlignPanel.class)) {
                    this.c0 = 5;
                    b.c(B(), new TextAlignPanel(), TextAlignPanel.class, R.id.hb, false);
                }
                v1(this.mBtnAlign);
                return;
            case R.id.de /*{ENCODED_INT: 2131230872}*/:
                if (!com.camerasideas.collagemaker.activity.fragment.utils.a.b(B(), TextColorPanel.class) || this.c0 != 3) {
                    this.c0 = 3;
                    TextColorPanel textColorPanel = new TextColorPanel();
                    Bundle bundle = new Bundle();
                    bundle.putInt("text_style", 3);
                    textColorPanel.c1(bundle);
                    b.c(B(), textColorPanel, TextColorPanel.class, R.id.hb, false);
                }
                v1(this.mBtnBackgroundColor);
                return;
            case R.id.e7 /*{ENCODED_INT: 2131230901}*/:
                if (!com.camerasideas.collagemaker.activity.fragment.utils.a.b(B(), TextColorPanel.class) || this.c0 != 2) {
                    this.c0 = 2;
                    TextColorPanel textColorPanel2 = new TextColorPanel();
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("text_style", 2);
                    textColorPanel2.c1(bundle2);
                    b.c(B(), textColorPanel2, TextColorPanel.class, R.id.hb, false);
                }
                v1(this.mBtnOutlineColor);
                return;
            case R.id.ee /*{ENCODED_INT: 2131230909}*/:
                if (!com.camerasideas.collagemaker.activity.fragment.utils.a.b(B(), TextShadowPanel.class) || this.c0 != 4) {
                    this.c0 = 4;
                    b.c(B(), new TextShadowPanel(), TextShadowPanel.class, R.id.hb, false);
                }
                v1(this.mBtnShadowColor);
                return;
            case R.id.en /*{ENCODED_INT: 2131230918}*/:
                if (!com.camerasideas.collagemaker.activity.fragment.utils.a.b(B(), TextColorPanel.class) || this.c0 != 1) {
                    this.c0 = 1;
                    TextColorPanel textColorPanel3 = new TextColorPanel();
                    Bundle bundle3 = new Bundle();
                    bundle3.putInt("text_style", 1);
                    textColorPanel3.c1(bundle3);
                    b.c(B(), textColorPanel3, TextColorPanel.class, R.id.hb, false);
                }
                v1(this.mBtnTextColor);
                return;
            default:
                return;
        }
    }

    public StyleEditText u1() {
        return this.Y;
    }
}
