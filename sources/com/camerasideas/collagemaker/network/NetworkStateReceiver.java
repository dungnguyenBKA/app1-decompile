package com.camerasideas.collagemaker.network;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.b;
import photoeditor.cutout.backgrounderaser.R;

public class NetworkStateReceiver extends BroadcastReceiver {
    private a a;

    public void a(a aVar) {
        this.a = aVar;
    }

    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            try {
                if (intent.getAction() != null) {
                    if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                        em.g("NetworkStateReceiver", "onReceive: 网络发生变化");
                        if (b.f0(context)) {
                            em.g("NetworkStateReceiver", "onReceive: 网络连接成功");
                            a aVar = this.a;
                            if (aVar != null) {
                                aVar.h();
                                return;
                            }
                            return;
                        }
                        em.h("NetworkStateReceiver", "onReceive: 网络连接失败");
                        mr.d(context.getString(R.string.e_));
                        a aVar2 = this.a;
                        if (aVar2 != null) {
                            aVar2.k();
                            return;
                        }
                        return;
                    }
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        em.h("NetworkStateReceiver", "onReceive: 异常");
    }
}
