package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import butterknife.Unbinder;
import cn.dreamtobe.kpswitch.widget.KPSwitchFSPanelFrameLayout;
import com.camerasideas.collagemaker.activity.widget.StyleEditText;
import com.camerasideas.collagemaker.activity.widget.VerticalSeekBar;
import photoeditor.cutout.backgrounderaser.R;

public class ImageTextFragment_ViewBinding implements Unbinder {
    private ImageTextFragment b;
    private View c;
    private View d;
    private View e;
    private View f;
    private View g;
    private View h;

    class a extends p6 {
        final /* synthetic */ ImageTextFragment c;

        a(ImageTextFragment_ViewBinding imageTextFragment_ViewBinding, ImageTextFragment imageTextFragment) {
            this.c = imageTextFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class b extends p6 {
        final /* synthetic */ ImageTextFragment c;

        b(ImageTextFragment_ViewBinding imageTextFragment_ViewBinding, ImageTextFragment imageTextFragment) {
            this.c = imageTextFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class c extends p6 {
        final /* synthetic */ ImageTextFragment c;

        c(ImageTextFragment_ViewBinding imageTextFragment_ViewBinding, ImageTextFragment imageTextFragment) {
            this.c = imageTextFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class d extends p6 {
        final /* synthetic */ ImageTextFragment c;

        d(ImageTextFragment_ViewBinding imageTextFragment_ViewBinding, ImageTextFragment imageTextFragment) {
            this.c = imageTextFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class e extends p6 {
        final /* synthetic */ ImageTextFragment c;

        e(ImageTextFragment_ViewBinding imageTextFragment_ViewBinding, ImageTextFragment imageTextFragment) {
            this.c = imageTextFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class f extends p6 {
        final /* synthetic */ ImageTextFragment c;

        f(ImageTextFragment_ViewBinding imageTextFragment_ViewBinding, ImageTextFragment imageTextFragment) {
            this.c = imageTextFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    public ImageTextFragment_ViewBinding(ImageTextFragment imageTextFragment, View view) {
        this.b = imageTextFragment;
        View b2 = q6.b(view, R.id.r2, "field 'mEditText' and method 'onClick'");
        imageTextFragment.mEditText = (StyleEditText) q6.a(b2, R.id.r2, "field 'mEditText'", StyleEditText.class);
        this.c = b2;
        b2.setOnClickListener(new a(this, imageTextFragment));
        imageTextFragment.mTextSizeView = (TextView) q6.a(q6.b(view, R.id.n_, "field 'mTextSizeView'"), R.id.n_, "field 'mTextSizeView'", TextView.class);
        imageTextFragment.mBottomChildLayout = (KPSwitchFSPanelFrameLayout) q6.a(q6.b(view, R.id.cu, "field 'mBottomChildLayout'"), R.id.cu, "field 'mBottomChildLayout'", KPSwitchFSPanelFrameLayout.class);
        View b3 = q6.b(view, R.id.db, "field 'mBtnApply' and method 'onClick'");
        imageTextFragment.mBtnApply = (AppCompatImageView) q6.a(b3, R.id.db, "field 'mBtnApply'", AppCompatImageView.class);
        this.d = b3;
        b3.setOnClickListener(new b(this, imageTextFragment));
        View b4 = q6.b(view, R.id.eq, "field 'mBtnKeyboard' and method 'onClick'");
        imageTextFragment.mBtnKeyboard = (FrameLayout) q6.a(b4, R.id.eq, "field 'mBtnKeyboard'", FrameLayout.class);
        this.e = b4;
        b4.setOnClickListener(new c(this, imageTextFragment));
        View b5 = q6.b(view, R.id.eo, "field 'mBtnTextFont' and method 'onClick'");
        imageTextFragment.mBtnTextFont = (FrameLayout) q6.a(b5, R.id.eo, "field 'mBtnTextFont'", FrameLayout.class);
        this.f = b5;
        b5.setOnClickListener(new d(this, imageTextFragment));
        View b6 = q6.b(view, R.id.er, "field 'mBtnTextStyle' and method 'onClick'");
        imageTextFragment.mBtnTextStyle = (FrameLayout) q6.a(b6, R.id.er, "field 'mBtnTextStyle'", FrameLayout.class);
        this.g = b6;
        b6.setOnClickListener(new e(this, imageTextFragment));
        imageTextFragment.mTextSizeBar = (VerticalSeekBar) q6.a(q6.b(view, R.id.s4, "field 'mTextSizeBar'"), R.id.s4, "field 'mTextSizeBar'", VerticalSeekBar.class);
        View b7 = q6.b(view, R.id.dg, "field 'mBtnCancel' and method 'onClick'");
        imageTextFragment.mBtnCancel = b7;
        this.h = b7;
        b7.setOnClickListener(new f(this, imageTextFragment));
    }

    @Override // butterknife.Unbinder
    public void a() {
        ImageTextFragment imageTextFragment = this.b;
        if (imageTextFragment != null) {
            this.b = null;
            imageTextFragment.mEditText = null;
            imageTextFragment.mTextSizeView = null;
            imageTextFragment.mBottomChildLayout = null;
            imageTextFragment.mBtnApply = null;
            imageTextFragment.mBtnKeyboard = null;
            imageTextFragment.mBtnTextFont = null;
            imageTextFragment.mBtnTextStyle = null;
            imageTextFragment.mTextSizeBar = null;
            imageTextFragment.mBtnCancel = null;
            this.c.setOnClickListener(null);
            this.c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            this.e.setOnClickListener(null);
            this.e = null;
            this.f.setOnClickListener(null);
            this.f = null;
            this.g.setOnClickListener(null);
            this.g = null;
            this.h.setOnClickListener(null);
            this.h = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
