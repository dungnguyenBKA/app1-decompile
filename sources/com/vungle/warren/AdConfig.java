package com.vungle.warren;

import androidx.annotation.Keep;
import com.vungle.warren.model.ReportDBAdapter;
import org.apache.http.HttpStatus;

public class AdConfig {
    public static final int AUTO_ROTATE = 2;
    public static final int IMMEDIATE_BACK = 2;
    public static final int IMMERSIVE = 4;
    public static final int LANDSCAPE = 1;
    public static final int MATCH_VIDEO = 3;
    public static final int MUTED = 1;
    public static final int PORTRAIT = 0;
    public static final int TRANSITION_ANIMATE = 8;
    @Orientation
    @c70("adOrientation")
    private int adOrientation = 2;
    @c70("adSize")
    private AdSize adSize = AdSize.VUNGLE_DEFAULT;
    @c70(ReportDBAdapter.ReportColumns.COLUMN_ORDINAL)
    private int ordinal;
    @c70("settings")
    private int settings;

    @Keep
    public enum AdSize {
        VUNGLE_MREC("mrec", HttpStatus.SC_MULTIPLE_CHOICES, 250),
        VUNGLE_DEFAULT("default", -1, -1),
        BANNER("banner", 320, 50),
        BANNER_SHORT("banner_short", HttpStatus.SC_MULTIPLE_CHOICES, 50),
        BANNER_LEADERBOARD("banner_leaderboard", 728, 90);
        
        private final int height;
        private final String name;
        private final int width;

        private AdSize(String str, int i, int i2) {
            this.width = i;
            this.height = i2;
            this.name = str;
        }

        public static AdSize fromName(String str) {
            AdSize[] values = values();
            for (int i = 0; i < 5; i++) {
                AdSize adSize = values[i];
                if (adSize.name.equals(str)) {
                    return adSize;
                }
            }
            return VUNGLE_DEFAULT;
        }

        public static boolean isBannerAdSize(AdSize adSize) {
            return adSize == BANNER || adSize == BANNER_LEADERBOARD || adSize == BANNER_SHORT;
        }

        public static boolean isDefaultAdSize(AdSize adSize) {
            return adSize == VUNGLE_DEFAULT || adSize == VUNGLE_MREC;
        }

        public int getHeight() {
            return this.height;
        }

        public String getName() {
            return this.name;
        }

        public int getWidth() {
            return this.width;
        }
    }

    public @interface Orientation {
    }

    public @interface Settings {
    }

    @Orientation
    public int getAdOrientation() {
        return this.adOrientation;
    }

    public AdSize getAdSize() {
        AdSize adSize2 = this.adSize;
        return adSize2 == null ? AdSize.VUNGLE_DEFAULT : adSize2;
    }

    public int getOrdinal() {
        return this.ordinal;
    }

    public int getSettings() {
        return this.settings;
    }

    public void setAdOrientation(@Orientation int i) {
        this.adOrientation = i;
    }

    public void setAdSize(AdSize adSize2) {
        this.adSize = adSize2;
    }

    public void setBackButtonImmediatelyEnabled(boolean z) {
        if (z) {
            this.settings |= 2;
        } else {
            this.settings &= -3;
        }
    }

    public void setImmersiveMode(boolean z) {
        if (z) {
            this.settings |= 4;
        } else {
            this.settings &= -5;
        }
    }

    public void setMuted(boolean z) {
        if (z) {
            this.settings |= 1;
        } else {
            this.settings &= -2;
        }
    }

    public void setOrdinal(int i) {
        this.ordinal = i;
    }

    public void setTransitionAnimationEnabled(boolean z) {
        if (z) {
            this.settings |= 8;
        } else {
            this.settings &= -9;
        }
    }
}
