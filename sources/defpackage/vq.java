package defpackage;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.WindowManager;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: vq  reason: default package */
public class vq {
    private Context a;
    String b = "";
    String c = "";
    String d = "";
    String e = "";

    /* access modifiers changed from: package-private */
    /* renamed from: vq$a */
    public class a implements DialogInterface.OnClickListener {
        a() {
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(vq.this.e));
            intent.setFlags(268435456);
            vq.this.a.startActivity(intent);
        }
    }

    public vq(Context context) {
        this.a = context;
    }

    public void b() {
        try {
            this.e = "http://market.android.com/details?id=photoeditor.cutout.backgrounderaser";
            this.b = this.a.getString(R.string.c6);
            this.c = this.a.getString(R.string.c5);
            this.d = "OK";
            AlertDialog.Builder builder = new AlertDialog.Builder(this.a);
            builder.setTitle(this.b);
            builder.setMessage(this.c);
            builder.setPositiveButton(this.d, new a());
            builder.create();
            builder.show();
        } catch (WindowManager.BadTokenException e2) {
            try {
                mr.d(this.c);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            e2.printStackTrace();
        } catch (Exception e4) {
            try {
                mr.d(this.c);
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            e4.printStackTrace();
        }
    }
}
