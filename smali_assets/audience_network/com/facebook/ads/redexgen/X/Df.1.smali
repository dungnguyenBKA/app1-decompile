.class public final Lcom/facebook/ads/redexgen/X/Df;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Z7;


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Df;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Df;->A03()V

    return-void
.end method

.method public constructor <init>(JIJ)V
    .locals 9

    .line 27186
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v3, p3

    move-wide v4, p4

    move-wide v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Df;-><init>(JIJJ[J)V

    .line 27187
    return-void
.end method

.method public constructor <init>(JIJJ[J)V
    .locals 0

    .line 27188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27189
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Df;->A02:J

    .line 27190
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    .line 27191
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    .line 27192
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/Df;->A01:J

    .line 27193
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/Df;->A04:[J

    .line 27194
    return-void
.end method

.method private A00(I)J
    .locals 4

    .line 27195
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    int-to-long v0, p1

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x64

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public static A01(JJLcom/facebook/ads/redexgen/X/CM;Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/Df;
    .locals 13

    .line 27196
    move-object/from16 v2, p4

    iget v5, v2, Lcom/facebook/ads/redexgen/X/CM;->A04:I

    .line 27197
    .local v1, "samplesPerFrame":I
    iget v4, v2, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    .line 27198
    .local v0, "sampleRate":I
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v3

    .line 27199
    .local v0, "flags":I
    and-int/lit8 v1, v3, 0x1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    .local v0, "frameCount":I
    if-nez v0, :cond_1

    .line 27200
    .end local v0    # "frameCount":I
    .end local v0
    .end local v8
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 27201
    :cond_1
    int-to-long v6, v0

    int-to-long v8, v5

    const-wide/32 v0, 0xf4240

    mul-long/2addr v8, v0

    int-to-long v10, v4

    .line 27202
    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v8

    .line 27203
    .local v0, "durationUs":J
    and-int/lit8 v1, v3, 0x6

    const/4 v0, 0x6

    move-wide v5, p2

    if-eq v1, v0, :cond_2

    .line 27204
    new-instance v4, Lcom/facebook/ads/redexgen/X/Df;

    iget v7, v2, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Df;-><init>(JIJ)V

    return-object v4

    .line 27205
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    int-to-long v10, v0

    .line 27206
    .local v2, "dataSize":J
    const/16 v4, 0x64

    new-array v12, v4, [J

    .line 27207
    .local v4, "tableOfContents":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 27208
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    int-to-long v0, v0

    aput-wide v0, v12, v3

    .line 27209
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27210
    .end local v3    # "i":I
    :cond_3
    const-wide/16 v3, -0x1

    cmp-long v0, p0, v3

    if-eqz v0, :cond_4

    add-long v3, v5, v10

    cmp-long v0, p0, v3

    if-eqz v0, :cond_4

    .line 27211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    const/16 v1, 0x19

    const/16 v0, 0x51

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x11

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v0, v5, v10

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x1b

    const/16 v1, 0xa

    const/16 v0, 0x60

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27212
    :cond_4
    new-instance v4, Lcom/facebook/ads/redexgen/X/Df;

    iget v7, v2, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    .end local v2    # "dataSize":J
    .local v8, "dataSize":J
    .end local v4    # "tableOfContents":[J
    .local v0, "tableOfContents":[J
    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/Df;-><init>(JIJJ[J)V

    return-object v4
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A06:[Ljava/lang/String;

    const-string v1, "xDmrh2CysME7FGpg0OVAAWQWrb1b5rm7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6a

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 4

    const/16 v3, 0x25

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A06:[Ljava/lang/String;

    const-string v1, "O7i6ampyP1fRYbe4QOmd9JyFrRUTDP0J"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Df;->A05:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x57t
        0x5bt
        0x63t
        0x72t
        0x75t
        0x7ct
        0x1bt
        0x5ft
        0x5at
        0x4ft
        0x5at
        0x1bt
        0x48t
        0x52t
        0x41t
        0x5et
        0x1bt
        0x56t
        0x52t
        0x48t
        0x56t
        0x5at
        0x4ft
        0x58t
        0x53t
        0x1t
        0x1bt
        0x52t
        0x63t
        0x64t
        0x6dt
        0x59t
        0x6ft
        0x6ft
        0x61t
        0x6ft
        0x78t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BIb1Y700RDmcL7JF9Fn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lk1IRtv8jtyAOasrQbC6YrAcVcFJ9"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "71nm4ncPUlnpG5PegzVfukIlQIS7yUOP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GCiVubWGa77lALd1Rb0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "chLweuz0mMl4FbXf4CPkrAmx2V"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NRv5J71Oqm94bOZTTnySoFkmq1d86Acc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fJm6FHaelFV0WMwBghon3E9Gns2th"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ObA7Byd4NJEP2M9ay6ZCFLfldVonyLqe"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Df;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A6J()J
    .locals 2

    .line 27213
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    return-wide v0
.end method

.method public final A77(J)Lcom/facebook/ads/redexgen/X/CO;
    .locals 14

    .line 27214
    move-object v4, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A8D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27215
    const-wide/16 v5, 0x0

    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/Df;->A02:J

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0

    .line 27216
    :cond_0
    const-wide/16 v7, 0x0

    iget-wide v9, v4, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    move-wide v5, p1

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Ic;->A0E(JJJ)J

    move-result-wide v2

    .line 27217
    .end local v9
    .local v5, "timeUs":J
    long-to-double v7, v2

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v9

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/Df;->A03:J

    long-to-double v0, v5

    div-double/2addr v7, v0

    .line 27218
    .local v4, "percent":D
    const-wide/16 v5, 0x0

    const-wide/high16 v12, 0x4070000000000000L    # 256.0

    cmpg-double v0, v7, v5

    if-gtz v0, :cond_1

    .line 27219
    const-wide/16 v5, 0x0

    .line 27220
    .local v5, "scaledPosition":D
    .end local v2
    .end local v11
    .end local v13
    .local v5, "scaledPosition":D
    :goto_0
    div-double/2addr v5, v12

    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/Df;->A01:J

    long-to-double v0, v7

    mul-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    .line 27221
    .local v2, "positionOffset":J
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    int-to-long v7, v0

    iget-wide v9, v4, Lcom/facebook/ads/redexgen/X/Df;->A01:J

    const-wide/16 v0, 0x1

    sub-long/2addr v9, v0

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Ic;->A0E(JJJ)J

    move-result-wide v0

    .line 27222
    iget-wide v4, v4, Lcom/facebook/ads/redexgen/X/Df;->A02:J

    add-long/2addr v4, v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/CQ;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/ads/redexgen/X/CQ;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/CO;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/CO;-><init>(Lcom/facebook/ads/redexgen/X/CQ;)V

    return-object v0

    .line 27223
    .end local v5    # "scaledPosition":D
    :cond_1
    cmpl-double v0, v7, v9

    if-ltz v0, :cond_2

    .line 27224
    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    .restart local v5    # "scaledPosition":D
    goto :goto_0

    .line 27225
    .end local v5    # "scaledPosition":D
    :cond_2
    double-to-int v11, v7

    .line 27226
    .local v5, "prevTableIndex":I
    iget-object v10, v4, Lcom/facebook/ads/redexgen/X/Df;->A04:[J

    aget-wide v0, v10, v11

    long-to-double v5, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Df;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_4

    .line 27227
    .local v2, "prevScaledPosition":D
    sget-object v9, Lcom/facebook/ads/redexgen/X/Df;->A06:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v9, v0

    const/16 v0, 0x63

    if-ne v11, v0, :cond_3

    move-wide v9, v12

    .line 27228
    .local v11, "nextScaledPosition":D
    :goto_1
    int-to-double v0, v11

    sub-double/2addr v7, v0

    .line 27229
    .local v13, "interpolateFraction":D
    sub-double/2addr v9, v5

    mul-double/2addr v9, v7

    add-double/2addr v5, v9

    goto :goto_0

    .line 27230
    :cond_3
    add-int/lit8 v0, v11, 0x1

    aget-wide v0, v10, v0

    long-to-double v9, v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A7L(J)J
    .locals 12

    .line 27231
    move-object v1, p0

    iget-wide v2, v1, Lcom/facebook/ads/redexgen/X/Df;->A02:J

    sub-long/2addr p1, v2

    .line 27232
    .local p1, "positionOffset":J
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A8D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Df;->A00:I

    int-to-long v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Df;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x1

    if-eq v2, v0, :cond_4

    sget-object v5, Lcom/facebook/ads/redexgen/X/Df;->A06:[Ljava/lang/String;

    const-string v2, "XBnVl7Vf2qRXlKywSNR3LOgq8shxQKKO"

    const/4 v0, 0x5

    aput-object v2, v5, v0

    cmp-long v0, p1, v3

    if-gtz v0, :cond_1

    .line 27233
    .end local p1    # "positionOffset":J
    .restart local v2
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 27234
    :cond_1
    long-to-double v2, p1

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    mul-double/2addr v2, v4

    iget-wide v6, v1, Lcom/facebook/ads/redexgen/X/Df;->A01:J

    long-to-double v4, v6

    div-double/2addr v2, v4

    .line 27235
    .local v1, "scaledPosition":D
    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/Df;->A04:[J

    double-to-long v4, v2

    const/4 v0, 0x1

    invoke-static {v6, v4, v5, v0, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0B([JJZZ)I

    move-result v8

    .line 27236
    .local v5, "prevTableIndex":I
    invoke-direct {v1, v8}, Lcom/facebook/ads/redexgen/X/Df;->A00(I)J

    move-result-wide v10

    .line 27237
    .local p1, "prevTimeUs":J
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Df;->A04:[J

    aget-wide v6, v0, v8

    .line 27238
    .local v0, "prevScaledPosition":J
    add-int/lit8 v0, v8, 0x1

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A00(I)J

    move-result-wide v4

    .line 27239
    .local v11, "nextTimeUs":J
    const/16 v0, 0x63

    if-ne v8, v0, :cond_3

    const-wide/16 v8, 0x100

    .line 27240
    .local v0, "nextScaledPosition":J
    :goto_0
    cmp-long v0, v6, v8

    if-nez v0, :cond_2

    .line 27241
    const-wide/16 v2, 0x0

    .line 27242
    .local p0, "interpolateFraction":D
    :goto_1
    sub-long/2addr v4, v10

    long-to-double v0, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    add-long/2addr v0, v10

    return-wide v0

    .line 27243
    .end local p1    # "prevTimeUs":J
    .local v2, "positionOffset":J
    :cond_2
    long-to-double v0, v6

    sub-double/2addr v2, v0

    .end local v1    # "scaledPosition":D
    .local v5, "scaledPosition":D
    sub-long/2addr v8, v6

    long-to-double v0, v8

    div-double/2addr v2, v0

    goto :goto_1

    .line 27244
    :cond_3
    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/Df;->A04:[J

    add-int/lit8 v0, v8, 0x1

    aget-wide v8, v1, v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A8D()Z
    .locals 1

    .line 27245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Df;->A04:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
