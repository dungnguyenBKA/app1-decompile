.class public final Lcom/google/android/gms/internal/ads/zzsc;
.super Lcom/google/android/gms/internal/ads/zzrv;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private zzbuj:Ljava/security/MessageDigest;

.field private final zzbuk:I

.field private final zzbul:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrv;-><init>()V

    .line 2
    div-int/lit8 v0, p1, 0x8

    .line 3
    rem-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 4
    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzbuk:I

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzbul:I

    return-void
.end method


# virtual methods
.method public final zzbq(Ljava/lang/String;)[B
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrv;->zzms()Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzbuj:Ljava/security/MessageDigest;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array p1, v2, [B

    .line 3
    monitor-exit v0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzbuj:Ljava/security/MessageDigest;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzbuj:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 7
    array-length v1, p1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzbuk:I

    if-le v1, v3, :cond_1

    goto :goto_0

    :cond_1
    array-length v3, p1

    :goto_0
    new-array v1, v3, [B

    .line 8
    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzbul:I

    const/16 v4, 0x8

    rem-int/2addr p1, v4

    if-lez p1, :cond_4

    const-wide/16 v5, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    if-lez v2, :cond_2

    shl-long/2addr v5, v4

    .line 10
    :cond_2
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    int-to-long v7, p1

    add-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzbul:I

    rem-int/2addr p1, v4

    rsub-int/lit8 p1, p1, 0x8

    ushr-long v2, v5, p1

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzbuk:I

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_4

    const-wide/16 v5, 0xff

    and-long/2addr v5, v2

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 13
    aput-byte v5, v1, p1

    ushr-long/2addr v2, v4

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 14
    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
