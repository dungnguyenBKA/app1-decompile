package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.b;
import butterknife.BindView;
import com.airbnb.lottie.LottieAnimationView;
import com.camerasideas.collagemaker.appdata.f;
import photoeditor.cutout.backgrounderaser.R;

public class ImageGuidFragment extends tm {
    private int X = 0;
    @BindView
    ImageView mBtnClose;
    @BindView
    TextView mDesc;
    @BindView
    View mGuidLayout2;
    @BindView
    LottieAnimationView mLottieView;
    @BindView
    TextView mTitle;

    @Override // androidx.fragment.app.Fragment
    public void d0(Bundle bundle) {
        super.d0(bundle);
        View V = V();
        int c = f.c(x());
        if (V != null && c > 0) {
            V.setPadding(V.getPaddingLeft(), V.getPaddingTop() + c, V.getPaddingRight(), V.getPaddingBottom());
            V.requestLayout();
        }
        if (A() != null) {
            this.X = A().getInt("GUID_TYPE", 0);
        }
        uq.t(this.mGuidLayout2, false);
        int i = this.X;
        if (i == 2) {
            this.mLottieView.x("lottie/magic/images");
            this.mLottieView.u("lottie/magic/data.json");
            this.mTitle.setText(R.string.i5);
            this.mDesc.setText(R.string.d8);
        } else if (i == 4) {
            this.mLottieView.x("lottie/smooth/images");
            this.mLottieView.u("lottie/smooth/data.json");
            this.mTitle.setText(R.string.i7);
            this.mDesc.setText(R.string.hq);
        } else if (i == 1) {
            this.mLottieView.x("lottie/cutout/images");
            this.mLottieView.u("lottie/cutout/data.json");
            this.mTitle.setText(R.string.i2);
            this.mDesc.setText(R.string.bj);
        } else {
            this.mLottieView.x("lottie/eraser/images");
            this.mLottieView.u("lottie/eraser/data.json");
            this.mTitle.setText(R.string.bs);
            this.mDesc.setText(T(R.string.bt));
            uq.t(this.mGuidLayout2, true);
        }
        this.mLottieView.s();
        this.mBtnClose.setOnClickListener(new e0(this));
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.tm
    public int m1() {
        return R.layout.bi;
    }

    public /* synthetic */ void n1(View view) {
        b.t0(this.W, ImageGuidFragment.class);
    }

    @Override // androidx.fragment.app.Fragment, defpackage.tm
    public void o0() {
        super.o0();
        int i = this.X;
        if (i == 2) {
            ic.s(this.U, "enableShowMagicGuide", false);
        } else if (i == 4) {
            ic.s(this.U, "enableShowSmoothGuide", false);
        } else if (i == 1) {
            ic.s(this.U, "enableShowCutoutGuide", false);
        } else {
            ic.s(this.U, "enableShowEraserGuide", false);
        }
    }
}
