package defpackage;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.camerasideas.collagemaker.activity.BaseActivity;
import com.camerasideas.collagemaker.activity.ImageSelectorActivity;
import com.camerasideas.collagemaker.appdata.e;
import com.camerasideas.collagemaker.appdata.g;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Iterator;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: oo  reason: default package */
public class oo extends yn<so> {
    @Override // defpackage.yn
    public String e() {
        return "ImageMainPresenter";
    }

    public /* synthetic */ void n(Activity activity, ud0 ud0) {
        this.a.m();
        ArrayList arrayList = new ArrayList();
        ArrayList<String> stringArrayListExtra = activity.getIntent().getStringArrayListExtra("EXTRA_KEY_LIST_PATHS");
        if (stringArrayListExtra == null) {
            ud0.b(new FileNotFoundException("file not found exception"));
            ud0.a();
            return;
        }
        Iterator<String> it = stringArrayListExtra.iterator();
        while (it.hasNext()) {
            Uri parse = Uri.parse(cm.a(it.next()));
            try {
                activity.grantUriPermission("photoeditor.cutout.backgrounderaser", parse, 1);
            } catch (Exception e) {
                e.printStackTrace();
                parse = cm.c(parse);
            }
            em.h("ImageMainPresenter", "filePath = " + parse);
            arrayList.add(rq.f(parse));
            if (arrayList.size() == 18) {
                break;
            }
        }
        StringBuilder q = ic.q("share path=");
        q.append(arrayList.toString());
        em.h("ImageMainPresenter", q.toString());
        if (arrayList.size() <= 0) {
            em.h("ImageMainPresenter", "file not found exception");
            ud0.b(new FileNotFoundException("file not found exception"));
            ud0.a();
            return;
        }
        ud0.c(arrayList);
        ud0.a();
    }

    public void o(Activity activity, int i, ArrayList arrayList) {
        em.h("TesterLog-Select Media", "从分享入口进入图片编辑页面");
        boolean z = e.a;
        this.a.c();
        m(activity, arrayList, i);
    }

    public void p(Throwable th) {
        mr.d(this.c.getString(R.string.ep));
        this.a.c();
    }

    public int q(BaseActivity baseActivity, boolean z) {
        if (baseActivity.getIntent() == null) {
            em.h("ImageMainPresenter", "processShareImageEdit failed: activity == null || activity.getIntent() == null");
            return 0;
        } else if (!hm.a(this.c)) {
            em.h("ImageMainPresenter", "processShareImageEdit failed: Storage permission has NOT been granted. Requesting permission.");
            return 2;
        } else {
            Intent intent = baseActivity.getIntent();
            if (intent.getBooleanExtra("EXTRA_KEY_FROM_SHARE_ACTIVITY", false)) {
                boolean booleanExtra = intent.getBooleanExtra("EXTRA_KEY_URI_SUPPORTED", false);
                String stringExtra = intent.getStringExtra("EXTRA_KEY_REPORT_MSG");
                String stringExtra2 = intent.getStringExtra("EXTRA_KEY_SUBJECT_MSG");
                if (booleanExtra) {
                    int intExtra = intent.getIntExtra("EXTRA_KEY_MODE", 0);
                    ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("EXTRA_KEY_LIST_PATHS");
                    if (stringArrayListExtra == null || stringArrayListExtra.size() == 0) {
                        em.h("ImageMainPresenter", "fileUris is null or size is 0");
                        return -1;
                    }
                    new ve0(new io(this, baseActivity)).e(nf0.a()).a(yd0.a()).b(new lo(this, baseActivity, intExtra), new ko(this), jo.a, oe0.a());
                    return 1;
                } else if (!TextUtils.isEmpty(stringExtra) && !z) {
                    rq.n(baseActivity, stringExtra, stringExtra2);
                    return -1;
                }
            }
            return 0;
        }
    }

    public void r(BaseActivity baseActivity, int i) {
        if (baseActivity == null || baseActivity.getIntent() == null) {
            em.h("ImageMainPresenter", "showImageSelectorActivity failed: activity = null || activity.getIntent() = null");
            return;
        }
        boolean hasExtra = baseActivity.getIntent().hasExtra("EXTRA_KEY_LIST_PATHS");
        try {
            Intent intent = new Intent();
            intent.setClass(baseActivity, ImageSelectorActivity.class);
            intent.setFlags(67108864);
            if (hasExtra) {
                intent.putParcelableArrayListExtra("EXTRA_KEY_LIST_PATHS", baseActivity.getIntent().getParcelableArrayListExtra("EXTRA_KEY_LIST_PATHS"));
            }
            e.e(i);
            uq.m(baseActivity, g.OPEN);
            baseActivity.startActivity(intent);
            baseActivity.finish();
        } catch (Exception e) {
            e.printStackTrace();
            em.i("ImageMainPresenter", "showImageSelectorActivity occur exception", e);
        }
    }
}
