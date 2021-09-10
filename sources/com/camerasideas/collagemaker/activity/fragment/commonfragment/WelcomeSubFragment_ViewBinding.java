package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import photoeditor.cutout.backgrounderaser.R;

public class WelcomeSubFragment_ViewBinding implements Unbinder {
    private WelcomeSubFragment b;
    private View c;
    private View d;

    class a extends p6 {
        final /* synthetic */ WelcomeSubFragment c;

        a(WelcomeSubFragment_ViewBinding welcomeSubFragment_ViewBinding, WelcomeSubFragment welcomeSubFragment) {
            this.c = welcomeSubFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class b extends p6 {
        final /* synthetic */ WelcomeSubFragment c;

        b(WelcomeSubFragment_ViewBinding welcomeSubFragment_ViewBinding, WelcomeSubFragment welcomeSubFragment) {
            this.c = welcomeSubFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    public WelcomeSubFragment_ViewBinding(WelcomeSubFragment welcomeSubFragment, View view) {
        this.b = welcomeSubFragment;
        View b2 = q6.b(view, R.id.ev, "field 'mTvTip' and method 'onClick'");
        welcomeSubFragment.mTvTip = (TextView) q6.a(b2, R.id.ev, "field 'mTvTip'", TextView.class);
        this.c = b2;
        b2.setOnClickListener(new a(this, welcomeSubFragment));
        View b3 = q6.b(view, R.id.dc, "method 'onClick'");
        this.d = b3;
        b3.setOnClickListener(new b(this, welcomeSubFragment));
    }

    @Override // butterknife.Unbinder
    public void a() {
        WelcomeSubFragment welcomeSubFragment = this.b;
        if (welcomeSubFragment != null) {
            this.b = null;
            welcomeSubFragment.mTvTip = null;
            this.c.setOnClickListener(null);
            this.c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
