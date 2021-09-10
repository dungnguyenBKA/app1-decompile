package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.app.b;
import butterknife.BindView;
import butterknife.OnClick;
import com.camerasideas.collagemaker.activity.widget.SeekBarWithTextView;
import com.camerasideas.collagemaker.activity.widget.d;
import com.camerasideas.collagemaker.appdata.f;
import com.camerasideas.collagemaker.message.UpdateCutoutBGEvent;
import com.camerasideas.collagemaker.message.e;
import com.camerasideas.collagemaker.photoproc.editorview.CutoutEditorView;
import com.camerasideas.collagemaker.photoproc.graphicsitems.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.apache.http.HttpStatus;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.j;
import photoeditor.cutout.backgrounderaser.R;

public class ImageCutoutFragment extends h0<Object, no> implements Object, View.OnClickListener {
    private View e0;
    private View f0;
    private AppCompatImageView g0;
    private AppCompatImageView h0;
    private View i0;
    private CutoutEditorView j0;
    private View k0;
    private int l0;
    private ArrayList<LinearLayout> m0 = new ArrayList<>();
    @BindView
    LinearLayout mBtnAICutout;
    @BindView
    LinearLayout mBtnCutout;
    @BindView
    AppCompatImageView mBtnCutoutEraserAdd;
    @BindView
    AppCompatImageView mBtnCutoutEraserDelete;
    @BindView
    LinearLayout mBtnShape;
    @BindView
    View mCutoutControlLayout;
    @BindView
    LinearLayout mCutoutSeekbarModeLayout;
    @BindView
    View mEraserModeLayout;
    @BindView
    AppCompatImageView mIvSeekbarMode;
    @BindView
    AppCompatImageView mIvTab;
    @BindView
    View mLayoutSeekBar;
    @BindView
    View mLineEraser;
    @BindView
    View mLineMagic;
    @BindView
    View mLineSmooth;
    @BindView
    View mNewTagMagic;
    @BindView
    View mNewTagSmooth;
    @BindView
    SeekBarWithTextView mSeekBarCutoutOffset;
    @BindView
    SeekBarWithTextView mSeekBarCutoutSize;
    @BindView
    View mSmoothLayout;
    @BindView
    TextView mTvEraser;
    @BindView
    TextView mTvMagic;
    @BindView
    TextView mTvSeekbarMode;
    @BindView
    TextView mTvSeekbarSize;
    @BindView
    TextView mTvSmooth;
    private ArrayList<TextView> n0 = new ArrayList<>();
    private int o0 = 37;
    private int p0 = 18;
    private int q0 = 0;
    private int r0 = 50;
    private int s0 = 25;
    @BindView
    TextView smooth0;
    @BindView
    TextView smooth1;
    @BindView
    TextView smooth2;
    @BindView
    TextView smooth3;
    @BindView
    TextView smooth4;
    @BindView
    TextView smooth5;
    private int t0 = 0;
    private UpdateCutoutBGEvent u0;
    private boolean v0 = true;

    class a extends d.a {
        a() {
        }

        public void onAnimationEnd(Animation animation) {
            uq.t(ImageCutoutFragment.this.mCutoutSeekbarModeLayout, false);
        }
    }

    private void C1(int i) {
        int b = c2.b(this.U, (float) (i * 2));
        CutoutEditorView cutoutEditorView = this.j0;
        if (cutoutEditorView != null) {
            cutoutEditorView.p0(b);
            this.j0.invalidate();
        }
    }

    private void D1(int i) {
        float b = (float) c2.b(this.U, ((((float) i) / 100.0f) * 75.0f) + 5.0f);
        CutoutEditorView cutoutEditorView = this.j0;
        if (cutoutEditorView != null) {
            cutoutEditorView.k0(b);
        }
    }

    private void E1(int i) {
        this.l0 = i;
        int b = androidx.core.content.a.b(this.U, R.color.b6);
        int b2 = androidx.core.content.a.b(this.U, R.color.c1);
        Iterator<LinearLayout> it = this.m0.iterator();
        while (it.hasNext()) {
            LinearLayout next = it.next();
            ((ImageView) next.getChildAt(0)).setColorFilter(next.getId() == i ? b : b2);
            ((TextView) next.getChildAt(1)).setTextColor(next.getId() == i ? b : b2);
        }
    }

