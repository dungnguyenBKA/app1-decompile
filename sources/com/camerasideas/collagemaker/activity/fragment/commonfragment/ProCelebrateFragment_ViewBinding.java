package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.view.View;
import androidx.core.app.b;
import butterknife.Unbinder;
import photoeditor.cutout.backgrounderaser.R;

public class ProCelebrateFragment_ViewBinding implements Unbinder {
    private ProCelebrateFragment b;
    private View c;

    class a extends p6 {
        final /* synthetic */ ProCelebrateFragment c;

        a(ProCelebrateFragment_ViewBinding proCelebrateFragment_ViewBinding, ProCelebrateFragment proCelebrateFragment) {
            this.c = proCelebrateFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            b.t0(this.c.W, ProCelebrateFragment.class);
        }
    }

    public ProCelebrateFragment_ViewBinding(ProCelebrateFragment proCelebrateFragment, View view) {
        this.b = proCelebrateFragment;
        View b2 = q6.b(view, R.id.e6, "method 'onClick'");
        this.c = b2;
        b2.setOnClickListener(new a(this, proCelebrateFragment));
    }

    @Override // butterknife.Unbinder
    public void a() {
        if (this.b != null) {
            this.b = null;
            this.c.setOnClickListener(null);
            this.c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
