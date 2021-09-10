.class final Lcom/google/android/gms/internal/ads/zzayz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzazb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaza;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzel(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzazc;-><init>(Lcom/google/android/gms/internal/ads/zzayz;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
