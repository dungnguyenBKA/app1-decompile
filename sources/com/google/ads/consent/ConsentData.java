package com.google.ads.consent;

import java.util.HashSet;
import org.apache.http.cookie.ClientCookie;

class ConsentData {
    private static final String SDK_PLATFORM = "android";
    private static final String SDK_VERSION = "1.0.8";
    @c70("providers")
    private HashSet<AdProvider> adProviders = new HashSet<>();
    @c70("consent_source")
    private String consentSource;
    @c70("consent_state")
    private ConsentStatus consentStatus = ConsentStatus.UNKNOWN;
    @c70("consented_providers")
    private HashSet<AdProvider> consentedAdProviders = new HashSet<>();
    @c70("has_any_npa_pub_id")
    private boolean hasNonPersonalizedPublisherId = false;
    @c70("is_request_in_eea_or_unknown")
    private boolean isRequestLocationInEeaOrUnknown = false;
    @c70("pub_ids")
    private HashSet<String> publisherIds = new HashSet<>();
    @c70("raw_response")
    private String rawResponse = "";
    @c70("plat")
    private final String sdkPlatformString = SDK_PLATFORM;
    @c70(ClientCookie.VERSION_ATTR)
    private final String sdkVersionString = SDK_VERSION;
    @c70("tag_for_under_age_of_consent")
    private Boolean underAgeOfConsent = Boolean.FALSE;

    ConsentData() {
    }

    /* access modifiers changed from: package-private */
    public HashSet<AdProvider> getAdProviders() {
        return this.adProviders;
    }

    public String getConsentSource() {
        return this.consentSource;
    }

    /* access modifiers changed from: package-private */
    public ConsentStatus getConsentStatus() {
        return this.consentStatus;
    }

    /* access modifiers changed from: package-private */
    public HashSet<AdProvider> getConsentedAdProviders() {
        return this.consentedAdProviders;
    }

    /* access modifiers changed from: package-private */
    public HashSet<String> getPublisherIds() {
        return this.publisherIds;
    }

    /* access modifiers changed from: package-private */
    public String getRawResponse() {
        return this.rawResponse;
    }

    public String getSDKPlatformString() {
        return this.sdkPlatformString;
    }

    public String getSDKVersionString() {
        return this.sdkVersionString;
    }

    /* access modifiers changed from: package-private */
    public boolean hasNonPersonalizedPublisherId() {
        return this.hasNonPersonalizedPublisherId;
    }

    /* access modifiers changed from: package-private */
    public boolean isRequestLocationInEeaOrUnknown() {
        return this.isRequestLocationInEeaOrUnknown;
    }

    /* access modifiers changed from: package-private */
    public boolean isTaggedForUnderAgeOfConsent() {
        return this.underAgeOfConsent.booleanValue();
    }

    /* access modifiers changed from: package-private */
    public void setAdProviders(HashSet<AdProvider> hashSet) {
        this.adProviders = hashSet;
    }

    public void setConsentSource(String str) {
        this.consentSource = str;
    }

    /* access modifiers changed from: package-private */
    public void setConsentStatus(ConsentStatus consentStatus2) {
        this.consentStatus = consentStatus2;
    }

    /* access modifiers changed from: package-private */
    public void setConsentedAdProviders(HashSet<AdProvider> hashSet) {
        this.consentedAdProviders = hashSet;
    }

    /* access modifiers changed from: package-private */
    public void setHasNonPersonalizedPublisherId(boolean z) {
        this.hasNonPersonalizedPublisherId = z;
    }

    /* access modifiers changed from: package-private */
    public void setPublisherIds(HashSet<String> hashSet) {
        this.publisherIds = hashSet;
    }

    /* access modifiers changed from: package-private */
    public void setRawResponse(String str) {
        this.rawResponse = str;
    }

    /* access modifiers changed from: package-private */
    public void setRequestLocationInEeaOrUnknown(boolean z) {
        this.isRequestLocationInEeaOrUnknown = z;
    }

    /* access modifiers changed from: package-private */
    public void tagForUnderAgeOfConsent(boolean z) {
        this.underAgeOfConsent = Boolean.valueOf(z);
    }
}
