.class final synthetic Lcom/google/android/gms/internal/ads/zzcnk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzgom:Lcom/google/android/gms/internal/ads/zzcnf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnk;->zzgom:Lcom/google/android/gms/internal/ads/zzcnf;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnk;->zzgom:Lcom/google/android/gms/internal/ads/zzcnf;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcnf;->zzo(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
