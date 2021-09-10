package dev.in.common.core.service;

import android.content.Context;

class b implements Runnable {
    final /* synthetic */ Context b;
    final /* synthetic */ DownloadService c;

    b(DownloadService downloadService, Context context) {
        this.c = downloadService;
        this.b = context;
    }

    public void run() {
        try {
            DownloadService.b(this.c, this.b);
            DownloadService.c(this.c, this.b);
            DownloadService.d(this.c, this.b);
        } catch (Exception e) {
            e.printStackTrace();
        } catch (Throwable th) {
            this.c.b.sendEmptyMessage(0);
            throw th;
        }
        this.c.b.sendEmptyMessage(0);
    }
}
