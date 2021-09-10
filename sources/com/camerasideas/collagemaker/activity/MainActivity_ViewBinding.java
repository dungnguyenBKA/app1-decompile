package com.camerasideas.collagemaker.activity;

import android.view.View;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import butterknife.Unbinder;
import photoeditor.cutout.backgrounderaser.R;

public class MainActivity_ViewBinding implements Unbinder {
    private MainActivity b;
    private View c;
    private View d;
    private View e;

    class a extends p6 {
        final /* synthetic */ MainActivity c;

        a(MainActivity_ViewBinding mainActivity_ViewBinding, MainActivity mainActivity) {
            this.c = mainActivity;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClickHome(view);
        }
    }

    class b extends p6 {
        final /* synthetic */ MainActivity c;

        b(MainActivity_ViewBinding mainActivity_ViewBinding, MainActivity mainActivity) {
            this.c = mainActivity;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClickHome(view);
        }
    }

    class c extends p6 {
        final /* synthetic */ MainActivity c;

        c(MainActivity_ViewBinding mainActivity_ViewBinding, MainActivity mainActivity) {
            this.c = mainActivity;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClickHome(view);
        }
    }

    public MainActivity_ViewBinding(MainActivity mainActivity, View view) {
        this.b = mainActivity;
        mainActivity.mMainLayout = (ConstraintLayout) q6.a(q6.b(view, R.id.kw, "field 'mMainLayout'"), R.id.kw, "field 'mMainLayout'", ConstraintLayout.class);
        mainActivity.mProgressView = q6.b(view, R.id.n4, "field 'mProgressView'");
        mainActivity.mCardAdLayout = (FrameLayout) q6.a(q6.b(view, R.id.c5, "field 'mCardAdLayout'"), R.id.c5, "field 'mCardAdLayout'", FrameLayout.class);
        mainActivity.mRootLayout = q6.b(view, R.id.oj, "field 'mRootLayout'");
        View b2 = q6.b(view, R.id.e9, "field 'mBtnPro' and method 'onClickHome'");
        mainActivity.mBtnPro = b2;
        this.c = b2;
        b2.setOnClickListener(new a(this, mainActivity));
        View b3 = q6.b(view, R.id.ed, "method 'onClickHome'");
        this.d = b3;
        b3.setOnClickListener(new b(this, mainActivity));
        View b4 = q6.b(view, R.id.d4, "method 'onClickHome'");
        this.e = b4;
        b4.setOnClickListener(new c(this, mainActivity));
    }

    @Override // butterknife.Unbinder
    public void a() {
        MainActivity mainActivity = this.b;
        if (mainActivity != null) {
            this.b = null;
            mainActivity.mMainLayout = null;
            mainActivity.mProgressView = null;
            mainActivity.mCardAdLayout = null;
            mainActivity.mRootLayout = null;
            mainActivity.mBtnPro = null;
            this.c.setOnClickListener(null);
            this.c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            this.e.setOnClickListener(null);
            this.e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
