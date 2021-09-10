.class public final Lcom/google/android/gms/internal/ads/zzse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/ads/zzrs;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzsf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzrs;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzrs;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrs;->zzmo()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzrs;->zzmo()F

    move-result v1

    const/4 v2, -0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrs;->zzmo()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzrs;->zzmo()F

    move-result v1

    const/4 v3, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    return v3

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrs;->zzmn()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzrs;->zzmn()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrs;->zzmn()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzrs;->zzmn()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    return v3

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrs;->zzmq()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrs;->zzmo()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrs;->zzmp()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrs;->zzmn()F

    move-result p1

    sub-float/2addr v1, p1

    mul-float v1, v1, v0

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzrs;->zzmq()F

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzrs;->zzmo()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzrs;->zzmp()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzrs;->zzmn()F

    move-result p2

    sub-float/2addr v0, p2

    mul-float v0, v0, p1

    cmpl-float p1, v1, v0

    if-lez p1, :cond_4

    return v2

    :cond_4
    cmpg-float p1, v1, v0

    if-gez p1, :cond_5

    return v3

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
