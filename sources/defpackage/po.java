package defpackage;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.camerasideas.collagemaker.activity.adapter.n;
import com.camerasideas.collagemaker.appdata.FileProvider;
import com.camerasideas.collagemaker.appdata.e;
import java.io.File;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: po  reason: default package */
public class po extends yn<to> {
    private boolean d = false;

    @Override // defpackage.yn
    public String e() {
        return "ImageResultPresenter";
    }

    public void n(Activity activity, RecyclerView.b0 b0Var, String str) {
        Uri uri;
        Uri uri2;
        n.a aVar = (n.a) b0Var;
        switch (aVar.d()) {
            case 0:
                em.h("TesterLog-Result Page", "点击分享Other按钮");
                Intent intent = new Intent("android.intent.action.SEND");
                File file = new File(str);
                if (Build.VERSION.SDK_INT > 23) {
                    try {
                        if (cm.m(str)) {
                            uri = Uri.parse(str);
                        } else {
                            uri = FileProvider.b(activity, rq.j() + ".fileprovider", file);
                        }
                        em.h("File Selector", "The selected file shared: " + uri);
                        intent.addFlags(1);
                        intent.setDataAndType(uri, "image/*");
                        intent.putExtra("android.intent.extra.STREAM", uri);
                        if (!rq.l()) {
                            intent.putExtra("EXTRA_KEY_SHARE_SELF", true);
                            intent.putExtra("EXTRA_KEY_IMAGE_FILE_PATH", str);
                        }
                    } catch (IllegalArgumentException e) {
                        StringBuilder q = ic.q("The selected file can't be shared: ");
                        q.append(file.toString());
                        em.i("File Selector", q.toString(), e);
                    }
                } else {
                    intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
                    intent.setType("image/*");
                    intent.setFlags(4194304);
                }
                try {
                    activity.startActivityForResult(intent, 12);
                    e.a = true;
                } catch (Exception e2) {
                    rq.m(e2);
                    e2.printStackTrace();
                }
                uq.n(activity, "Share_To", "Other");
                break;
            case 1:
                em.h("TesterLog-Result Page", "点击Save按钮");
                StringBuilder sb = new StringBuilder();
                sb.append(this.c.getString(R.string.h2));
                sb.append(" ");
                dq.a(activity);
                sb.append(dq.e);
                String sb2 = sb.toString();
                int[] iArr = new int[2];
                TextView c = aVar.c();
                if (c != null) {
                    c.getLocationOnScreen(iArr);
                }
                activity.runOnUiThread(new lq(activity, sb2, 0, iArr[1] - (c2.b(this.c, 25.0f) / 2)));
                uq.n(activity, "Share_To", "Save");
                break;
            case 2:
                em.h("TesterLog-Result Page", "点击分享Instagram按钮");
                uq.n(activity, "Share_To", "Instagram");
                rq.o(activity, "com.instagram.android", str, "image/*");
                break;
            case 3:
                em.h("TesterLog-Result Page", "点击分析WhatsApp按钮");
                uq.n(activity, "Share_To", "WhatsApp");
                rq.o(activity, "com.whatsapp", str, "image/*");
                break;
            case 4:
                em.h("TesterLog-Result Page", "点击分享Facebook按钮");
                uq.n(activity, "Share_To", "Facebook");
                rq.o(activity, "com.facebook.katana", str, "image/*");
                break;
            case 5:
                em.h("TesterLog-Result Page", "点击分享Messenger按钮");
                uq.n(activity, "Share_To", "Messenger");
                rq.o(activity, "com.facebook.orca", str, "image/*");
                break;
            case 6:
                em.h("TesterLog-Result Page", "点击分享Twitter按钮");
                uq.n(activity, "Share_To", "Twitter");
                rq.o(activity, "com.twitter.android", str, "image/*");
                break;
            case 7:
                em.h("TesterLog-Result Page", "点击分享Email按钮");
                uq.n(activity, "Share_To", "Email");
                Intent intent2 = new Intent("android.intent.action.SEND");
                File file2 = new File(str);
                StringBuilder q2 = ic.q("包名");
                q2.append(activity.getApplicationContext().getPackageName());
                em.h("File Selector", q2.toString());
                if (Build.VERSION.SDK_INT > 23) {
                    try {
                        if (cm.m(str)) {
                            uri2 = Uri.parse(str);
                        } else {
                            uri2 = FileProvider.b(activity, rq.j() + ".fileprovider", file2);
                        }
                        intent2.addFlags(1);
                        intent2.setDataAndType(uri2, "image/*");
                        intent2.putExtra("android.intent.extra.STREAM", uri2);
                    } catch (IllegalArgumentException e3) {
                        StringBuilder q3 = ic.q("The selected file can't be shared: ");
                        q3.append(file2.toString());
                        em.i("File Selector", q3.toString(), e3);
                    }
                } else {
                    intent2.putExtra("android.intent.extra.STREAM", Uri.fromFile(file2));
                    intent2.setType("image/*");
                    intent2.setFlags(4194304);
                }
                intent2.putExtra("EXTRA_KEY_SHARE_SELF", true);
                intent2.putExtra("EXTRA_KEY_IMAGE_FILE_PATH", str);
                try {
                    activity.startActivity(intent2);
                    e.a = true;
                    break;
                } catch (ActivityNotFoundException e4) {
                    e4.printStackTrace();
                    break;
                }
        }
        this.a.b();
    }

    public void o(Bundle bundle) {
        this.d = bundle.getBoolean("mIsRunShowFullAd", false);
        StringBuilder q = ic.q("onRestoreBundleState, mIsRunShowFullAd=");
        q.append(this.d);
        em.h("ImageResultPresenter", q.toString());
    }

    public void p(Bundle bundle) {
        bundle.putBoolean("mIsRunShowFullAd", this.d);
        em.h("ImageResultPresenter", "onSaveBundleState, mIsRunShowFullAd=" + this.d);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0041, code lost:
        if (r0 != 4) goto L_0x0044;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean q(boolean r12, android.app.Activity r13) {
        /*
        // Method dump skipped, instructions count: 178
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.po.q(boolean, android.app.Activity):boolean");
    }
}
