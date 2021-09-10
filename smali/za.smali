.class Lza;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "x"

    const-string v1, "y"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lza;->a:Lub$a;

    return-void
.end method

.method static a(Lub;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lub;->o()V

    .line 2
    invoke-virtual {p0}, Lub;->j0()D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 3
    invoke-virtual {p0}, Lub;->j0()D

    move-result-wide v4

    mul-double v4, v4, v2

    double-to-int v1, v4

    .line 4
    invoke-virtual {p0}, Lub;->j0()D

    move-result-wide v4

    mul-double v4, v4, v2

    double-to-int v2, v4

    .line 5
    :goto_0
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lub;->S()V

    const/16 p0, 0xff

    .line 8
    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method static b(Lub;F)Landroid/graphics/PointF;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lub;->o0()Lub$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lub;->j0()D

    move-result-wide v0

    double-to-float v0, v0

    .line 3
    invoke-virtual {p0}, Lub;->j0()D

    move-result-wide v1

    double-to-float v1, v1

    .line 4
    :goto_0
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    mul-float v0, v0, p1

    mul-float v1, v1, p1

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown point starts with "

    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lub;->o0()Lub$b;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lub;->L()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    :goto_1
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10
    sget-object v2, Lza;->a:Lub$a;

    invoke-virtual {p0, v2}, Lub;->q0(Lub$a;)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 11
    invoke-virtual {p0}, Lub;->r0()V

    .line 12
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {p0}, Lza;->d(Lub;)F

    move-result v1

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {p0}, Lza;->d(Lub;)F

    move-result v0

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {p0}, Lub;->V()V

    .line 16
    new-instance p0, Landroid/graphics/PointF;

    mul-float v0, v0, p1

    mul-float v1, v1, p1

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    .line 17
    :cond_6
    invoke-virtual {p0}, Lub;->o()V

    .line 18
    invoke-virtual {p0}, Lub;->j0()D

    move-result-wide v0

    double-to-float v0, v0

    .line 19
    invoke-virtual {p0}, Lub;->j0()D

    move-result-wide v1

    double-to-float v1, v1

    .line 20
    :goto_2
    invoke-virtual {p0}, Lub;->o0()Lub$b;

    move-result-object v2

    sget-object v3, Lub$b;->c:Lub$b;

    if-eq v2, v3, :cond_7

    .line 21
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_2

    .line 22
    :cond_7
    invoke-virtual {p0}, Lub;->S()V

    .line 23
    new-instance p0, Landroid/graphics/PointF;

    mul-float v0, v0, p1

    mul-float v1, v1, p1

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method static c(Lub;F)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lub;",
            "F)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lub;->o()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lub;->o0()Lub$b;

    move-result-object v1

    sget-object v2, Lub$b;->b:Lub$b;

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lub;->o()V

    .line 5
    invoke-static {p0, p1}, Lza;->b(Lub;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lub;->S()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lub;->S()V

    return-object v0
.end method

.method static d(Lub;)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Lub;->o0()Lub$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lub;->j0()D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value for token of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lub;->o()V

    .line 6
    invoke-virtual {p0}, Lub;->j0()D

    move-result-wide v0

    double-to-float v0, v0

    .line 7
    :goto_0
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lub;->S()V

    return v0
.end method
