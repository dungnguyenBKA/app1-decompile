.class public final Lcom/google/android/gms/internal/ads/zzaas;
.super Lcom/google/android/gms/internal/ads/zzagk;
.source "SourceFile"


# instance fields
.field private final zzclt:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaas;->zzclt:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    return-void
.end method


# virtual methods
.method public final zzm(Lzv;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaas;->zzclt:Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;

    invoke-static {p1}, Law;->P(Lzv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/formats/ShouldDelayBannerRenderingListener;->shouldDelayBannerRendering(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method
