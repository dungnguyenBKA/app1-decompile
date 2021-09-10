package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import butterknife.Unbinder;
import photoeditor.cutout.backgrounderaser.R;

public class CustomRatioFragment_ViewBinding implements Unbinder {
    private CustomRatioFragment b;
    private View c;
    private View d;

    class a extends p6 {
        final /* synthetic */ CustomRatioFragment c;

        a(CustomRatioFragment_ViewBinding customRatioFragment_ViewBinding, CustomRatioFragment customRatioFragment) {
            this.c = customRatioFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class b extends p6 {
        final /* synthetic */ CustomRatioFragment c;

        b(CustomRatioFragment_ViewBinding customRatioFragment_ViewBinding, CustomRatioFragment customRatioFragment) {
            this.c = customRatioFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    public CustomRatioFragment_ViewBinding(CustomRatioFragment customRatioFragment, View view) {
        this.b = customRatioFragment;
        customRatioFragment.mRatioX = (EditText) q6.a(q6.b(view, R.id.nu, "field 'mRatioX'"), R.id.nu, "field 'mRatioX'", EditText.class);
        customRatioFragment.mRatioY = (EditText) q6.a(q6.b(view, R.id.nv, "field 'mRatioY'"), R.id.nv, "field 'mRatioY'", EditText.class);
        customRatioFragment.mErrorDesc = (TextView) q6.a(q6.b(view, R.id.gx, "field 'mErrorDesc'"), R.id.gx, "field 'mErrorDesc'", TextView.class);
        View b2 = q6.b(view, R.id.fw, "field 'mBtnSubmit' and method 'onClick'");
        customRatioFragment.mBtnSubmit = (TextView) q6.a(b2, R.id.fw, "field 'mBtnSubmit'", TextView.class);
        this.c = b2;
        b2.setOnClickListener(new a(this, customRatioFragment));
        View b3 = q6.b(view, R.id.fv, "method 'onClick'");
        this.d = b3;
        b3.setOnClickListener(new b(this, customRatioFragment));
    }

    @Override // butterknife.Unbinder
    public void a() {
        CustomRatioFragment customRatioFragment = this.b;
        if (customRatioFragment != null) {
            this.b = null;
            customRatioFragment.mRatioX = null;
            customRatioFragment.mRatioY = null;
            customRatioFragment.mErrorDesc = null;
            customRatioFragment.mBtnSubmit = null;
            this.c.setOnClickListener(null);
            this.c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
