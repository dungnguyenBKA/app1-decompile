.class Lmb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "nm"

    const-string v1, "c"

    const-string v2, "o"

    const-string v3, "fillEnabled"

    const-string v4, "r"

    const-string v5, "hd"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lmb;->a:Lub$a;

    return-void
.end method

.method static a(Lub;Lcom/airbnb/lottie/e;)Lt9;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v4, v2

    move-object v7, v4

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2
    sget-object v3, Lmb;->a:Lub$a;

    invoke-virtual {p0, v3}, Lub;->q0(Lub$a;)I

    move-result v3

    if-eqz v3, :cond_5

    if-eq v3, v1, :cond_4

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1

    const/4 v6, 0x5

    if-eq v3, v6, :cond_0

    .line 3
    invoke-virtual {p0}, Lub;->r0()V

    .line 4
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lub;->i0()Z

    move-result v9

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lub;->k0()I

    move-result v0

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lub;->i0()Z

    move-result v5

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {p0, p1}, Lna;->g(Lub;Lcom/airbnb/lottie/e;)Lw8;

    move-result-object v2

    goto :goto_0

    .line 9
    :cond_4
    invoke-static {p0, p1}, Lna;->b(Lub;Lcom/airbnb/lottie/e;)Lt8;

    move-result-object v7

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    if-nez v2, :cond_7

    .line 11
    new-instance p0, Lw8;

    new-instance p1, Lec;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p1, v2}, Lec;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lw8;-><init>(Ljava/util/List;)V

    move-object v8, p0

    goto :goto_1

    :cond_7
    move-object v8, v2

    :goto_1
    if-ne v0, v1, :cond_8

    .line 12
    sget-object p0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_2

    :cond_8
    sget-object p0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_2
    move-object v6, p0

    .line 13
    new-instance p0, Lt9;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lt9;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lt8;Lw8;Z)V

    return-object p0
.end method
