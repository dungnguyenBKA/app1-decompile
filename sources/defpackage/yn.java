package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;
import com.camerasideas.collagemaker.activity.ImageCutoutActivity;
import com.camerasideas.collagemaker.appdata.MediaFileInfo;
import com.camerasideas.collagemaker.appdata.e;
import com.camerasideas.collagemaker.appdata.g;
import java.util.ArrayList;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: yn  reason: default package */
public abstract class yn<T> {
    protected T a;
    protected Handler b = new Handler(Looper.getMainLooper());
    protected Context c = CollageMakerApplication.b();

    public void d(T t) {
        this.a = t;
    }

    public abstract String e();

    public boolean g(Intent intent, Bundle bundle, Bundle bundle2) {
        String e = e();
        em.h(e, "savedInstanceState=" + bundle2);
        if (bundle2 == null) {
            return true;
        }
        h(bundle2);
        return true;
    }

    public void h(Bundle bundle) {
        em.h(e(), "onRestoreInstanceState");
    }

    public void i(Bundle bundle) {
        em.h(e(), "onSaveInstanceState");
    }

    public boolean j() {
        return true;
    }

    public boolean k() {
        return false;
    }

    public boolean l(Activity activity, MediaFileInfo mediaFileInfo, int i) {
        if (mediaFileInfo == null) {
            em.h("BasePresenter", "showImageEditActivity failed, activity == null || filePath == null");
            return false;
        }
        ArrayList<MediaFileInfo> arrayList = new ArrayList<>();
        arrayList.add(mediaFileInfo);
        return m(activity, arrayList, i);
    }

    public boolean m(Activity activity, ArrayList<MediaFileInfo> arrayList, int i) {
        if (activity == null || arrayList == null) {
            em.h("BasePresenter", "showImageEditActivity failed, activity == null || filePaths == null");
            return false;
        }
        uq.m(activity, g.NEXT);
        e.e(i);
        ArrayList<MediaFileInfo> a2 = rq.a(arrayList);
        if (a2 == null || a2.size() <= 0) {
            mr.d(activity.getString(R.string.ep));
            return false;
        }
        Intent intent = new Intent();
        intent.putParcelableArrayListExtra("EXTRA_KEY_LIST_PATHS", a2);
        intent.putExtra("EXTRA_KEY_FROM_SHARE_ACTIVITY", activity.getIntent().getBooleanExtra("EXTRA_KEY_FROM_SHARE_ACTIVITY", false));
        intent.setClass(activity, ImageCutoutActivity.class);
        activity.startActivity(intent);
        activity.finish();
        return true;
    }
}
