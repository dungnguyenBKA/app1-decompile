.class public final Lcom/google/android/gms/internal/ads/zzdvd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzhvb:Lcom/google/android/gms/internal/ads/zzdve;

.field private static volatile zzhvc:Lcom/google/android/gms/internal/ads/zzdve;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvf;-><init>(Lcom/google/android/gms/internal/ads/zzdvg;)V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdvd;->zzhvb:Lcom/google/android/gms/internal/ads/zzdve;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdvd;->zzhvc:Lcom/google/android/gms/internal/ads/zzdve;

    return-void
.end method

.method public static zzayx()Lcom/google/android/gms/internal/ads/zzdve;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvd;->zzhvc:Lcom/google/android/gms/internal/ads/zzdve;

    return-object v0
.end method
