.class final synthetic Lcom/google/android/gms/internal/ads/zzbof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzfwo:Lcom/google/android/gms/internal/ads/zzboe;

.field private final zzfwp:Lcom/google/android/gms/internal/ads/zzdzl;

.field private final zzfwq:Lcom/google/android/gms/internal/ads/zzdzw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzboe;Lcom/google/android/gms/internal/ads/zzdzl;Lcom/google/android/gms/internal/ads/zzdzw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbof;->zzfwo:Lcom/google/android/gms/internal/ads/zzboe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbof;->zzfwp:Lcom/google/android/gms/internal/ads/zzdzl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbof;->zzfwq:Lcom/google/android/gms/internal/ads/zzdzw;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbof;->zzfwo:Lcom/google/android/gms/internal/ads/zzboe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbof;->zzfwp:Lcom/google/android/gms/internal/ads/zzdzl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbof;->zzfwq:Lcom/google/android/gms/internal/ads/zzdzw;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnt;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzboe;->zza(Lcom/google/android/gms/internal/ads/zzdzl;Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzbnt;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
