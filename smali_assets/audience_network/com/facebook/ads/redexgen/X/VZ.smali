.class public final Lcom/facebook/ads/redexgen/X/VZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuildConfigParams"
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Ljava/lang/Class;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A03:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A04:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A05:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A06:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VZ;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VZ;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 56394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56395
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VZ;->A01:Ljava/lang/Class;

    .line 56396
    const/4 v2, 0x0

    const/16 v1, 0xe

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A02(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VZ;->A03:Ljava/lang/String;

    .line 56397
    const/16 v2, 0xe

    const/16 v1, 0xa

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A02(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VZ;->A04:Ljava/lang/String;

    .line 56398
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VZ;->A00()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VZ;->A00:Ljava/lang/Boolean;

    .line 56399
    const/16 v2, 0x1d

    const/4 v1, 0x6

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A02(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VZ;->A05:Ljava/lang/String;

    .line 56400
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VZ;->A01()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VZ;->A02:Ljava/lang/Integer;

    .line 56401
    const/16 v2, 0x2f

    const/16 v1, 0xc

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A02(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VZ;->A06:Ljava/lang/String;

    .line 56402
    return-void
.end method

.method private A00()Ljava/lang/Boolean;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 56403
    const/16 v2, 0x18

    const/4 v1, 0x5

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A02(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 56404
    .local p0, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v0, v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 56405
    check-cast v1, Ljava/lang/Boolean;

    return-object v1

    .line 56406
    :cond_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/VZ;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/VZ;->A08:[Ljava/lang/String;

    const-string v1, "5rAhOQ4yCQtmZH2DOI09MtNNwfO3P8Pu"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3
.end method

.method private A01()Ljava/lang/Integer;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 56407
    const/16 v2, 0x23

    const/16 v1, 0xc

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A02(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 56408
    .local p0, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 56409
    check-cast v1, Ljava/lang/Integer;

    return-object v1

    .line 56410
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private A02(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 56411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VZ;->A01:Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 56412
    return-object v2

    .line 56413
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 56414
    .local p0, "f":Ljava/lang/reflect/Field;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 56415
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56416
    .local p0, "result":Ljava/lang/Object;
    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56417
    .end local p0    # "result":Ljava/lang/Object;
    .local p0, "t":Ljava/lang/Throwable;
    :catchall_0
    const/4 v0, 0x0

    .line 56418
    .local p0, "result":Ljava/lang/Object;
    :goto_0
    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VZ;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3

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

    const/16 v0, 0x46

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VZ;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x45t
        0x54t
        0x54t
        0x50t
        0x4dt
        0x47t
        0x45t
        0x58t
        0x4dt
        0x53t
        0x52t
        0x63t
        0x4dt
        0x48t
        0x6dt
        -0x80t
        0x74t
        0x77t
        0x6ft
        -0x76t
        0x7ft
        -0x7ct
        0x7bt
        0x70t
        -0x40t
        -0x3ft
        -0x42t
        -0x2ft
        -0x3dt
        -0x4bt
        -0x45t
        -0x50t
        -0x3bt
        -0x42t
        -0x3ft
        0x6ft
        0x5et
        0x6bt
        0x6ct
        0x62t
        0x68t
        0x67t
        0x78t
        0x5ct
        0x68t
        0x5dt
        0x5et
        -0x48t
        -0x59t
        -0x4ct
        -0x4bt
        -0x55t
        -0x4ft
        -0x50t
        -0x3ft
        -0x50t
        -0x5dt
        -0x51t
        -0x59t
        -0x4bt
        -0x43t
        -0x48t
        -0x7et
        -0x6ct
        -0x47t
        0x76t
        -0x23t
        -0x36t
        -0x37t
        -0x3ft
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zADoCz7CvaAXCWGxIkLMA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2K9Tl656qkZLtu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tA5GWw487qRnfnLR8ZUKtFfZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8guEXZpZHmWlQufm4UgBospnJN08RLPS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "reqYVU9na7rP88BTCXg8my3jxoKE4TRG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MzyMe4eMojZOEHVqOT5gIPpA5hojcKAH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7FMMtqZgbhamEAamoQeZvH6n"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zBoYgH9ApIW8fufW6Vp76"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VZ;->A08:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A80(Ljava/lang/Object;)Z
    .locals 2

    .line 56419
    check-cast p1, Lcom/facebook/ads/redexgen/X/VZ;

    .line 56420
    .local p0, "oldBuildConfigParams":Lcom/facebook/ads/redexgen/X/VZ;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VZ;->A03:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VZ;->A03:Ljava/lang/String;

    .line 56421
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VZ;->A04:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VZ;->A04:Ljava/lang/String;

    .line 56422
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VZ;->A00:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VZ;->A00:Ljava/lang/Boolean;

    .line 56423
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VZ;->A05:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VZ;->A05:Ljava/lang/String;

    .line 56424
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VZ;->A02:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VZ;->A02:Ljava/lang/Integer;

    .line 56425
    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VZ;->A06:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VZ;->A06:Ljava/lang/String;

    .line 56426
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 56427
    :goto_0
    return v0

    .line 56428
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ADz()I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.String.length"
        }
    .end annotation

    .line 56429
    const/16 v2, 0x3b

    const/4 v1, 0x3

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 56430
    const/16 v2, 0x3e

    const/4 v1, 0x2

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    .line 56431
    const/16 v2, 0x40

    const/4 v1, 0x1

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    .line 56432
    const/16 v2, 0x41

    const/4 v1, 0x1

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    .line 56433
    const/16 v2, 0x42

    const/4 v1, 0x2

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    .line 56434
    const/16 v2, 0x44

    const/4 v1, 0x2

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v3, 0x4

    add-int/lit8 v3, v0, 0x8

    .line 56435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VZ;->A03:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    add-int/2addr v3, v0

    .line 56436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VZ;->A04:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    add-int/2addr v3, v0

    .line 56437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VZ;->A05:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2
    add-int/2addr v3, v0

    .line 56438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VZ;->A06:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    add-int/2addr v3, v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/VZ;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56439
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 56440
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 56441
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 56442
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/VZ;->A08:[Ljava/lang/String;

    const-string v1, "fJLk3OPl80DEMs1cbmgpYGaX1xXfMNis"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "sJFPBoXBMcAwH7zCTBg0tDpz8XLZJTWR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3
.end method

.method public final AEJ()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 56443
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 56444
    .local p0, "jsonObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VZ;->A03:Ljava/lang/String;

    const/16 v2, 0x3b

    const/4 v1, 0x3

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56445
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VZ;->A04:Ljava/lang/String;

    const/16 v2, 0x3e

    const/4 v1, 0x2

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56446
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VZ;->A00:Ljava/lang/Boolean;

    const/16 v2, 0x40

    const/4 v1, 0x1

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56447
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VZ;->A05:Ljava/lang/String;

    const/16 v2, 0x41

    const/4 v1, 0x1

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56448
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VZ;->A02:Ljava/lang/Integer;

    const/16 v2, 0x42

    const/4 v1, 0x2

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56449
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VZ;->A06:Ljava/lang/String;

    const/16 v2, 0x44

    const/4 v1, 0x2

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VZ;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56450
    return-object v4
.end method
