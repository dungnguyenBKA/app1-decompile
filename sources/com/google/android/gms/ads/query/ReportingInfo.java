package com.google.android.gms.ads.query;

import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzasm;
import com.google.android.gms.internal.ads.zzasr;
import java.util.List;
import java.util.Map;

public final class ReportingInfo {
    private final zzasm a;

    public static final class Builder {
        private final zzasr a;

        public Builder(View view) {
            zzasr zzasr = new zzasr();
            this.a = zzasr;
            zzasr.zzk(view);
        }

        public final ReportingInfo build() {
            return new ReportingInfo(this, null);
        }

        public final Builder setAssetViews(Map<String, View> map) {
            this.a.zzh(map);
            return this;
        }
    }

    ReportingInfo(Builder builder, a aVar) {
        this.a = new zzasm(builder.a);
    }

    public final void reportTouchEvent(MotionEvent motionEvent) {
        this.a.reportTouchEvent(motionEvent);
    }

    public final void updateClickUrl(Uri uri, UpdateClickUrlCallback updateClickUrlCallback) {
        this.a.updateClickUrl(uri, updateClickUrlCallback);
    }

    public final void updateImpressionUrls(List<Uri> list, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        this.a.updateImpressionUrls(list, updateImpressionUrlsCallback);
    }
}
