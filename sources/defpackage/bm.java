package defpackage;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Looper;
import android.text.TextUtils;
import com.google.ads.ADRequestList;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* renamed from: bm  reason: default package */
public class bm {

    /* renamed from: bm$a */
    class a implements Runnable {
        final /* synthetic */ String b;

        a(String str) {
            this.b = str;
        }

        public void run() {
            try {
                File file = new File(this.b);
                if (file.exists() && file.isFile()) {
                    file.delete();
                }
                if (!file.isDirectory()) {
                    file.mkdirs();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static boolean a(String str, String str2, ul ulVar) {
        File file;
        try {
            File file2 = new File(str2);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            String[] list = new File(str).list();
            for (int i = 0; i < list.length; i++) {
                String str3 = File.separator;
                if (str.endsWith(str3)) {
                    file = new File(str + list[i]);
                } else {
                    file = new File(str + str3 + list[i]);
                }
                if (!file.getName().endsWith(".zip")) {
                    File file3 = new File(str2 + "/" + file.getName());
                    if (!file3.exists() || file3.length() != file.length()) {
                        if (file.isFile()) {
                            FileInputStream fileInputStream = new FileInputStream(file);
                            FileOutputStream fileOutputStream = new FileOutputStream(str2 + "/" + file.getName().toString());
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int read = fileInputStream.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                fileOutputStream.write(bArr, 0, read);
                                if (ulVar != null) {
                                    ulVar.a();
                                }
                            }
                            fileOutputStream.flush();
                            fileOutputStream.close();
                            fileInputStream.close();
                        }
                        if (file.isDirectory()) {
                            a(str + "/" + list[i], str2 + "/" + list[i], ulVar);
                        }
                    }
                }
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @SuppressLint({"SimpleDateFormat"})
    public static String b(String str, String str2) {
        return ic.j(str, new SimpleDateFormat("yyyyMMdd_HHmmssSSS").format(new Date()), str2);
    }

    public static void c(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                c(file2);
            }
        } else {
            file.delete();
        }
        file.delete();
    }

    public static boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (!cm.m(str)) {
                if (cm.n(str)) {
                    if (TextUtils.isEmpty(str)) {
                        str = "";
                    } else {
                        str = cm.f(Uri.parse(str));
                    }
                }
                File file = new File(str);
                if (!file.exists() || file.delete()) {
                    return true;
                }
                return false;
            } else if (com.camerasideas.baseutils.a.b().a().getContentResolver().delete(Uri.parse(str), null, null) > -1) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean e(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (cm.m(str)) {
            try {
                com.camerasideas.baseutils.a.b().a().getContentResolver().openFileDescriptor(Uri.parse(str), ADRequestList.ORDER_R).close();
            } catch (FileNotFoundException unused) {
                return false;
            } catch (IOException e) {
                e.printStackTrace();
            }
            return true;
        } else if (str.startsWith("android.resource")) {
            return true;
        } else {
            if (cm.n(str)) {
                if (TextUtils.isEmpty(str)) {
                    str = "";
                } else {
                    str = cm.f(Uri.parse(str));
                }
            }
            return new File(str).exists();
        }
    }

    public static boolean f(String str) {
        File file = new File(str, ".test.tmp");
        try {
            file.createNewFile();
            if (!file.exists()) {
                return false;
            }
            file.delete();
            return true;
        } catch (Exception e) {
            if (file.exists()) {
                file.delete();
            }
            e.printStackTrace();
            return false;
        }
    }

    public static void g(String str) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            ml.h(new a(str));
            return;
        }
        try {
            File file = new File(str);
            if (file.exists() && file.isFile()) {
                file.delete();
            }
            if (!file.isDirectory()) {
                file.mkdirs();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
