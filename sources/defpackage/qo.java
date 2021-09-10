package defpackage;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import androidx.recyclerview.widget.k;
import com.camerasideas.collagemaker.activity.BaseActivity;
import com.camerasideas.collagemaker.activity.adapter.l;
import com.camerasideas.collagemaker.appdata.MediaFileInfo;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: qo  reason: default package */
public class qo extends yn<uo> {

    /* access modifiers changed from: private */
    /* renamed from: qo$a */
    public class a extends k.b {
        private List<MediaFileInfo> a;
        private List<MediaFileInfo> b;

        public a(qo qoVar, List<MediaFileInfo> list, List<MediaFileInfo> list2) {
            this.a = list;
            this.b = list2;
        }

        @Override // androidx.recyclerview.widget.k.b
        public boolean a(int i, int i2) {
            return this.a.get(i).equals(this.b.get(i2));
        }

        @Override // androidx.recyclerview.widget.k.b
        public boolean b(int i, int i2) {
            return this.a.get(i).equals(this.b.get(i2));
        }

        @Override // androidx.recyclerview.widget.k.b
        public int c() {
            List<MediaFileInfo> list = this.b;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.k.b
        public int d() {
            List<MediaFileInfo> list = this.a;
            if (list != null) {
                return list.size();
            }
            return 0;
        }
    }

    private void s(Activity activity, MediaFileInfo mediaFileInfo) {
        if (mediaFileInfo != null) {
            Intent intent = new Intent();
            intent.putExtra("EXTRA_KEY_FILE_PATH", mediaFileInfo);
            activity.setResult(-1, intent);
            en.a(null).h(null);
            activity.finish();
            activity.overridePendingTransition(0, R.anim.a9);
            return;
        }
        mr.d(activity.getString(R.string.ep));
    }

    @Override // defpackage.yn
    public String e() {
        return "ImageSelectorPresenter";
    }

    public void n(BaseActivity baseActivity, int i, boolean z) {
        uq.n(this.c, "Click_Selector", "openGooglePhotos");
        if (!c2.r(this.c, "com.google.android.apps.photos")) {
            em.h("ImageSelectorPresenter", "Google Photos not installed!");
            return;
        }
        if (i >= 18) {
            mr.d(baseActivity.getResources().getString(R.string.ax, String.valueOf(18)));
            return;
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.PICK");
        if (!z || 18 - i <= 1) {
            intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", false);
        } else {
            intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        }
        intent.setType("image/*");
        List<ResolveInfo> queryIntentActivities = this.c.getPackageManager().queryIntentActivities(intent, 0);
        for (int i2 = 0; i2 < queryIntentActivities.size(); i2++) {
            if (queryIntentActivities.get(i2) != null) {
                String str = queryIntentActivities.get(i2).activityInfo.packageName;
                if ("com.google.android.apps.photos".equals(str)) {
                    intent.setComponent(new ComponentName(str, queryIntentActivities.get(i2).activityInfo.name));
                    baseActivity.startActivityForResult(intent, 11);
                    return;
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:90:0x01d5 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x01dd  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x01e0  */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x01e8  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean o(com.camerasideas.collagemaker.activity.BaseActivity r18, int r19, int r20, android.content.Intent r21, android.net.Uri r22, boolean r23) {
        /*
        // Method dump skipped, instructions count: 509
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qo.o(com.camerasideas.collagemaker.activity.BaseActivity, int, int, android.content.Intent, android.net.Uri, boolean):boolean");
    }

    public boolean p(l lVar, List<MediaFileInfo> list, int i, boolean z) {
        int i2 = 0;
        if (lVar == null) {
            em.h("ImageSelectorPresenter", "processCalculateDiff failed: adapter == null || newItems == null");
            return false;
        }
        List<MediaFileInfo> z2 = lVar.z();
        int size = (z2 != null ? z2.size() : 0) - (list != null ? list.size() : 0);
        if (list != null && size > 0) {
            lVar.A(list);
            lVar.o(i);
            lVar.k(i, size);
        }
        if (list != null && size < 0) {
            int size2 = list.size() - 1;
            lVar.A(list);
            lVar.i(size2);
            lVar.k(size2, Math.abs(size));
        }
        if (list == null) {
            k.c a2 = k.a(new a(this, lVar.z(), list), true);
            lVar.A(list);
            a2.a(lVar);
        }
        if (z && list != null && list.size() > 0) {
            this.a.d(list.size() - 1);
        }
        this.a.k(list != null && list.size() > 0);
        T t = this.a;
        if (list != null && list.size() > 0) {
            i2 = list.size();
        }
        t.a(i2);
        return true;
    }

    public boolean q(l lVar, List<MediaFileInfo> list, MediaFileInfo mediaFileInfo) {
        int i = 0;
        if (lVar == null) {
            em.h("ImageSelectorPresenter", "processDeleteEndDiff failed: adapter == null");
            return false;
        }
        List<MediaFileInfo> z = lVar.z();
        int size = (z != null ? z.size() : 0) - (list != null ? list.size() : 0);
        if (!(list == null || z == null || size <= 0)) {
            int lastIndexOf = z.lastIndexOf(mediaFileInfo);
            lVar.A(list);
            if (lastIndexOf >= 0) {
                lVar.o(lastIndexOf);
                lVar.k(lastIndexOf, size);
            }
        }
        if (list != null && list.size() > 0) {
            this.a.d(list.size() - 1);
        }
        this.a.k(list != null && list.size() > 0);
        T t = this.a;
        if (list != null && list.size() > 0) {
            i = list.size();
        }
        t.a(i);
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x007c  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0082  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00a3  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00c4  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00ca  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00f5  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<com.camerasideas.collagemaker.appdata.MediaFileInfo> r(com.camerasideas.collagemaker.activity.BaseActivity r5, com.camerasideas.collagemaker.activity.gallery.ui.GalleryMultiSelectGroupView r6, android.os.Bundle r7) {
        /*
        // Method dump skipped, instructions count: 278
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qo.r(com.camerasideas.collagemaker.activity.BaseActivity, com.camerasideas.collagemaker.activity.gallery.ui.GalleryMultiSelectGroupView, android.os.Bundle):java.util.List");
    }
}
