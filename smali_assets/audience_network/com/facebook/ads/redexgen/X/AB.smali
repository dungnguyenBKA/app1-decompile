.class public final Lcom/facebook/ads/redexgen/X/AB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/exoplayer2/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/ads/internal/exoplayer2/Format;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Landroid/os/Parcel;)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 1

    .line 20807
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/exoplayer2/Format;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private final A01(I)[Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 1

    .line 20808
    new-array v0, p1, [Lcom/facebook/ads/internal/exoplayer2/Format;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 20809
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/AB;->A00(Landroid/os/Parcel;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 20810
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/AB;->A01(I)[Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method
