package com.camerasideas.collagemaker.activity.fragment.commonfragment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.b;
import com.camerasideas.collagemaker.appdata.f;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class j extends b {
    private TextView f0;
    private ProgressBar g0;
    private long h0;
    private List<String> i0 = new ArrayList();

    @Override // androidx.fragment.app.b
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        f.k(C(), true);
        if (this.i0.size() > 0) {
            new Thread(new a(this)).start();
        }
    }

    @Override // androidx.fragment.app.b
    public Dialog p1(Bundle bundle) {
        View inflate = x().getLayoutInflater().inflate(R.layout.b3, (ViewGroup) null);
        Dialog dialog = new Dialog(x());
        dialog.requestWindowFeature(1);
        dialog.setContentView(inflate);
        this.g0 = (ProgressBar) inflate.findViewById(R.id.n6);
        this.f0 = (TextView) inflate.findViewById(R.id.s3);
        dialog.setCanceledOnTouchOutside(true);
        Window window = dialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 17;
        attributes.dimAmount = 0.8f;
        attributes.width = (int) (((float) androidx.core.app.b.V(C())) * 0.8f);
        window.setAttributes(attributes);
        q1(false);
        return dialog;
    }

    public long u1() {
        return System.currentTimeMillis() - this.h0;
    }

    public /* synthetic */ void v1() {
        try {
            for (String str : this.i0) {
                em.h("CopyProgressDialog", "开始删除目录" + str);
                bm.c(new File(com.camerasideas.collagemaker.appdata.b.b + File.separator + str));
            }
        } catch (Exception e) {
            e.printStackTrace();
            em.h("CopyProgressDialog", "删除历史数据出错");
        }
    }

    public void w1(List<String> list) {
        this.i0.clear();
        if (list != null) {
            this.i0.addAll(list);
        }
    }

    public void x1(long j) {
        this.h0 = j;
    }

    public void y1(int i) {
        ProgressBar progressBar = this.g0;
        if (progressBar != null && this.f0 != null) {
            progressBar.setProgress(i);
            TextView textView = this.f0;
            textView.setText(i + "%");
        }
    }
}
