package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.app.b;
import butterknife.BindView;
import butterknife.OnClick;
import com.camerasideas.collagemaker.appdata.f;
import photoeditor.cutout.backgrounderaser.R;

public class SubscribeProFragment extends i<ho, eo> implements ho {
    private String Y;
    private long Z;
    @BindView
    AppCompatImageView mBtnBack;
    @BindView
    View mProLayout;
    @BindView
    TextView mTvTip;

    @Override // androidx.fragment.app.Fragment, com.camerasideas.collagemaker.activity.fragment.commonfragment.i
    public void D0(View view, Bundle bundle) {
        P p = (P) n1(this);
        this.X = p;
        p.d(this);
        if (A() != null) {
            this.Y = A().getString("PRO_FROM");
        }
        this.mProLayout.setLayerType(1, null);
        Context C = C();
        StringBuilder q = ic.q("PV_");
        q.append(this.Y);
        uq.n(C, "EnterPro", q.toString());
        this.Z = SystemClock.elapsedRealtime();
        Context context = this.U;
        b.W(context).edit().putInt("ProOpenCount", b.W(context).getInt("ProOpenCount", 0) + 1).apply();
        this.mTvTip.setText(U(R.string.hw, b.S(this.U, "breastenlarger.bodyeditor.photoeditor.vip.permanent", "$2.99")));
        if (f.c(this.U) > 0) {
            uq.q(this.mBtnBack, f.c(this.U));
        }
    }

    @Override // defpackage.ho
    public void b() {
        em.h("SubscribeFragment", "Successful member purchase, refresh target ui");
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
    }

    @Override // defpackage.ho
    public void l(boolean z) {
        Context context = this.U;
        StringBuilder q = ic.q("Success_");
        q.append(this.Y);
        uq.n(context, "EnterPro", q.toString());
        o();
        if (f.a(this.U)) {
            ic.s(this.U, "EnableShowProCelebrate", false);
            b.s(this.W, ProCelebrateFragment.class, null, R.id.hn, true, true);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.fragment.commonfragment.h
    public String l1() {
        return "SubscribeFragment";
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.fragment.commonfragment.h
    public int m1() {
        return R.layout.bm;
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
        b.s0((AppCompatActivity) x(), getClass());
    }

    @Override // androidx.fragment.app.Fragment, com.camerasideas.collagemaker.activity.fragment.commonfragment.i, com.camerasideas.collagemaker.activity.fragment.commonfragment.h
    public void o0() {
        super.o0();
        Context context = this.U;
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.Z;
        if (elapsedRealtime > b.W(context).getLong("ProStayTime", 0)) {
            b.W(context).edit().putLong("ProStayTime", elapsedRealtime).apply();
        }
    }

    @OnClick
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.dc) {
            o();
        } else if (id == R.id.ev) {
            Context context = this.U;
            StringBuilder q = ic.q("Click_");
            q.append(this.Y);
            uq.n(context, "EnterPro", q.toString());
            ((eo) this.X).A(this.W, "breastenlarger.bodyeditor.photoeditor.vip.permanent");
        } else if (id == R.id.o7) {
            ((eo) this.X).z();
        }
    }

    @Override // defpackage.ho
    public void r(String str) {
    }
}
