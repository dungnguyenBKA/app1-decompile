.class final synthetic Lcom/google/android/gms/internal/ads/zzbuw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbvh;


# static fields
.field static final zzfzu:Lcom/google/android/gms/internal/ads/zzbvh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbuw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbuw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbuw;->zzfzu:Lcom/google/android/gms/internal/ads/zzbvh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdlh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlh;->onAdClosed()V

    return-void
.end method
