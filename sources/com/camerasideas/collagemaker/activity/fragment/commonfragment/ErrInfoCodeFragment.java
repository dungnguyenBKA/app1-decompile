package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.b;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import butterknife.OnClick;
import com.camerasideas.collagemaker.activity.fragment.utils.FragmentFactory$AbsViewClickWrapper;
import photoeditor.cutout.backgrounderaser.R;

public class ErrInfoCodeFragment extends sm {
    private FragmentFactory$AbsViewClickWrapper i0;
    @BindView
    Button mBtnNo;
    @BindView
    Button mBtnReport;
    @BindView
    TextView mErrDescriptionTv;
    @BindView
    TextView mInfoCodeTv;

    @Override // androidx.fragment.app.Fragment, defpackage.sm
    public void D0(View view, Bundle bundle) {
        this.mErrDescriptionTv.setText(A() != null ? A().getString("error report description") : "");
        this.mErrDescriptionTv.setTypeface(uq.a(this.f0));
        this.mInfoCodeTv.setText(this.h0.getResources().getString(R.string.ck) + " " + String.valueOf(y1()));
        this.mInfoCodeTv.setTypeface(uq.a(this.f0));
        uq.x(this.mBtnNo, this.f0);
        uq.x(this.mBtnReport, this.f0);
        this.mBtnNo.setTypeface(uq.a(this.f0));
        this.mBtnReport.setTypeface(uq.a(this.f0));
        this.i0 = (FragmentFactory$AbsViewClickWrapper) (A() != null ? A().getParcelable("AbsViewClickWrapper") : null);
    }

    @Override // androidx.fragment.app.b
    public void onCancel(DialogInterface dialogInterface) {
        FragmentFactory$AbsViewClickWrapper fragmentFactory$AbsViewClickWrapper = this.i0;
        if (fragmentFactory$AbsViewClickWrapper != null && fragmentFactory$AbsViewClickWrapper.b() != null) {
            this.i0.b().onCancel(dialogInterface);
        }
    }

    @OnClick
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.e5) {
            u1();
            FragmentFactory$AbsViewClickWrapper fragmentFactory$AbsViewClickWrapper = this.i0;
            if (fragmentFactory$AbsViewClickWrapper != null && fragmentFactory$AbsViewClickWrapper.a() != null) {
                this.i0.a().onClick(view);
            }
        } else if (id == R.id.eb) {
            u1();
            AppCompatActivity appCompatActivity = this.h0;
            FragmentFactory$AbsViewClickWrapper fragmentFactory$AbsViewClickWrapper2 = this.i0;
            b.s0(appCompatActivity, l.class);
            Bundle bundle = new Bundle();
            bundle.putString("error report description", this.h0.getResources().getString(R.string.ck) + " " + String.valueOf(y1()));
            bundle.putParcelable("AbsViewClickWrapper", fragmentFactory$AbsViewClickWrapper2);
            ((sm) Fragment.Y(appCompatActivity, l.class.getName(), bundle)).x1(appCompatActivity.getSupportFragmentManager());
        }
    }

    @Override // androidx.fragment.app.b
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        FragmentFactory$AbsViewClickWrapper fragmentFactory$AbsViewClickWrapper = this.i0;
        if (fragmentFactory$AbsViewClickWrapper != null) {
            fragmentFactory$AbsViewClickWrapper.c();
        }
    }

    @Override // defpackage.sm
    public String v1() {
        return "ErrInfoCodeFragment";
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.sm
    public int w1() {
        return R.layout.bf;
    }

    /* access modifiers changed from: protected */
    public int y1() {
        if (A() != null) {
            return A().getInt("error info code");
        }
        return 0;
    }
}
