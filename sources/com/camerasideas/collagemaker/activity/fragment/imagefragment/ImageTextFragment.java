package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.g;
import androidx.fragment.app.m;
import butterknife.BindView;
import butterknife.OnClick;
import cn.dreamtobe.kpswitch.widget.KPSwitchFSPanelFrameLayout;
import com.camerasideas.collagemaker.activity.ImageCutoutActivity;
import com.camerasideas.collagemaker.activity.widget.StyleEditText;
import com.camerasideas.collagemaker.activity.widget.VerticalSeekBar;
import com.camerasideas.collagemaker.appdata.f;
import com.camerasideas.collagemaker.photoproc.graphicsitems.i;
import com.camerasideas.collagemaker.photoproc.graphicsitems.j;
import defpackage.lm;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class ImageTextFragment extends h0<Object, ro> implements Object, TextView.OnEditorActionListener, VerticalSeekBar.a, lm.b, View.OnClickListener {
    private boolean e0 = false;
    private ViewTreeObserver.OnGlobalLayoutListener f0;
    private lm g0 = new lm();
    private View h0;
    private View i0;
    private List<FrameLayout> j0 = new ArrayList();
    private int k0;
    private int l0;
    private boolean m0;
    @BindView
    KPSwitchFSPanelFrameLayout mBottomChildLayout;
    @BindView
    AppCompatImageView mBtnApply;
    @BindView
    View mBtnCancel;
    @BindView
    FrameLayout mBtnKeyboard;
    @BindView
    FrameLayout mBtnTextFont;
    @BindView
    FrameLayout mBtnTextStyle;
    @BindView
    StyleEditText mEditText;
    @BindView
    VerticalSeekBar mTextSizeBar;
    @BindView
    TextView mTextSizeView;
    private final TextWatcher n0 = new a();

    class a implements TextWatcher {
        a() {
        }

        public void afterTextChanged(Editable editable) {
            em.h("ImageTextFragment", "afterTextChanged");
            ImageTextFragment.this.J1(editable.length() > 0);
        }

        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            em.h("ImageTextFragment", "beforeTextChanged");
        }

        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            TextUtils.isEmpty(charSequence.toString());
        }
    }

    class b extends androidx.activity.b {
        b(boolean z) {
            super(z);
        }

        @Override // androidx.activity.b
        public void b() {
            androidx.core.app.b.t0(((tm) ImageTextFragment.this).W, ImageTextFragment.class);
        }
    }

    public ImageTextFragment() {
        new b(true);
    }

    private void A1() {
        this.mEditText.clearFocus();
        w6.f(this.mEditText);
    }

    private void I1(View view) {
        for (FrameLayout frameLayout : this.j0) {
            boolean z = false;
            ((AppCompatImageView) frameLayout.getChildAt(0)).setSelected(frameLayout.getId() == view.getId());
            View childAt = frameLayout.getChildAt(1);
            if (frameLayout.getId() == view.getId()) {
                z = true;
            }
            uq.t(childAt, z);
        }
    }

    private void z1() {
        if (this.mBottomChildLayout.getVisibility() != 0 || !com.camerasideas.collagemaker.activity.fragment.utils.a.b(B(), TextFontPanel.class)) {
            this.e0 = false;
            I1(this.mBtnTextFont);
            uq.s(this.mBottomChildLayout, 0);
            if (B().c(TextFontPanel.class.getName()) == null) {
                g B = B();
                TextFontPanel textFontPanel = new TextFontPanel();
                m a2 = B.a();
                a2.b(R.id.cu, textFontPanel, TextFontPanel.class.getName());
                try {
                    a2.g();
                } catch (IllegalStateException e) {
                    e.printStackTrace();
                }
            } else {
                androidx.core.app.b.F0(B(), TextFontPanel.class, true);
            }
            Fragment c = B().c(TextFontPanel.class.getName());
            if (c == null) {
                c = null;
            }
            TextFontPanel textFontPanel2 = (TextFontPanel) c;
            androidx.core.app.b.F0(B(), TextFontStylePanel.class, false);
            A1();
        }
    }

    public void B1() {
        androidx.core.app.b.t0(this.W, ImageTextFragment.class);
    }

    public void C1(VerticalSeekBar verticalSeekBar, int i) {
        float f = (((float) i) / 1.5f) + 12.0f;
        if (this.mEditText.getTextSize() != ((float) ((int) ((f / this.U.getResources().getDisplayMetrics().scaledDensity) + 0.5f)))) {
            this.mEditText.setTextSize(f);
        }
        uq.t(this.mTextSizeView, true);
        if (i == 0) {
            this.mTextSizeView.setText(String.valueOf(1));
        } else {
            this.mTextSizeView.setText(String.valueOf(i));
        }
    }

    @Override // com.camerasideas.collagemaker.activity.fragment.imagefragment.h0, defpackage.vm, androidx.fragment.app.Fragment, defpackage.tm
    public void D0(View view, Bundle bundle) {
        super.D0(view, bundle);
        if (A() != null) {
            this.k0 = A().getInt("LayoutWidth");
            this.l0 = A().getInt("LayoutHeight");
        }
        i.k().h(false);
        this.h0 = this.W.findViewById(R.id.fy);
        this.i0 = this.W.findViewById(R.id.jz);
        this.m0 = uq.g(this.h0);
        uq.t(this.h0, false);
        uq.t(this.i0, false);
        s1();
        this.j0.addAll(Arrays.asList(this.mBtnKeyboard, this.mBtnTextFont, this.mBtnTextStyle));
        this.mEditText.addTextChangedListener(this.n0);
        this.mEditText.setOnEditorActionListener(this);
        this.mEditText.I(this);
        y1();
        this.g0.b(this.W, this);
        this.f0 = w6.b(this.W, this.mBottomChildLayout);
        j jVar = null;
        u6.a(this.mBottomChildLayout, null, this.mEditText, new f0(this));
        this.mTextSizeBar.c(this);
        if (f.c(this.U) > 0) {
            uq.q(this.mBtnCancel, f.c(this.U));
        }
        i k = i.k();
        if (k.m() instanceof j) {
            jVar = (j) k.m();
        }
        if (jVar != null) {
            this.mEditText.post(new g0(this, jVar));
        } else {
            int A = this.mEditText.b().A();
            if (A == 0) {
                this.mTextSizeBar.d(25);
                this.mEditText.setTextSize(28.666666f);
            } else {
                this.mTextSizeBar.d((int) (((float) (A - 12)) * 1.5f));
            }
        }
        H1();
    }

    public void D1(int i, boolean z) {
        em.h("ImageTextFragment", "Soft keyboard status: isOpen=" + z + ", softKeyboardHeight = " + i);
        if (Z()) {
            if (z) {
                this.e0 = true;
                em.h("ImageTextFragment", "软键盘打开");
                y1();
            } else if (this.e0) {
                z1();
            }
        }
    }

    public void E1(VerticalSeekBar verticalSeekBar, int i) {
        uq.t(this.mTextSizeView, true);
    }

    public void F1(VerticalSeekBar verticalSeekBar, int i) {
        uq.s(this.mTextSizeView, 4);
    }

    public void G1(MotionEvent motionEvent) {
        if (Z() && !this.e0) {
            if (motionEvent.getActionMasked() == 0 || motionEvent.getActionMasked() == 3 || motionEvent.getActionMasked() == 1) {
                y1();
            }
        }
    }

    public void H1() {
        AppCompatActivity appCompatActivity = this.W;
        if (appCompatActivity instanceof ImageCutoutActivity) {
            ((ImageCutoutActivity) appCompatActivity).C();
        }
    }

    public void J1(boolean z) {
        uq.t(this.mBtnApply, z);
        KPSwitchFSPanelFrameLayout kPSwitchFSPanelFrameLayout = this.mBottomChildLayout;
        if (kPSwitchFSPanelFrameLayout != null) {
            ViewGroup.LayoutParams layoutParams = kPSwitchFSPanelFrameLayout.getLayoutParams();
            if (layoutParams.height != w6.c(this.U)) {
                layoutParams.height = w6.c(this.U);
                this.mBottomChildLayout.setLayoutParams(layoutParams);
            }
        }
    }

    @Override // defpackage.vm, androidx.fragment.app.Fragment
    public void j0(Bundle bundle) {
        super.j0(bundle);
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.tm
    public int m1() {
        return R.layout.bq;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.vm
    public yn n1() {
        return new ro();
    }

    @Override // com.camerasideas.collagemaker.activity.fragment.imagefragment.h0, defpackage.vm, androidx.fragment.app.Fragment, defpackage.tm
    public void o0() {
        super.o0();
        A1();
        this.mEditText.removeTextChangedListener(this.n0);
        this.mEditText.I(null);
        AppCompatActivity appCompatActivity = this.W;
        ((ViewGroup) appCompatActivity.findViewById(16908290)).getViewTreeObserver().removeOnGlobalLayoutListener(this.f0);
        this.g0.c(this.W);
        uq.t(this.h0, this.m0);
        uq.t(this.i0, this.m0);
        i.k().h(true);
        H1();
    }

    @OnClick
    public void onClick(View view) {
        j e = this.mEditText.e();
        switch (view.getId()) {
            case R.id.db /*{ENCODED_INT: 2131230869}*/:
                em.h("ImageTextFragment", "OnClick Apply");
                if (!TextUtils.isEmpty(this.mEditText.getText())) {
                    this.mEditText.b().W(this.mEditText.getText().toString());
                }
                if (e == null) {
                    j jVar = new j();
                    jVar.A(this.k0);
                    jVar.z(this.l0);
                    jVar.M((this.mEditText.getWidth() - this.mEditText.getPaddingStart()) - this.mEditText.getPaddingEnd());
                    jVar.J(this.mEditText.b());
                    i.k().a(jVar);
                    i.k().r(jVar);
                } else {
                    e.N(this.mEditText.b());
                }
                this.e0 = false;
                androidx.core.app.b.t0(this.W, ImageTextFragment.class);
                H1();
                return;
            case R.id.dg /*{ENCODED_INT: 2131230874}*/:
                em.h("ImageTextFragment", "OnClick Cancel");
                if (e != null) {
                    e.R(true);
                }
                androidx.core.app.b.t0(this.W, ImageTextFragment.class);
                return;
            case R.id.eo /*{ENCODED_INT: 2131230919}*/:
                em.h("ImageTextFragment", "OnClick btn_text_font");
                z1();
                return;
            case R.id.eq /*{ENCODED_INT: 2131230921}*/:
                em.h("ImageTextFragment", "OnClick btn_text_keyboard");
                y1();
                return;
            case R.id.er /*{ENCODED_INT: 2131230922}*/:
                em.h("ImageTextFragment", "OnClick btn_text_style");
                if (this.mBottomChildLayout.getVisibility() != 0 || !com.camerasideas.collagemaker.activity.fragment.utils.a.b(B(), TextFontStylePanel.class)) {
                    this.e0 = false;
                    I1(this.mBtnTextStyle);
                    uq.s(this.mBottomChildLayout, 0);
                    if (B().c(TextFontStylePanel.class.getName()) == null) {
                        g B = B();
                        TextFontStylePanel textFontStylePanel = new TextFontStylePanel();
                        m a2 = B.a();
                        a2.b(R.id.cu, textFontStylePanel, TextFontStylePanel.class.getName());
                        try {
                            a2.g();
                        } catch (IllegalStateException e2) {
                            e2.printStackTrace();
                        }
                    } else {
                        androidx.core.app.b.F0(B(), TextFontStylePanel.class, true);
                    }
                    Fragment c = B().c(TextFontStylePanel.class.getName());
                    if (c == null) {
                        c = null;
                    }
                    TextFontStylePanel textFontStylePanel2 = (TextFontStylePanel) c;
                    androidx.core.app.b.F0(B(), TextFontPanel.class, false);
                    A1();
                    return;
                }
                return;
            case R.id.r2 /*{ENCODED_INT: 2131231377}*/:
                if (Z() && !this.e0) {
                    y1();
                    return;
                }
                return;
            default:
                return;
        }
    }

    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        em.h("ImageTextFragment", "onEditorAction: " + i + ", event: " + keyEvent);
        StyleEditText styleEditText = this.mEditText;
        if (styleEditText == null || !styleEditText.equals(textView) || i != 6) {
            return false;
        }
        A1();
        return false;
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.fragment.imagefragment.h0
    public boolean p1() {
        return false;
    }

    public void y1() {
        this.e0 = true;
        int c = w6.c(this.U);
        KPSwitchFSPanelFrameLayout kPSwitchFSPanelFrameLayout = this.mBottomChildLayout;
        if (kPSwitchFSPanelFrameLayout != null) {
            ViewGroup.LayoutParams layoutParams = kPSwitchFSPanelFrameLayout.getLayoutParams();
            if (layoutParams.height != c) {
                layoutParams.height = c;
                this.mBottomChildLayout.setLayoutParams(layoutParams);
            }
        }
        uq.s(this.mBottomChildLayout, 4);
        I1(this.mBtnKeyboard);
        StyleEditText styleEditText = this.mEditText;
        styleEditText.setSelection(styleEditText.length());
        this.mEditText.requestFocus();
        w6.g(this.mEditText);
    }
}