    private void G1() {
        I1(0);
        this.t0 = 0;
        H1(R.id.dy);
        uq.t(this.mIvTab, true);
        this.mSeekBarCutoutOffset.l(this.q0);
        C1(this.q0);
        this.mSeekBarCutoutSize.j(1, 100);
        this.mSeekBarCutoutSize.l(this.v0 ? this.o0 : this.p0);
        D1(this.o0);
        uq.t(this.mSmoothLayout, false);
        uq.t(this.mLayoutSeekBar, true);
        uq.t(this.i0, true);
    }

    private void H1(int i) {
        int b = androidx.core.content.a.b(this.U, R.color.gq);
        int b2 = androidx.core.content.a.b(this.U, R.color.bh);
        this.mBtnCutoutEraserDelete.setImageResource(R.drawable.h6);
        switch (i) {
            case R.id.dy /*{ENCODED_INT: 2131230892}*/:
                this.mTvEraser.setTextColor(b2);
                this.mTvMagic.setTextColor(b);
                this.mTvSmooth.setTextColor(b);
                uq.t(this.mLineEraser, true);
                uq.t(this.mLineMagic, false);
                uq.t(this.mLineSmooth, false);
                return;
            case R.id.dz /*{ENCODED_INT: 2131230893}*/:
                this.mTvEraser.setTextColor(b);
                this.mTvMagic.setTextColor(b2);
                this.mTvSmooth.setTextColor(b);
                this.mBtnCutoutEraserDelete.setImageResource(R.drawable.hj);
                uq.t(this.mLineEraser, false);
                uq.t(this.mLineMagic, true);
                uq.t(this.mLineSmooth, false);
                if (uq.g(this.mNewTagMagic)) {
                    uq.t(this.mNewTagMagic, false);
                    ic.s(this.U, "EnableShowNewMarkMagic", false);
                    return;
                }
                return;
            case R.id.e0 /*{ENCODED_INT: 2131230894}*/:
                this.mTvEraser.setTextColor(b);
                this.mTvMagic.setTextColor(b);
                this.mTvSmooth.setTextColor(b2);
                uq.t(this.mLineEraser, false);
                uq.t(this.mLineMagic, false);
                uq.t(this.mLineSmooth, true);
                if (uq.g(this.mNewTagSmooth)) {
                    uq.t(this.mNewTagSmooth, false);
                    ic.s(this.U, "EnableShowNewMarkSmooth", false);
                    return;
                }
                return;
            default:
                return;
        }
    }

    private void J1(int i) {
        im.b("Click Smooth " + i);
        int i2 = 0;
        while (i2 < this.n0.size()) {
            this.n0.get(i2).setSelected(i2 == i);
            i2++;
        }
        u1();
        new ve0(new t(this, i)).e(nf0.b()).a(yd0.a()).b(new s(this), new y(this), new z(this), oe0.a());
    }

    public /* synthetic */ void A1(int i, ud0 ud0) {
        CutoutEditorView cutoutEditorView = this.j0;
        if (cutoutEditorView != null) {
            cutoutEditorView.J0(i * 2);
        }
        ud0.c(Boolean.TRUE);
        ud0.a();
    }

    public /* synthetic */ void B1() {
        o1();
        this.j0.invalidate();
    }

