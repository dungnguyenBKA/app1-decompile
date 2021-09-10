package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import com.airbnb.lottie.LottieAnimationView;
import photoeditor.cutout.backgrounderaser.R;

public class ImageGuidFragment_ViewBinding implements Unbinder {
    private ImageGuidFragment b;

    public ImageGuidFragment_ViewBinding(ImageGuidFragment imageGuidFragment, View view) {
        this.b = imageGuidFragment;
        imageGuidFragment.mBtnClose = (ImageView) q6.a(q6.b(view, R.id.f8if, "field 'mBtnClose'"), R.id.f8if, "field 'mBtnClose'", ImageView.class);
        imageGuidFragment.mLottieView = (LottieAnimationView) q6.a(q6.b(view, R.id.kt, "field 'mLottieView'"), R.id.kt, "field 'mLottieView'", LottieAnimationView.class);
        imageGuidFragment.mDesc = (TextView) q6.a(q6.b(view, R.id.i4, "field 'mDesc'"), R.id.i4, "field 'mDesc'", TextView.class);
        imageGuidFragment.mTitle = (TextView) q6.a(q6.b(view, R.id.i6, "field 'mTitle'"), R.id.i6, "field 'mTitle'", TextView.class);
        imageGuidFragment.mGuidLayout2 = q6.b(view, R.id.kv, "field 'mGuidLayout2'");
    }

    @Override // butterknife.Unbinder
    public void a() {
        ImageGuidFragment imageGuidFragment = this.b;
        if (imageGuidFragment != null) {
            this.b = null;
            imageGuidFragment.mBtnClose = null;
            imageGuidFragment.mLottieView = null;
            imageGuidFragment.mDesc = null;
            imageGuidFragment.mTitle = null;
            imageGuidFragment.mGuidLayout2 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
