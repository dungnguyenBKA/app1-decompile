.class public Lcom/caverock/androidsvg/c$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "o"
.end annotation


# static fields
.field private static synthetic d:[I


# instance fields
.field b:F

.field c:Lcom/caverock/androidsvg/c$c1;


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    .line 8
    sget-object v0, Lcom/caverock/androidsvg/c$c1;->b:Lcom/caverock/androidsvg/c$c1;

    iput-object v0, p0, Lcom/caverock/androidsvg/c$o;->c:Lcom/caverock/androidsvg/c$c1;

    .line 9
    iput p1, p0, Lcom/caverock/androidsvg/c$o;->b:F

    .line 10
    iput-object v0, p0, Lcom/caverock/androidsvg/c$o;->c:Lcom/caverock/androidsvg/c$c1;

    return-void
.end method

.method public constructor <init>(FLcom/caverock/androidsvg/c$c1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    .line 3
    sget-object v0, Lcom/caverock/androidsvg/c$c1;->b:Lcom/caverock/androidsvg/c$c1;

    iput-object v0, p0, Lcom/caverock/androidsvg/c$o;->c:Lcom/caverock/androidsvg/c$c1;

    .line 4
    iput p1, p0, Lcom/caverock/androidsvg/c$o;->b:F

    .line 5
    iput-object p2, p0, Lcom/caverock/androidsvg/c$o;->c:Lcom/caverock/androidsvg/c$c1;

    return-void
.end method

.method static synthetic a()[I
    .locals 7

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/c$o;->d:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/c$c1;->values()[Lcom/caverock/androidsvg/c$c1;

    const/16 v0, 0x9

    new-array v1, v0, [I

    const/4 v2, 0x5

    const/4 v3, 0x4

    :try_start_0
    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    :try_start_1
    aput v4, v1, v5
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v6, 0x3

    :try_start_2
    aput v6, v1, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    aput v3, v1, v6
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v3, 0x6

    :try_start_4
    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/16 v2, 0x8

    const/4 v4, 0x7

    :try_start_5
    aput v2, v1, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    aput v0, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    aput v4, v1, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v0, 0x0

    :try_start_8
    aput v5, v1, v0
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    sput-object v1, Lcom/caverock/androidsvg/c$o;->d:[I

    return-object v1
.end method


# virtual methods
.method public b(F)F
    .locals 2

    .line 1
    invoke-static {}, Lcom/caverock/androidsvg/c$o;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/c$o;->c:Lcom/caverock/androidsvg/c$c1;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 2
    iget p1, p0, Lcom/caverock/androidsvg/c$o;->b:F

    return p1

    .line 3
    :pswitch_0
    iget v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    mul-float v0, v0, p1

    const/high16 p1, 0x40c00000    # 6.0f

    div-float/2addr v0, p1

    return v0

    .line 4
    :pswitch_1
    iget v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    mul-float v0, v0, p1

    const/high16 p1, 0x42900000    # 72.0f

    div-float/2addr v0, p1

    return v0

    .line 5
    :pswitch_2
    iget v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    mul-float v0, v0, p1

    const p1, 0x41cb3333    # 25.4f

    div-float/2addr v0, p1

    return v0

    .line 6
    :pswitch_3
    iget v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    mul-float v0, v0, p1

    const p1, 0x40228f5c    # 2.54f

    div-float/2addr v0, p1

    return v0

    .line 7
    :pswitch_4
    iget v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    mul-float v0, v0, p1

    return v0

    .line 8
    :cond_0
    iget p1, p0, Lcom/caverock/androidsvg/c$o;->b:F

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lcom/caverock/androidsvg/d;)F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/c$o;->c:Lcom/caverock/androidsvg/c$c1;

    sget-object v1, Lcom/caverock/androidsvg/c$c1;->j:Lcom/caverock/androidsvg/c$c1;

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/caverock/androidsvg/d;->J()Lcom/caverock/androidsvg/c$a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget p1, p0, Lcom/caverock/androidsvg/c$o;->b:F

    return p1

    .line 4
    :cond_0
    iget v0, p1, Lcom/caverock/androidsvg/c$a;->d:F

    .line 5
    iget p1, p1, Lcom/caverock/androidsvg/c$a;->e:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v2, v0, p1

    if-nez v2, :cond_1

    .line 6
    iget p1, p0, Lcom/caverock/androidsvg/c$o;->b:F

    mul-float p1, p1, v0

    div-float/2addr p1, v1

    return p1

    :cond_1
    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr p1, v0

    float-to-double v2, p1

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x3ff6a09e667f3bccL    # 1.414213562373095

    div-double/2addr v2, v4

    double-to-float p1, v2

    .line 8
    iget v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    mul-float v0, v0, p1

    div-float/2addr v0, v1

    return v0

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result p1

    return p1
.end method

.method public d(Lcom/caverock/androidsvg/d;F)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/c$o;->c:Lcom/caverock/androidsvg/c$c1;

    sget-object v1, Lcom/caverock/androidsvg/c$c1;->j:Lcom/caverock/androidsvg/c$c1;

    if-ne v0, v1, :cond_0

    .line 2
    iget p1, p0, Lcom/caverock/androidsvg/c$o;->b:F

    mul-float p1, p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result p1

    return p1
.end method

.method public e(Lcom/caverock/androidsvg/d;)F
    .locals 2

    .line 1
    invoke-static {}, Lcom/caverock/androidsvg/c$o;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/c$o;->c:Lcom/caverock/androidsvg/c$c1;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    iget p1, p0, Lcom/caverock/androidsvg/c$o;->b:F

    return p1

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/d;->J()Lcom/caverock/androidsvg/c$a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    iget p1, p0, Lcom/caverock/androidsvg/c$o;->b:F

    return p1

    .line 5
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    iget p1, p1, Lcom/caverock/androidsvg/c$a;->d:F

    mul-float v0, v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0

    .line 6
    :pswitch_1
    iget v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/d;->K()F

    move-result p1

    mul-float v0, v0, p1

    const/high16 p1, 0x40c00000    # 6.0f

    div-float/2addr v0, p1

    return v0

    .line 7
    :pswitch_2
    iget v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/d;->K()F

    move-result p1

    mul-float v0, v0, p1

    const/high16 p1, 0x42900000    # 72.0f

    div-float/2addr v0, p1

    return v0

    .line 8
    :pswitch_3
    iget v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/d;->K()F

    move-result p1

    mul-float v0, v0, p1

    const p1, 0x41cb3333    # 25.4f

    div-float/2addr v0, p1

    return v0

    .line 9
    :pswitch_4
    iget v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/d;->K()F

    move-result p1

    mul-float v0, v0, p1

    const p1, 0x40228f5c    # 2.54f

    div-float/2addr v0, p1

    return v0

    .line 10
    :pswitch_5
    iget v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/d;->K()F

    move-result p1

    mul-float v0, v0, p1

    return v0

    .line 11
    :pswitch_6
    iget v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/d;->I()F

    move-result p1

    mul-float v0, v0, p1

    return v0

    .line 12
    :pswitch_7
    iget v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/d;->H()F

    move-result p1

    mul-float v0, v0, p1

    return v0

    .line 13
    :pswitch_8
    iget p1, p0, Lcom/caverock/androidsvg/c$o;->b:F

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(Lcom/caverock/androidsvg/d;)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/c$o;->c:Lcom/caverock/androidsvg/c$c1;

    sget-object v1, Lcom/caverock/androidsvg/c$c1;->j:Lcom/caverock/androidsvg/c$c1;

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/caverock/androidsvg/d;->J()Lcom/caverock/androidsvg/c$a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget p1, p0, Lcom/caverock/androidsvg/c$o;->b:F

    return p1

    .line 4
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    iget p1, p1, Lcom/caverock/androidsvg/c$a;->e:F

    mul-float v0, v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result p1

    return p1
.end method

.method public g()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/caverock/androidsvg/c$o;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/caverock/androidsvg/c$o;->b:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/caverock/androidsvg/c$o;->c:Lcom/caverock/androidsvg/c$c1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
