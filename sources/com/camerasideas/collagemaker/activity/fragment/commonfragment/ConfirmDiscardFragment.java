package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.b;
import butterknife.BindView;
import butterknife.OnClick;
import com.camerasideas.collagemaker.activity.ImageCutoutActivity;
import photoeditor.cutout.backgrounderaser.R;

public class ConfirmDiscardFragment extends tm {
    private boolean X;
    @BindView
    TextView mBtnCancel;
    @BindView
    TextView mBtnConfirm;

    @Override // androidx.fragment.app.Fragment
    public void B0() {
        super.B0();
        AppCompatActivity appCompatActivity = this.W;
        if (appCompatActivity instanceof ImageCutoutActivity) {
            ((ImageCutoutActivity) appCompatActivity).D();
        }
    }

    @Override // androidx.fragment.app.Fragment, defpackage.tm
    public void D0(View view, Bundle bundle) {
        super.D0(view, bundle);
        if (A() != null) {
            this.X = A().getBoolean("DISCARD_DIALOG_FROM_FRAGMENT");
        }
        uq.u(this.mBtnConfirm.getText().toString());
        uq.w(this.mBtnCancel, this.U);
    }

    @Override // defpackage.tm
    public String l1() {
        return "ConfirmDiscardFragment";
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.tm
    public int m1() {
        return R.layout.b8;
    }

    @OnClick
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.df) {
            if (id == R.id.dm) {
                uq.n(this.W, "CutClick", "Discard");
                if (this.X) {
                    b.s0(this.W, ConfirmDiscardFragment.class);
                    am.a().b(new com.camerasideas.collagemaker.message.b());
                    return;
                }
                AppCompatActivity appCompatActivity = this.W;
                new qq(appCompatActivity).a(appCompatActivity, true);
                return;
            } else if (id != R.id.fm) {
                return;
            }
        }
        b.t0(this.W, ConfirmDiscardFragment.class);
    }

    @Override // androidx.fragment.app.Fragment
    public void v0() {
        super.v0();
        AppCompatActivity appCompatActivity = this.W;
        if (appCompatActivity instanceof ImageCutoutActivity) {
            ((ImageCutoutActivity) appCompatActivity).u();
        }
    }
}
