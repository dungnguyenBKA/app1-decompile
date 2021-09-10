package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.text.Layout;
import android.view.View;
import android.widget.ImageView;
import androidx.core.app.b;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import butterknife.OnClick;
import com.camerasideas.collagemaker.activity.widget.SeekBarWithTextView;
import com.camerasideas.collagemaker.activity.widget.StyleEditText;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class TextAlignPanel extends um implements SeekBarWithTextView.a {
    private List<ImageView> Y = new ArrayList();
    private StyleEditText Z;
    @BindView
    ImageView mBtnAlignLeft;
    @BindView
    ImageView mBtnAlignMiddle;
    @BindView
    ImageView mBtnAlignRight;
    @BindView
    ImageView mBtnTextBold;
    @BindView
    ImageView mBtnTextItalic;
    @BindView
    ImageView mBtnTextUnderline;
    @BindView
    ImageView mImageLetterSpacing;
    @BindView
    SeekBarWithTextView mSeekBarLetterSpacing;
    @BindView
    SeekBarWithTextView mSeekBarLineSpacing;

    private void o1(View view) {
        for (ImageView imageView : this.Y) {
            imageView.setColorFilter(Color.parseColor(view.getId() == imageView.getId() ? "#333333" : "#999999"));
        }
    }

    @Override // defpackage.vm, androidx.fragment.app.Fragment, defpackage.tm
    public void D0(View view, Bundle bundle) {
        super.D0(view, bundle);
        Fragment M = M();
        if (M instanceof TextFontStylePanel) {
            StyleEditText u1 = ((TextFontStylePanel) M).u1();
            this.Z = u1;
            if (u1 == null || u1.b() == null) {
                b.t0(this.W, TextColorPanel.class);
                return;
            }
        }
        this.Y.addAll(Arrays.asList(this.mBtnAlignLeft, this.mBtnAlignMiddle, this.mBtnAlignRight));
        this.mSeekBarLetterSpacing.k(this);
        this.mSeekBarLineSpacing.k(this);
        if (this.Z.b().e() == Layout.Alignment.ALIGN_NORMAL) {
            onClick(this.mBtnAlignLeft);
        } else if (this.Z.b().e() == Layout.Alignment.ALIGN_CENTER) {
            onClick(this.mBtnAlignMiddle);
        } else if (this.Z.b().e() == Layout.Alignment.ALIGN_OPPOSITE) {
            onClick(this.mBtnAlignRight);
        }
        this.mBtnTextBold.setSelected(this.Z.b().B());
        this.mBtnTextItalic.setSelected(this.Z.b().C());
        this.mBtnTextUnderline.setSelected(this.Z.b().D());
        this.mSeekBarLetterSpacing.l(this.Z.b().n());
        this.mSeekBarLineSpacing.l(this.Z.b().p());
        if (Build.VERSION.SDK_INT < 21) {
            this.mImageLetterSpacing.setAlpha(0.4f);
            this.mSeekBarLetterSpacing.i(false);
        }
    }

    @Override // com.camerasideas.collagemaker.activity.widget.SeekBarWithTextView.a
    public void d(SeekBarWithTextView seekBarWithTextView, int i, boolean z) {
        if (!z) {
            return;
        }
        if (seekBarWithTextView.getId() == R.id.pb) {
            this.Z.s(i);
        } else if (seekBarWithTextView.getId() == R.id.pe) {
            this.Z.t(i);
        }
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.tm
    public int m1() {
        return R.layout.bn;
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.vm
    public yn n1() {
        return new xn();
    }

    @OnClick
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.d7 /*{ENCODED_INT: 2131230864}*/:
                this.Z.A(Layout.Alignment.ALIGN_NORMAL);
                o1(this.mBtnAlignLeft);
                return;
            case R.id.d8 /*{ENCODED_INT: 2131230865}*/:
                this.Z.A(Layout.Alignment.ALIGN_CENTER);
                o1(this.mBtnAlignMiddle);
                return;
            case R.id.d9 /*{ENCODED_INT: 2131230866}*/:
                this.Z.A(Layout.Alignment.ALIGN_OPPOSITE);
                o1(this.mBtnAlignRight);
                return;
            case R.id.em /*{ENCODED_INT: 2131230917}*/:
                ImageView imageView = this.mBtnTextBold;
                imageView.setSelected(!imageView.isSelected());
                this.Z.C(this.mBtnTextBold.isSelected());
                return;
            case R.id.ep /*{ENCODED_INT: 2131230920}*/:
                ImageView imageView2 = this.mBtnTextItalic;
                imageView2.setSelected(!imageView2.isSelected());
                this.Z.F(this.mBtnTextItalic.isSelected());
                return;
            case R.id.es /*{ENCODED_INT: 2131230923}*/:
                ImageView imageView3 = this.mBtnTextUnderline;
                imageView3.setSelected(!imageView3.isSelected());
                this.Z.H(this.mBtnTextUnderline.isSelected());
                return;
            default:
                return;
        }
    }

    @Override // com.camerasideas.collagemaker.activity.widget.SeekBarWithTextView.a
    public void p(SeekBarWithTextView seekBarWithTextView) {
    }

    @Override // com.camerasideas.collagemaker.activity.widget.SeekBarWithTextView.a
    public void t(SeekBarWithTextView seekBarWithTextView) {
    }
}
