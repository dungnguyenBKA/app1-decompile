.class public final Lcom/google/android/gms/internal/ads/zzajt;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzajt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final versionCode:I

.field public final zzbnt:I

.field public final zzdiz:I

.field public final zzdja:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzajs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajt;->versionCode:I

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzdiz:I

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzdja:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzbnt:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakf;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzakf;->zzuh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzakf;->getMediaAspectRatio()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/google/android/gms/internal/ads/zzajt;-><init>(IILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzdiz:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->k(Landroid/os/Parcel;II)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzdja:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzbnt:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->k(Landroid/os/Parcel;II)V

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajt;->versionCode:I

    const/16 v1, 0x3e8

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->k(Landroid/os/Parcel;II)V

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
