package com.vungle.warren.model;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.UUID;

public class AdAsset {
    public final String adIdentifier;
    public long fileSize;
    public int fileType;
    public final String identifier;
    public final String localPath;
    public String parentId;
    public int retryCount;
    int retryTypeError;
    public final String serverPath;
    public int status;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ErrorType {
        public static final int CANNOT_RETRY_ERROR = 2;
        public static final int CAN_RETRY_ERROR = 1;
        public static final int NO_ERROR = 0;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface FileType {
        public static final int ASSET = 2;
        public static final int ZIP = 0;
        public static final int ZIP_ASSET = 1;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Status {
        public static final int DOWNLOAD_FAILED = 2;
        public static final int DOWNLOAD_RUNNING = 1;
        public static final int DOWNLOAD_SUCCESS = 3;
        public static final int NEW = 0;
        public static final int PROCESSED = 4;
    }

    public AdAsset(String str, String str2, String str3) {
        this(str, str2, str3, UUID.randomUUID().toString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AdAsset adAsset = (AdAsset) obj;
        if (this.status != adAsset.status || this.fileType != adAsset.fileType || this.fileSize != adAsset.fileSize || this.retryCount != adAsset.retryCount || this.retryTypeError != adAsset.retryTypeError) {
            return false;
        }
        String str = this.identifier;
        if (str == null ? adAsset.identifier != null : !str.equals(adAsset.identifier)) {
            return false;
        }
        String str2 = this.adIdentifier;
        if (str2 == null ? adAsset.adIdentifier != null : !str2.equals(adAsset.adIdentifier)) {
            return false;
        }
        String str3 = this.parentId;
        if (str3 == null ? adAsset.parentId != null : !str3.equals(adAsset.parentId)) {
            return false;
        }
        String str4 = this.serverPath;
        if (str4 == null ? adAsset.serverPath != null : !str4.equals(adAsset.serverPath)) {
            return false;
        }
        String str5 = this.localPath;
        String str6 = adAsset.localPath;
        if (str5 != null) {
            return str5.equals(str6);
        }
        if (str6 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        String str = this.identifier;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.adIdentifier;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.parentId;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.serverPath;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.localPath;
        if (str5 != null) {
            i = str5.hashCode();
        }
        long j = this.fileSize;
        return ((((((((((hashCode4 + i) * 31) + this.status) * 31) + this.fileType) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + this.retryCount) * 31) + this.retryTypeError;
    }

    public String toString() {
        StringBuilder q = ic.q("AdAsset{identifier='");
        ic.v(q, this.identifier, '\'', ", adIdentifier='");
        ic.v(q, this.adIdentifier, '\'', ", serverPath='");
        ic.v(q, this.serverPath, '\'', ", localPath='");
        ic.v(q, this.localPath, '\'', ", status=");
        q.append(this.status);
        q.append(", fileType=");
        q.append(this.fileType);
        q.append(", fileSize=");
        q.append(this.fileSize);
        q.append(", retryCount=");
        q.append(this.retryCount);
        q.append(", retryTypeError=");
        q.append(this.retryTypeError);
        q.append('}');
        return q.toString();
    }

    AdAsset(String str, String str2, String str3, String str4) {
        this.identifier = str4;
        this.adIdentifier = str;
        this.serverPath = str2;
        this.localPath = str3;
        this.fileSize = -1;
        this.retryCount = 0;
        this.retryTypeError = 0;
    }
}
