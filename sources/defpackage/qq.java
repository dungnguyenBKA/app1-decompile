package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.a;
import com.camerasideas.collagemaker.activity.MainActivity;
import com.camerasideas.collagemaker.appdata.e;
import com.camerasideas.collagemaker.photoproc.graphicsitems.i;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: qq  reason: default package */
public class qq {
    private Context a;
    private long b = 0;

    public qq(Context context) {
        this.a = context;
    }

    public boolean a(AppCompatActivity appCompatActivity, boolean z) {
        if (appCompatActivity == null) {
            return false;
        }
        if (System.currentTimeMillis() - this.b < 3000 || z) {
            try {
                Intent intent = new Intent();
                intent.setFlags(67108864);
                intent.setClass(appCompatActivity, MainActivity.class);
                appCompatActivity.startActivity(intent);
                appCompatActivity.finish();
                en.a(null).h(null);
                i.k().c();
                boolean z2 = e.a;
                em.h("AppExitUtils", "Back to MainActivity: destroy bitmaps and items");
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                em.h("AppExitUtils", "Back to home activity:" + e.getMessage());
                return true;
            }
        } else {
            this.b = System.currentTimeMillis();
            mr.d(appCompatActivity.getString(R.string.bw));
            return true;
        }
    }

    public boolean b(Activity activity) {
        if (System.currentTimeMillis() - this.b < 3000) {
            try {
                new Thread(new kq(this.a)).start();
                int i = a.c;
                activity.finishAffinity();
                Process.killProcess(Process.myPid());
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return true;
            }
        } else {
            this.b = System.currentTimeMillis();
            mr.d(activity.getString(R.string.bw));
            return true;
        }
    }

    public boolean c(AppCompatActivity appCompatActivity, boolean z) {
        if (System.currentTimeMillis() - this.b < 3000 || z) {
            try {
                Intent intent = new Intent();
                intent.setFlags(67108864);
                intent.setClass(appCompatActivity, MainActivity.class);
                appCompatActivity.startActivity(intent);
                appCompatActivity.finish();
                en.a(null).h(null);
                e.e(0);
                em.h("AppExitUtils", "Image selector Back to MainActivity: destroy bitmaps and items");
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                em.h("AppExitUtils", "Image selector Back to home activity:" + e.getMessage());
                return true;
            }
        } else {
            this.b = System.currentTimeMillis();
            mr.d(appCompatActivity.getString(R.string.bw));
            return true;
        }
    }
}
