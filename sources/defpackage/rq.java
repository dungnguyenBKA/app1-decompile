package defpackage;

import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;
import com.camerasideas.collagemaker.appdata.FileProvider;
import com.camerasideas.collagemaker.appdata.MediaFileInfo;
import com.camerasideas.collagemaker.appdata.e;
import com.camerasideas.collagemaker.appdata.f;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: rq  reason: default package */
public class rq {

    /* renamed from: rq$a */
    class a implements View.OnClickListener {
        final /* synthetic */ Dialog b;
        final /* synthetic */ Activity c;
        final /* synthetic */ String d;

        a(Dialog dialog, Activity activity, String str) {
            this.b = dialog;
            this.c = activity;
            this.d = str;
        }

        public void onClick(View view) {
            this.b.dismiss();
            Activity activity = this.c;
            String str = this.d;
            String i = ic.i("market://details?id=", str);
            String i2 = ic.i("https://play.google.com/store/apps/details?id=", str);
            if (c2.r(activity, "com.android.vending")) {
                try {
                    Uri parse = Uri.parse(i);
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setFlags(268435456);
                    intent.setClassName("com.android.vending", "com.google.android.finsky.activities.MainActivity");
                    intent.setData(parse);
                    activity.startActivity(intent);
                } catch (Exception e) {
                    e.printStackTrace();
                    em.h("Utils", "download app1");
                    try {
                        Uri parse2 = Uri.parse(i2);
                        Intent intent2 = new Intent("android.intent.action.VIEW");
                        intent2.setPackage("com.android.vending");
                        intent2.setFlags(268435456);
                        intent2.setData(parse2);
                        activity.startActivity(intent2);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        em.h("Utils", "download app2");
                        try {
                            Uri parse3 = Uri.parse(i2);
                            Intent intent3 = new Intent("android.intent.action.VIEW");
                            intent3.setFlags(268435456);
                            intent3.setData(parse3);
                            activity.startActivity(intent3);
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            em.h("Utils", "download app3");
                        }
                    }
                }
            } else {
                try {
                    Uri parse4 = Uri.parse(i2);
                    Intent intent4 = new Intent("android.intent.action.VIEW");
                    intent4.setFlags(268435456);
                    intent4.setData(parse4);
                    activity.startActivity(intent4);
                } catch (Exception e4) {
                    e4.printStackTrace();
                    em.h("Utils", "download app4");
                }
            }
        }
    }

    /* renamed from: rq$b */
    class b implements View.OnClickListener {
        final /* synthetic */ Context b;
        final /* synthetic */ Intent c;
        final /* synthetic */ Dialog d;

        b(Context context, Intent intent, Dialog dialog) {
            this.b = context;
            this.c = intent;
            this.d = dialog;
        }

        public void onClick(View view) {
            try {
                this.b.startActivity(this.c);
            } catch (ActivityNotFoundException e) {
                e.printStackTrace();
            }
            this.d.dismiss();
        }
    }

    /* renamed from: rq$c */
    class c implements View.OnClickListener {
        final /* synthetic */ Dialog b;

        c(Dialog dialog) {
            this.b = dialog;
        }

        public void onClick(View view) {
            this.b.dismiss();
        }
    }

    public static ArrayList<MediaFileInfo> a(ArrayList<MediaFileInfo> arrayList) {
        if (arrayList == null) {
            return null;
        }
        Iterator<MediaFileInfo> it = arrayList.iterator();
        while (it.hasNext()) {
            if (!bm.e(it.next().d())) {
                it.remove();
            }
        }
        StringBuilder q = ic.q("checkImagePaths size:");
        q.append(arrayList.size());
        em.h("AppUtils", q.toString());
        return arrayList;
    }

