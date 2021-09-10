package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import butterknife.BindView;
import photoeditor.cutout.backgrounderaser.R;

public class ErrGeneralFragment extends sm {
    @BindView
    Button mBtnYes;
    @BindView
    TextView mErrDescriptionTv;
    @BindView
    TextView mInfoCodeTv;

    @Override // androidx.fragment.app.Fragment, defpackage.sm
    public void D0(View view, Bundle bundle) {
        this.mErrDescriptionTv.setText(A() != null ? A().getString("error report description") : "");
        this.mErrDescriptionTv.setTypeface(uq.a(this.f0));
        StringBuilder sb = new StringBuilder();
        sb.append(this.h0.getResources().getString(R.string.ck));
        sb.append(" ");
        sb.append(String.valueOf(A() != null ? A().getInt("error info code") : 0));
        this.mInfoCodeTv.setText(sb.toString());
        this.mInfoCodeTv.setTypeface(uq.a(this.f0));
        uq.x(this.mBtnYes, this.f0);
        this.mBtnYes.setTypeface(uq.a(this.f0));
    }

    @Override // defpackage.sm
    public String v1() {
        return "ErrGeneralFragment";
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.sm
    public int w1() {
        return R.layout.bg;
    }
}
