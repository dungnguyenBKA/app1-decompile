.class final synthetic Lcom/google/android/gms/internal/ads/zzcdu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaif;


# instance fields
.field private final zzggq:Lcom/google/android/gms/internal/ads/zzcdp;

.field private final zzggt:Landroid/view/View;

.field private final zzggu:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcdp;Landroid/view/View;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdu;->zzggq:Lcom/google/android/gms/internal/ads/zzcdp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdu;->zzggt:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdu;->zzggu:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdu;->zzggq:Lcom/google/android/gms/internal/ads/zzcdp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdu;->zzggt:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdu;->zzggu:Landroid/view/WindowManager;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdp;->zza(Landroid/view/View;Landroid/view/WindowManager;Lcom/google/android/gms/internal/ads/zzbeb;Ljava/util/Map;)V

    return-void
.end method