    public static boolean b(Activity activity) {
        if (l()) {
            return true;
        }
        if (activity != null && hm.a(activity)) {
            dq.a(activity);
            String str = dq.e;
            try {
                File file = new File(str);
                if (!file.exists() && !file.mkdirs()) {
                    p(activity, 2);
                    return false;
                } else if (bm.f(str)) {
                    return true;
                } else {
                    p(activity, 4);
                    return false;
                }
            } catch (Exception e) {
                p(activity, 3);
                e.printStackTrace();
            }
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:101:0x0165, code lost:
        if (r6 != null) goto L_0x0167;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:103:?, code lost:
        r6.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:104:0x016b, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:105:0x016c, code lost:
        r6.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x0127, code lost:
        if (r6 != null) goto L_0x0167;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x0146, code lost:
        if (r6 != null) goto L_0x0167;
     */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x0177 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:110:0x0178 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x0115 A[SYNTHETIC, Splitter:B:62:0x0115] */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x011f A[SYNTHETIC, Splitter:B:67:0x011f] */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0134 A[SYNTHETIC, Splitter:B:77:0x0134] */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x013e A[SYNTHETIC, Splitter:B:82:0x013e] */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x0153 A[SYNTHETIC, Splitter:B:92:0x0153] */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x015d A[SYNTHETIC, Splitter:B:97:0x015d] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String c(android.content.Context r6, android.net.Uri r7) {
        /*
        // Method dump skipped, instructions count: 411
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rq.c(android.content.Context, android.net.Uri):java.lang.String");
    }

    public static File d(Activity activity, String str) {
        dq.a(activity);
        String str2 = dq.e;
        b(activity);
        File createTempFile = File.createTempFile(".Temp_" + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()) + "_", str, new File(str2));
        StringBuilder q = ic.q("createCameraTempFile:");
        q.append(createTempFile.getAbsolutePath());
        em.h("AppUtils", q.toString());
        return createTempFile;
    }

    public static void e(Context context) {
        new Thread(new kq(context)).start();
    }

    public static MediaFileInfo f(Uri uri) {
        MediaFileInfo mediaFileInfo = new MediaFileInfo();
        mediaFileInfo.q(0);
        mediaFileInfo.p(uri);
        if (cm.n(uri.toString())) {
            mediaFileInfo.o(cm.f(uri));
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments != null && pathSegments.size() > 1) {
                mediaFileInfo.m(pathSegments.get(pathSegments.size() - 2));
            }
        } else {
            String k = cm.k(CollageMakerApplication.b(), uri);
            if (k == null) {
                k = c(CollageMakerApplication.b(), uri);
            }
            if (!TextUtils.isEmpty(k)) {
                mediaFileInfo.o(k);
                mediaFileInfo.m(new File(k).getParent());
            }
        }
        return mediaFileInfo;
    }

    public static String g(Context context) {
        if (l()) {
            return context.getCacheDir() + "/.clound";
        }
        StringBuilder sb = new StringBuilder();
        dq.a(context);
        return ic.l(sb, dq.e, "/.clound");
    }

    public static String h(Context context, Uri uri) {
        String k = cm.k(context, uri);
        return k == null ? c(context, uri) : k;
    }

    public static String i(Context context) {
        StringBuilder sb = new StringBuilder();
        dq.a(context);
        sb.append(dq.e);
        sb.append("/.log");
        String sb2 = sb.toString();
        bm.g(sb2);
        return sb2;
    }

    public static String j() {
        return CollageMakerApplication.b().getPackageName();
    }

    public static boolean k(Context context) {
        return f.g(context).getInt("NewUserVersion", -1) == c2.i(context);
    }

    public static boolean l() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public static void m(Throwable th) {
        try {
            FirebaseCrashlytics.getInstance().recordException(th);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x010e, code lost:
        if (r8 > 0.0f) goto L_0x0121;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0160, code lost:
        if (r9 <= 0.0f) goto L_0x0171;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x01a6, code lost:
        if (r9 > 0.0f) goto L_0x01b9;
     */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x02ed  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x0329  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x0349  */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0356  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void n(android.app.Activity r13, java.lang.String r14, java.lang.String r15) {
        /*
        // Method dump skipped, instructions count: 870
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rq.n(android.app.Activity, java.lang.String, java.lang.String):void");
    }

    public static void o(Activity activity, String str, String str2, String str3) {
        boolean z;
        String str4;
        Uri uri;
        Uri uri2;
        boolean equals = TextUtils.equals(str, "com.instagram.android");
        Intent intent = new Intent("android.intent.action.SEND");
        if (!c2.r(activity, str) || TextUtils.isEmpty(str2)) {
            z = false;
        } else {
            intent.setPackage(str);
            File file = new File(str2);
            if (Build.VERSION.SDK_INT > 23) {
                try {
                    if (cm.m(str2)) {
                        uri2 = Uri.parse(str2);
                    } else {
                        uri2 = FileProvider.b(activity, j() + ".fileprovider", file);
                    }
                    em.h("File Selector", "The selected file shared: " + uri2);
                    intent.addFlags(1);
                    intent.setDataAndType(uri2, str3);
                    intent.putExtra("android.intent.extra.STREAM", uri2);
                } catch (IllegalArgumentException e) {
                    StringBuilder q = ic.q("The selected file can't be shared: ");
                    q.append(file.toString());
                    em.i("File Selector", q.toString(), e);
                }
            } else {
                intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
                intent.setType(str3);
                intent.setFlags(4194304);
            }
            if (equals) {
                String str5 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data/com.instagram.android";
                File file2 = new File(ic.i(str5, "/files/videos"));
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                File file3 = new File(ic.i(str5, "/files/covers"));
                if (!file3.exists()) {
                    file3.mkdirs();
                }
                File file4 = new File(ic.i(str5, "/files/music"));
                if (!file4.exists()) {
                    file4.mkdirs();
                }
                File file5 = new File(ic.i(str5, "/files/rendered_videos"));
                if (!file5.exists()) {
                    file5.mkdirs();
                }
                File file6 = new File(ic.i(str5, "/caches"));
                if (!file6.exists()) {
                    file6.mkdirs();
                }
            }
            z = true;
        }
        if (z) {
            if (equals) {
                try {
                    intent = Intent.createChooser(intent, activity.getString(R.string.hn));
                } catch (ActivityNotFoundException unused) {
                    z = false;
                }
            }
            activity.startActivityForResult(intent, equals ? 5 : 4);
            e.a = true;
            e.b = activity;
        }
        if (!z && !TextUtils.isEmpty(str2)) {
            File file7 = new File(str2);
            Intent intent2 = new Intent("android.intent.action.SEND");
            if (Build.VERSION.SDK_INT > 23) {
                try {
                    if (cm.m(str2)) {
                        uri = Uri.parse(str2);
                    } else {
                        uri = FileProvider.b(activity, j() + ".fileprovider", file7);
                    }
                    intent2.addFlags(1);
                    intent2.setDataAndType(uri, str3);
                    intent2.putExtra("android.intent.extra.STREAM", uri);
                } catch (IllegalArgumentException unused2) {
                    StringBuilder q2 = ic.q("The selected file can't be shared: ");
                    q2.append(file7.toString());
                    em.h("File Selector", q2.toString());
                }
            } else {
                intent2.putExtra("android.intent.extra.STREAM", Uri.fromFile(file7));
                intent2.setType(str3);
                intent2.setFlags(4194304);
            }
            Dialog dialog = new Dialog(activity);
            dialog.requestWindowFeature(1);
            dialog.setContentView(R.layout.dl);
            dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            if (str.equals("com.instagram.android")) {
                str4 = "Instagram";
            } else if (str.equals("com.facebook.katana")) {
                str4 = "Facebook";
            } else if (str.equals("com.twitter.android")) {
                str4 = "Twitter";
            } else if (str.equals("com.whatsapp")) {
                str4 = "WhatsApp";
            } else if (str.equals("com.facebook.orca")) {
                str4 = "Messenger";
            } else {
                str4 = str.equals("com.google.android.youtube") ? "YouTube" : "";
            }
            String format = String.format(activity.getString(R.string.af), str4);
            String format2 = String.format(activity.getString(R.string.ac), str4);
            String format3 = String.format(activity.getString(R.string.ad), str4.toUpperCase());
            uq.x((TextView) dialog.findViewById(R.id.df), activity);
            ((TextView) dialog.findViewById(R.id.m7)).setText(format);
            ((TextView) dialog.findViewById(R.id.m6)).setText(format2);
            ((TextView) dialog.findViewById(R.id.ds)).setText(format3);
            dialog.show();
            dialog.findViewById(R.id.ds).setOnClickListener(new a(dialog, activity, str));
            dialog.findViewById(R.id.ei).setOnClickListener(new b(activity, intent2, dialog));
            dialog.findViewById(R.id.df).setOnClickListener(new c(dialog));
        }
    }

    public static void p(Activity activity, int i) {
        String string = activity.getResources().getString(R.string.hf);
        activity.runOnUiThread(new mq(String.format(activity.getString(R.string.h5), string), activity, i));
    }
}
