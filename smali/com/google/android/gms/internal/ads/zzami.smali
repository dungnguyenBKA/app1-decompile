.class final Lcom/google/android/gms/internal/ads/zzami;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/util/zzar;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/util/zzar<",
        "Lcom/google/android/gms/internal/ads/zzakm;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzg(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzakm;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzahm;->zzdhi:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v1, "/log"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzalx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzahm;->zzdhq:Lcom/google/android/gms/internal/ads/zzain;

    const-string v1, "/result"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzalx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    return-void
.end method
