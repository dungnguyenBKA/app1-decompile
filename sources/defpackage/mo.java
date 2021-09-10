package defpackage;

import android.content.Intent;
import com.camerasideas.collagemaker.activity.BaseActivity;
import com.camerasideas.collagemaker.activity.ImageSelectorActivity;
import com.camerasideas.collagemaker.appdata.e;
import com.camerasideas.collagemaker.appdata.g;

/* renamed from: mo  reason: default package */
public class mo extends yn<Object> {
    @Override // defpackage.yn
    public String e() {
        return "ImageCutoutEditPresenter";
    }

    public void n(BaseActivity baseActivity) {
        if (baseActivity.getIntent() == null) {
            em.h("ImageCutoutEditPresenter", "showImageSelectorActivity failed: activity = null || activity.getIntent() = null");
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setClass(baseActivity, ImageSelectorActivity.class);
            intent.setFlags(67108864);
            e.e(4);
            uq.m(baseActivity, g.OPEN);
            baseActivity.startActivity(intent);
            baseActivity.finish();
        } catch (Exception e) {
            e.printStackTrace();
            em.i("ImageCutoutEditPresenter", "showImageSelectorActivity occur exception", e);
        }
    }
}
