package com.camerasideas.collagemaker.activity;

import java.io.File;
import java.math.BigDecimal;

class x0 implements ul {
    private long a;
    final /* synthetic */ MainActivity b;

    x0(MainActivity mainActivity) {
        this.b = mainActivity;
    }

    @Override // defpackage.ul
    public void a() {
        if (System.currentTimeMillis() - this.a >= ((long) (this.b.n > 52428800 ? 100 : 50))) {
            this.a = System.currentTimeMillis();
            this.b.m = 0;
            for (String str : this.b.p) {
                MainActivity mainActivity = this.b;
                StringBuilder sb = new StringBuilder();
                sb.append(this.b.getExternalFilesDir("").getAbsolutePath());
                mainActivity.z(new File(ic.l(sb, File.separator, str)));
            }
            MainActivity mainActivity2 = this.b;
            mainActivity2.o = mainActivity2.m;
            this.b.runOnUiThread(new y(this, (double) new BigDecimal(this.b.o).divide(new BigDecimal(this.b.n), 2, 4).multiply(new BigDecimal(100)).longValue()));
        }
    }
}
