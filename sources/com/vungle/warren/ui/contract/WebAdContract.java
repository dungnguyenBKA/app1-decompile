package com.vungle.warren.ui.contract;

import com.vungle.warren.ui.contract.AdContract;

public interface WebAdContract {

    public interface WebAdPresenter extends AdContract.AdvertisementPresenter<WebAdView> {
        void setAdVisibility(boolean z);
    }

    public interface WebAdView extends AdContract.AdView<WebAdPresenter> {
        void setVisibility(boolean z);

        void updateWindow();
    }
}
