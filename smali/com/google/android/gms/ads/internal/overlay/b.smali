.class final synthetic Lcom/google/android/gms/ads/internal/overlay/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbfq;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/overlay/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/b;->a:Lcom/google/android/gms/ads/internal/overlay/zzc;

    return-void
.end method


# virtual methods
.method public final zzal(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/b;->a:Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->d:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzwb()V

    :cond_0
    return-void
.end method
