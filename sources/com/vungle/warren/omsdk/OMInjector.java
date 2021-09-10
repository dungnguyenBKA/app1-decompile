package com.vungle.warren.omsdk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.io.Closeable;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public class OMInjector {
    private static final String OM_SDK_JS = "omsdk.js";
    private static final String OM_SESSION_JS = "omsdk-session.js";
    private AtomicReference<Context> contextRef;
    private Handler uiHandler = new Handler(Looper.getMainLooper());

    public OMInjector(Context context) {
        this.contextRef = new AtomicReference<>(context.getApplicationContext());
    }

    private void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private File writeToFile(String str, File file) {
        Throwable th;
        Closeable closeable = null;
        try {
            FileWriter fileWriter = new FileWriter(file);
            try {
                fileWriter.write(str);
                fileWriter.flush();
                closeQuietly(fileWriter);
                return file;
            } catch (Throwable th2) {
                th = th2;
                closeable = fileWriter;
                closeQuietly(closeable);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            closeQuietly(closeable);
            throw th;
        }
    }

    public void init() {
        this.uiHandler.post(new Runnable() {
            /* class com.vungle.warren.omsdk.OMInjector.AnonymousClass1 */

            public void run() {
                if (!e90.b()) {
                    e90.a((Context) OMInjector.this.contextRef.get());
                }
            }
        });
    }

    public List<File> injectJsFiles(File file) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(writeToFile(Res.OM_JS, new File(file, OM_SDK_JS)));
        arrayList.add(writeToFile(Res.OM_SESSION_JS, new File(file, OM_SESSION_JS)));
        return arrayList;
    }
}
