.class public final Lcom/facebook/ads/redexgen/X/S1;
.super Lcom/facebook/ads/redexgen/X/16;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static A00:[B = null

.field public static final serialVersionUID:J = 0x4fd0ad1c9cd13febL


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/S1;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/19;",
            ">;)V"
        }
    .end annotation

    .line 51844
    .local p1, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/16;-><init>(Ljava/util/List;)V

    .line 51845
    return-void
.end method

.method public static A02(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/XJ;)Lcom/facebook/ads/redexgen/X/S1;
    .locals 2

    .line 51846
    new-instance v0, Lcom/facebook/ads/redexgen/X/S0;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/S0;-><init>()V

    .line 51847
    invoke-static {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/16;->A01(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1L;)Ljava/util/List;

    move-result-object v0

    new-instance p1, Lcom/facebook/ads/redexgen/X/S1;

    invoke-direct {p1, v0}, Lcom/facebook/ads/redexgen/X/S1;-><init>(Ljava/util/List;)V

    .line 51848
    .local p0, "dataBundle":Lcom/facebook/ads/redexgen/X/S1;
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/16;->A0i(Lorg/json/JSONObject;)V

    .line 51849
    const/4 p0, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x43

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/S1;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/16;->A0g(Ljava/lang/String;)V

    .line 51850
    return-object p1
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/S1;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x62

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/S1;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x48t
        0x4ft
        0x55t
        0x44t
        0x53t
        0x52t
        0x55t
        0x48t
        0x55t
        0x48t
        0x40t
        0x4dt
    .end array-data
.end method


# virtual methods
.method public final A0J()I
    .locals 1

    .line 51851
    const/4 v0, 0x0

    return v0
.end method

.method public final A0K()I
    .locals 1

    .line 51852
    const/4 v0, 0x0

    return v0
.end method
