package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.widget.LottieView;
import com.facebook.ads.AdError;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: dc0  reason: default package */
public class dc0 extends Dialog {
    private int b = AdError.NETWORK_ERROR_CODE;
    private b c;

    /* renamed from: dc0$a */
    class a implements Runnable {
        a() {
        }

        public void run() {
            if (dc0.this.isShowing()) {
                if (dc0.this.c != null) {
                    dc0.this.c.a();
                }
                dc0 dc0 = dc0.this;
                Objects.requireNonNull(dc0);
                new Handler(Looper.getMainLooper()).postDelayed(new ec0(dc0), 1000);
            }
        }
    }

    /* renamed from: dc0$b */
    public interface b {
        void a();
    }

    public dc0(Context context, int i) {
        super(context, R.style.b);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        this.b = i;
    }

    public void b(b bVar) {
        this.c = bVar;
    }

    public synchronized void dismiss() {
        try {
            super.dismiss();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.aa);
        LottieView lottieView = (LottieView) findViewById(R.id.bo);
        if (lottieView != null) {
            try {
                lottieView.b.u("ad_full_loading.json");
            } catch (Exception e) {
                e.printStackTrace();
            }
            lottieView.setVisibility(0);
            try {
                lottieView.b.setVisibility(0);
                lottieView.b.setEnabled(true);
                lottieView.b.y(0.0f);
                lottieView.b.s();
            } catch (Exception e2) {
                lottieView.setVisibility(8);
                e2.printStackTrace();
            }
        }
        new Handler(Looper.getMainLooper()).postDelayed(new a(), (long) this.b);
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        try {
            getWindow().setBackgroundDrawable(new ColorDrawable(0));
            getWindow().setLayout(-1, -1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void show() {
        super.show();
    }
}