    @Override // defpackage.vm, androidx.fragment.app.Fragment, defpackage.tm, com.camerasideas.collagemaker.activity.fragment.imagefragment.h0
    public void D0(View view, Bundle bundle) {
        super.D0(view, bundle);
        this.g0 = (AppCompatImageView) this.W.findViewById(R.id.ek);
        this.h0 = (AppCompatImageView) this.W.findViewById(R.id.ej);
        this.j0 = (CutoutEditorView) this.W.findViewById(R.id.iz);
        this.i0 = this.W.findViewById(R.id.k4);
        this.k0 = this.W.findViewById(R.id.jl);
        this.e0 = this.W.findViewById(R.id.g3);
        this.f0 = this.W.findViewById(R.id.fy);
        this.g0.setOnClickListener(this);
        this.h0.setOnClickListener(this);
        ((AppCompatImageView) this.W.findViewById(R.id.dq)).setOnClickListener(this);
        this.c0.setOnClickListener(this);
        this.k0.setOnClickListener(this);
        uq.t(this.e0, true);
        uq.t(this.i0, true);
        uq.t(this.f0, false);
        uq.t(this.mNewTagMagic, f.g(this.U).getBoolean("EnableShowNewMarkMagic", false));
        uq.t(this.mNewTagSmooth, f.g(this.U).getBoolean("EnableShowNewMarkSmooth", false));
        this.m0.addAll(Arrays.asList(this.mBtnAICutout, this.mBtnCutout, this.mBtnShape));
        this.n0.addAll(Arrays.asList(this.smooth0, this.smooth1, this.smooth2, this.smooth3, this.smooth4, this.smooth5));
        uq.t(this.mLayoutSeekBar, true);
        uq.t(this.mCutoutControlLayout, true);
        this.mSeekBarCutoutSize.j(1, 100);
        this.mSeekBarCutoutOffset.j(0, 50);
        this.mSeekBarCutoutSize.l(this.o0);
        this.mSeekBarCutoutOffset.l(this.q0);
        this.mSeekBarCutoutSize.k(this);
        this.mSeekBarCutoutOffset.k(this);
        E1(R.id.d5);
        H1(R.id.dy);
        this.mBtnCutoutEraserDelete.setSelected(true);
        this.g0.setEnabled(false);
        this.h0.setEnabled(false);
    }

    public void F1(boolean z) {
        this.mBtnCutoutEraserAdd.setSelected(!z);
        this.mBtnCutoutEraserDelete.setSelected(z);
        CutoutEditorView cutoutEditorView = this.j0;
        if (cutoutEditorView != null) {
            cutoutEditorView.q0(z);
        }
    }

    public boolean I1(int i) {
        CutoutEditorView cutoutEditorView = this.j0;
        if (cutoutEditorView != null) {
            return cutoutEditorView.n0(i, false);
        }
        return false;
    }

