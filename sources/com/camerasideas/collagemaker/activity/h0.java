package com.camerasideas.collagemaker.activity;

import com.camerasideas.collagemaker.appdata.b;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

public final /* synthetic */ class h0 implements Runnable {
    public final /* synthetic */ MainActivity b;

    public /* synthetic */ h0(MainActivity mainActivity) {
        this.b = mainActivity;
    }

    public final void run() {
        File[] listFiles;
        MainActivity mainActivity = this.b;
        Objects.requireNonNull(mainActivity);
        try {
            String str = b.b;
            if (bm.f(str)) {
                File file = new File(str);
                if (file.exists() && (listFiles = file.listFiles()) != null) {
                    ArrayList arrayList = new ArrayList();
                    for (File file2 : listFiles) {
                        if (file2.isDirectory() && file2.getName().startsWith(".")) {
                            arrayList.add(file2.getAbsolutePath());
                        }
                    }
                    if (arrayList.size() > 0) {
                        uq.n(mainActivity, "DataMoveSuccess", "No");
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            bm.c(new File((String) it.next()));
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            em.h("MainActivity", "删除历史数据出错");
        }
    }
}
