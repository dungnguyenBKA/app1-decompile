package com.google.ads.consent;

public final class AdProvider {
    @c70("company_id")
    private String id;
    @c70("company_name")
    private String name;
    @c70("policy_url")
    private String privacyPolicyUrlString;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AdProvider.class != obj.getClass()) {
            return false;
        }
        return this.id.equals(((AdProvider) obj).id);
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getPrivacyPolicyUrlString() {
        return this.privacyPolicyUrlString;
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPrivacyPolicyUrlString(String str) {
        this.privacyPolicyUrlString = str;
    }
}