    public void d(SeekBarWithTextView seekBarWithTextView, int i, boolean z) {
        if (!z) {
            return;
        }
        if (seekBarWithTextView.getId() == R.id.p_) {
            if (this.v0) {
                if (this.t0 == 3) {
                    this.r0 = i;
                } else {
                    this.o0 = i;
                }
                D1(i);
                return;
            }
            this.p0 = i;
            CutoutEditorView cutoutEditorView = this.j0;
            if (cutoutEditorView != null) {
                cutoutEditorView.b0(i);
            }
        } else if (seekBarWithTextView.getId() == R.id.p9) {
            if (this.t0 == 3) {
                this.s0 = i;
            } else {
                this.q0 = i;
            }
            C1(i);
        }
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.tm
    public int m1() {
        return R.layout.bc;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.vm
    public yn n1() {
        return new no();
    }

    @OnClick
    public void onClick(View view) {
        if (jm.b("sclick:show_dialog", HttpStatus.SC_MULTIPLE_CHOICES) && !t1() && this.j0 != null) {
            if (view.getId() != R.id.k0) {
                uq.t(this.mCutoutSeekbarModeLayout, false);
            }
            switch (view.getId()) {
                case R.id.d5 /*{ENCODED_INT: 2131230862}*/:
                    uq.n(this.U, "CutClick", "AI");
                    if (this.l0 != R.id.d5) {
                        I1(0);
                        this.t0 = 0;
                        this.j0.C0();
                        this.j0.invalidate();
                        E1(R.id.d5);
                        uq.s(this.mCutoutControlLayout, 0);
                        uq.s(this.mEraserModeLayout, 0);
                        uq.r(this.mCutoutControlLayout, R.color.hq);
                        H1(R.id.dy);
                        uq.t(this.mSmoothLayout, false);
                        uq.t(this.mLayoutSeekBar, true);
                        G1();
                        return;
                    }
                    return;
                case R.id.di /*{ENCODED_INT: 2131230876}*/:
                    im.b("Click Change Background Alpha");
                    CutoutEditorView cutoutEditorView = this.j0;
                    if (cutoutEditorView.r(!cutoutEditorView.N())) {
                        this.c0.setImageResource(R.drawable.g9);
                        return;
                    } else {
                        this.c0.setImageResource(R.drawable.g8);
                        return;
                    }
                case R.id.dn /*{ENCODED_INT: 2131230881}*/:
                    uq.n(this.U, "CutClick", "Mannual");
                    em.h("ImageCutoutFragment", "点击Cutout编辑页底部菜单: Cutout");
                    if (f.g(this.U).getBoolean("enableShowCutoutGuide", true)) {
                        Bundle bundle = new Bundle();
                        bundle.putInt("GUID_TYPE", 1);
                        b.s(this.W, ImageGuidFragment.class, bundle, R.id.hl, true, true);
                    }
                    if (this.l0 != R.id.dn) {
                        I1(0);
                        this.t0 = 0;
                        this.j0.X();
                        this.j0.F0();
                        this.j0.c0(false);
                        this.j0.invalidate();
                        this.g0.setEnabled(false);
                        this.h0.setEnabled(false);
                        E1(R.id.dn);
                        uq.s(this.mCutoutControlLayout, 4);
                        uq.s(this.mEraserModeLayout, 4);
                        uq.r(this.mCutoutControlLayout, R.color.e7);
                        H1(R.id.dy);
                        uq.t(this.mIvTab, true);
                        uq.t(this.mSmoothLayout, false);
                        uq.t(this.mLayoutSeekBar, true);
                        G1();
                        return;
                    }
                    return;
                case R.id.dq /*{ENCODED_INT: 2131230884}*/:
                    u1();
                    new we0(new o(this)).e(nf0.c()).a(yd0.a()).b(new v(this, i.k().i(), this.j0.E()), oe0.d, oe0.b, oe0.a());
                    return;
                case R.id.dy /*{ENCODED_INT: 2131230892}*/:
                    im.b("Click Mode Eraser");
                    uq.n(this.U, "CutClick", "Eraser");
                    G1();
                    return;
                case R.id.dz /*{ENCODED_INT: 2131230893}*/:
                    im.b("Click Mode Magic");
                    uq.n(this.U, "CutClick", "Magic");
                    if (f.g(this.U).getBoolean("enableShowMagicGuide", true)) {
                        Bundle bundle2 = new Bundle();
                        bundle2.putInt("GUID_TYPE", 2);
                        b.s(this.W, ImageGuidFragment.class, bundle2, R.id.hl, true, true);
                    }
                    this.v0 = true;
                    this.mIvSeekbarMode.setImageResource(R.drawable.gd);
                    this.mTvSeekbarMode.setText(T(R.string.bk));
                    this.mTvSeekbarSize.setText(T(R.string.hp));
                    this.mSeekBarCutoutOffset.l(this.s0);
                    C1(this.s0);
                    this.mSeekBarCutoutSize.j(30, 100);
                    this.mSeekBarCutoutSize.l(this.r0);
                    D1(this.r0);
                    uq.t(this.mIvTab, false);
                    F1(true);
                    I1(3);
                    this.t0 = 3;
                    H1(R.id.dz);
                    uq.t(this.mSmoothLayout, false);
                    uq.t(this.mLayoutSeekBar, true);
                    uq.t(this.i0, true);
                    return;
                case R.id.e0 /*{ENCODED_INT: 2131230894}*/:
                    im.b("Click Mode Smooth");
                    uq.n(this.U, "CutClick", "Smooth");
                    if (f.g(this.U).getBoolean("enableShowSmoothGuide", true)) {
                        Bundle bundle3 = new Bundle();
                        bundle3.putInt("GUID_TYPE", 4);
                        b.s(this.W, ImageGuidFragment.class, bundle3, R.id.hl, true, true);
                    }
                    J1(0);
                    I1(4);
                    this.t0 = 4;
                    H1(R.id.e0);
                    uq.t(this.mSmoothLayout, true);
                    uq.t(this.mLayoutSeekBar, false);
                    uq.t(this.i0, false);
                    return;
                case R.id.ef /*{ENCODED_INT: 2131230910}*/:
                    uq.n(this.U, "CutClick", "Shape");
                    em.h("ImageCutoutFragment", "点击Cutout Sticker编辑页底部菜单: Shape");
                    if (this.t0 != 1) {
                        Bundle bundle4 = new Bundle();
                        bundle4.putInt("mCutoutEditMode", this.t0);
                        UpdateCutoutBGEvent updateCutoutBGEvent = this.u0;
                        if (updateCutoutBGEvent != null) {
                            bundle4.putParcelable("mEventArgument", updateCutoutBGEvent);
                        }
                        b.s(this.W, ImageCutoutShapeFragment.class, bundle4, R.id.cw, true, false);
                        return;
                    }
                    return;
                case R.id.ej /*{ENCODED_INT: 2131230914}*/:
                    u1();
                    new ve0(new r(this)).e(nf0.b()).a(yd0.a()).b(new a0(this), new w(this), new x(this), oe0.a());
                    return;
                case R.id.ek /*{ENCODED_INT: 2131230915}*/:
                    u1();
                    new ve0(new u(this)).e(nf0.b()).a(yd0.a()).b(new n(this), new q(this), new p(this), oe0.a());
                    return;
                case R.id.g2 /*{ENCODED_INT: 2131230970}*/:
                    boolean z = !this.v0;
                    this.v0 = z;
                    if (z) {
                        this.mIvSeekbarMode.setImageResource(R.drawable.gd);
                        this.mTvSeekbarMode.setText(T(R.string.bk));
                        this.mTvSeekbarSize.setText(T(R.string.hp));
                    } else {
                        this.mIvSeekbarMode.setImageResource(R.drawable.gy);
                        this.mTvSeekbarMode.setText(T(R.string.hp));
                        this.mTvSeekbarSize.setText(T(R.string.bk));
                    }
                    uq.t(this.mCutoutSeekbarModeLayout, false);
                    this.mSeekBarCutoutSize.j(1, 100);
                    this.mSeekBarCutoutSize.l(this.v0 ? this.o0 : this.p0);
                    return;
                case R.id.ji /*{ENCODED_INT: 2131231098}*/:
                    F1(false);
                    return;
                case R.id.jj /*{ENCODED_INT: 2131231099}*/:
                    F1(true);
                    return;
                case R.id.jl /*{ENCODED_INT: 2131231101}*/:
                    uq.n(this.U, "CutClick", "Q&A");
                    Bundle bundle5 = new Bundle();
                    int i = this.t0;
                    if (i == 3) {
                        bundle5.putInt("GUID_TYPE", 2);
                    } else if (i == 4) {
                        bundle5.putInt("GUID_TYPE", 4);
                    } else if (this.l0 != R.id.dn || this.j0.Q()) {
                        bundle5.putInt("GUID_TYPE", 0);
                    } else {
                        bundle5.putInt("GUID_TYPE", 1);
                    }
                    b.s(this.W, ImageGuidFragment.class, bundle5, R.id.hl, true, true);
                    return;
                case R.id.k0 /*{ENCODED_INT: 2131231116}*/:
                    if (this.t0 != 0) {
                        return;
                    }
                    if (uq.g(this.mCutoutSeekbarModeLayout)) {
                        Animation loadAnimation = AnimationUtils.loadAnimation(C(), R.anim.a9);
                        loadAnimation.setAnimationListener(new a());
                        this.mCutoutSeekbarModeLayout.startAnimation(loadAnimation);
                        return;
                    }
                    uq.t(this.mCutoutSeekbarModeLayout, true);
                    this.mCutoutSeekbarModeLayout.startAnimation(AnimationUtils.loadAnimation(C(), R.anim.a_));
                    return;
                case R.id.qb /*{ENCODED_INT: 2131231350}*/:
                    J1(0);
                    return;
                case R.id.qc /*{ENCODED_INT: 2131231351}*/:
                    J1(1);
                    return;
                case R.id.qd /*{ENCODED_INT: 2131231352}*/:
                    J1(2);
                    return;
                case R.id.qe /*{ENCODED_INT: 2131231353}*/:
                    J1(3);
                    return;
                case R.id.qf /*{ENCODED_INT: 2131231354}*/:
                    J1(4);
                    return;
                case R.id.qg /*{ENCODED_INT: 2131231355}*/:
                    J1(5);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // defpackage.vm
    @j(threadMode = ThreadMode.MAIN)
    public void onEvent(Object obj) {
        boolean z = obj instanceof com.camerasideas.collagemaker.message.f;
        int i = R.color.hq;
        if (z) {
            int a2 = ((com.camerasideas.collagemaker.message.f) obj).a();
            if (a2 == 0) {
                this.g0.setEnabled(false);
                this.h0.setEnabled(false);
            } else if (a2 == 1) {
                this.g0.setEnabled(true);
                this.h0.setEnabled(false);
            } else if (a2 == 2) {
                this.g0.setEnabled(false);
                this.h0.setEnabled(true);
            } else if (a2 == 3) {
                this.g0.setEnabled(true);
                this.h0.setEnabled(true);
            }
            CutoutEditorView cutoutEditorView = this.j0;
            if (cutoutEditorView != null && cutoutEditorView.P()) {
                if (this.j0.Q()) {
                    uq.s(this.mCutoutControlLayout, 0);
                    uq.s(this.mEraserModeLayout, 0);
                    uq.r(this.mCutoutControlLayout, R.color.hq);
                    return;
                }
                uq.s(this.mCutoutControlLayout, 4);
                uq.s(this.mEraserModeLayout, 4);
                uq.r(this.mCutoutControlLayout, R.color.e7);
                this.j0.G0();
            }
        } else if (obj instanceof e) {
            e eVar = (e) obj;
            uq.t(this.mCutoutControlLayout, eVar.b);
            uq.t(this.mEraserModeLayout, eVar.b);
            View view = this.mCutoutControlLayout;
            if (!eVar.b) {
                i = R.color.e7;
            }
            uq.r(view, i);
            uq.t(this.mLayoutSeekBar, eVar.b);
        } else if (obj instanceof UpdateCutoutBGEvent) {
            UpdateCutoutBGEvent updateCutoutBGEvent = (UpdateCutoutBGEvent) obj;
            this.u0 = updateCutoutBGEvent;
            if (updateCutoutBGEvent.b()) {
                ImageCutoutShapeFragment imageCutoutShapeFragment = (ImageCutoutShapeFragment) b.K(this.W, ImageCutoutShapeFragment.class);
                if (imageCutoutShapeFragment != null) {
                    imageCutoutShapeFragment.S1(this.u0);
                }
            } else {
                CutoutEditorView cutoutEditorView2 = this.j0;
                if (cutoutEditorView2 != null) {
                    cutoutEditorView2.n0(this.t0, true);
                }
                if (this.t0 == 3) {
                    this.mSeekBarCutoutSize.j(30, 100);
                    this.mSeekBarCutoutSize.l(this.r0);
                } else {
                    this.mSeekBarCutoutSize.j(1, 100);
                    this.mSeekBarCutoutSize.l(this.v0 ? this.o0 : this.p0);
                }
                uq.t(this.e0, true);
                uq.t(this.f0, false);
            }
            s1();
        } else if (obj instanceof com.camerasideas.collagemaker.message.d) {
            if (this.j0 == null) {
                this.j0 = (CutoutEditorView) this.W.findViewById(R.id.iz);
            }
            if (this.l0 == R.id.d5) {
                this.j0.c0(true);
            }
            I1(this.t0);
            this.j0.w0(null);
            if (this.t0 == 4) {
                J1(this.j0.L() / 2);
            }
        }
    }

    public void p(SeekBarWithTextView seekBarWithTextView) {
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.fragment.imagefragment.h0
    public boolean r1() {
        return !t1();
    }

    public void t(SeekBarWithTextView seekBarWithTextView) {
    }

    public /* synthetic */ void x1(ud0 ud0) {
        CutoutEditorView cutoutEditorView = this.j0;
        if (cutoutEditorView != null) {
            cutoutEditorView.u();
        }
        ud0.c(Boolean.TRUE);
        ud0.a();
    }

    public /* synthetic */ void y1(ud0 ud0) {
        CutoutEditorView cutoutEditorView = this.j0;
        if (cutoutEditorView != null) {
            cutoutEditorView.v();
        }
        ud0.c(Boolean.TRUE);
        ud0.a();
    }

    public /* synthetic */ void z1(int i, String str, Boolean bool) {
        o1();
        Bundle bundle = new Bundle();
        UpdateCutoutBGEvent updateCutoutBGEvent = this.u0;
        if (updateCutoutBGEvent != null) {
            bundle.putParcelable("mEventArgument", updateCutoutBGEvent);
            bundle.putInt("CutoutStickerItemCount", i);
        }
        bundle.putString("CutoutEditMode", str);
        b.s(this.W, ImageCutoutBgFragment.class, bundle, R.id.cw, true, false);
    }
}
