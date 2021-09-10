.class public Lka;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "k"

    const-string v1, "x"

    const-string v2, "y"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lka;->a:Lub$a;

    return-void
.end method

.method public static a(Lub;Lcom/airbnb/lottie/e;)Lx8;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lub;->o0()Lub$b;

    move-result-object v1

    sget-object v2, Lub$b;->b:Lub$b;

    if-ne v1, v2, :cond_2

    .line 3
    invoke-virtual {p0}, Lub;->o()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lub;->o0()Lub$b;

    move-result-object v1

    sget-object v2, Lub$b;->d:Lub$b;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_1
    invoke-static {}, Ldc;->c()F

    move-result v2

    sget-object v3, Lfb;->a:Lfb;

    .line 7
    invoke-static {p0, p1, v2, v3, v1}, Lab;->a(Lub;Lcom/airbnb/lottie/e;FLrb;Z)Lec;

    move-result-object v1

    .line 8
    new-instance v2, Lz7;

    invoke-direct {v2, p1, v1}, Lz7;-><init>(Lcom/airbnb/lottie/e;Lec;)V

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lub;->S()V

    .line 11
    invoke-static {v0}, Lbb;->b(Ljava/util/List;)V

    goto :goto_2

    .line 12
    :cond_2
    new-instance p1, Lec;

    invoke-static {}, Ldc;->c()F

    move-result v1

    invoke-static {p0, v1}, Lza;->b(Lub;F)Landroid/graphics/PointF;

    move-result-object p0

    invoke-direct {p1, p0}, Lec;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :goto_2
    new-instance p0, Lx8;

    invoke-direct {p0, v0}, Lx8;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method static b(Lub;Lcom/airbnb/lottie/e;)Lf9;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lub;",
            "Lcom/airbnb/lottie/e;",
            ")",
            "Lf9<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lub$b;->g:Lub$b;

    .line 2
    invoke-virtual {p0}, Lub;->L()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v3, v2

    move-object v4, v3

    const/4 v5, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lub;->o0()Lub$b;

    move-result-object v6

    sget-object v7, Lub$b;->e:Lub$b;

    if-eq v6, v7, :cond_5

    .line 4
    sget-object v6, Lka;->a:Lub$a;

    invoke-virtual {p0, v6}, Lub;->q0(Lub$a;)I

    move-result v6

    if-eqz v6, :cond_4

    if-eq v6, v1, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 5
    invoke-virtual {p0}, Lub;->r0()V

    .line 6
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lub;->o0()Lub$b;

    move-result-object v6

    if-ne v6, v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {p0, p1}, Lna;->d(Lub;Lcom/airbnb/lottie/e;)Lu8;

    move-result-object v4

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lub;->o0()Lub$b;

    move-result-object v6

    if-ne v6, v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lub;->s0()V

    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {p0, p1}, Lna;->d(Lub;Lcom/airbnb/lottie/e;)Lu8;

    move-result-object v3

    goto :goto_0

    .line 13
    :cond_4
    invoke-static {p0, p1}, Lka;->a(Lub;Lcom/airbnb/lottie/e;)Lx8;

    move-result-object v2

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p0}, Lub;->V()V

    if-eqz v5, :cond_6

    const-string p0, "Lottie doesn\'t support expressions."

    .line 15
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_7

    return-object v2

    .line 16
    :cond_7
    new-instance p0, Lb9;

    invoke-direct {p0, v3, v4}, Lb9;-><init>(Lu8;Lu8;)V

    return-object p0
.end method
