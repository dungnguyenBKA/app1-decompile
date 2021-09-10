package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.b;
import butterknife.BindView;
import butterknife.OnClick;
import com.camerasideas.collagemaker.appdata.f;
import photoeditor.cutout.backgrounderaser.R;

public class WelcomeSubFragment extends i<ho, eo> implements ho, View.OnClickListener {
    private boolean Y;
    @BindView
    TextView mTvTip;

    @Override // androidx.fragment.app.Fragment, com.camerasideas.collagemaker.activity.fragment.commonfragment.i
    public void D0(View view, Bundle bundle) {
        P p = (P) n1(this);
        this.X = p;
        p.d(this);
        uq.n(this.U, "EnterPro", "ResultGuide");
        if (view == null) {
            b.t0((AppCompatActivity) x(), getClass());
        } else {
            uq.n(C(), "EnterPro", "SavePro");
        }
        boolean z = !Boolean.parseBoolean(cc0.r("enable_remove_continue_basic", "false"));
        this.Y = z;
        if (!z) {
            uq.n(this.U, "Pro_Welcome", "Show without continue");
        }
        this.mTvTip.setText(U(R.string.hw, b.S(this.U, "breastenlarger.bodyeditor.photoeditor.vip.permanent", "$2.99")));
    }

    @Override // defpackage.ho
    public void b() {
    }

    @Override // defpackage.ho
    public void g(String str) {
        TextView textView;
        if (Z() && (textView = this.mTvTip) != null) {
            textView.setText(U(R.string.hw, str));
        }
    }

    @Override // defpackage.ho
    public void i(String str) {
        if (Z()) {
            this.mTvTip.setText(U(R.string.hw, str));
        }
    }

    @Override // defpackage.ho
    public void l(boolean z) {
        uq.n(this.U, "EnterPro", "Success_Success_SavePro");
        if (!this.Y) {
            uq.n(C(), "Pro_Welcome", "Success without continue");
        }
        b.t0(this.W, getClass());
        if (f.a(this.U)) {
            ic.s(this.U, "EnableShowProCelebrate", false);
            b.s(this.W, ProCelebrateFragment.class, null, R.id.hm, true, true);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.fragment.commonfragment.h
    public String l1() {
        return "WelcomeSubFragment";
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.fragment.commonfragment.h
    public int m1() {
        return R.layout.bt;
    }

    /* Return type fixed from 'yn' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [fo] */
    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.fragment.commonfragment.i
    public eo n1(ho hoVar) {
        return new eo();
    }

    @Override // defpackage.ho
    public void o() {
        b.t0(this.W, getClass());
    }

    @Override // androidx.fragment.app.Fragment, com.camerasideas.collagemaker.activity.fragment.commonfragment.i, com.camerasideas.collagemaker.activity.fragment.commonfragment.h
    public void o0() {
        super.o0();
        if (f.f(this.U) >= 4) {
            ic.s(this.U, "EnableShowWelcomeSub", false);
        }
    }

    public boolean o1() {
        b.t0(this.W, getClass());
        return true;
    }

    @OnClick
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.dc) {
            b.s0(this.W, getClass());
        } else if (id == R.id.ev) {
            uq.n(this.U, "EnterPro", "Click_SavePro");
            uq.n(C(), "Pro_Welcome", "Click");
            if (!this.Y) {
                uq.n(C(), "Pro_Welcome", "Click without continue");
            }
            ((eo) this.X).A(this.W, "breastenlarger.bodyeditor.photoeditor.vip.permanent");
        }
    }

    @Override // defpackage.ho
    public void r(String str) {
    }
}
