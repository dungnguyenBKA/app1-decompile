.class final synthetic Lcom/google/android/gms/internal/ads/zzdhz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzhfa:Lcom/google/android/gms/internal/ads/zzdhx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdhx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzhfa:Lcom/google/android/gms/internal/ads/zzdhx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhz;->zzhfa:Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zzaud()V

    return-void
.end method
