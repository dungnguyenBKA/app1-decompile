.class public Lna;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lub;Lcom/airbnb/lottie/e;Lrb;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lub;",
            "Lcom/airbnb/lottie/e;",
            "Lrb<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lec<",
            "TT;>;>;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p0, p1, v0, p2}, Lbb;->a(Lub;Lcom/airbnb/lottie/e;FLrb;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static b(Lub;Lcom/airbnb/lottie/e;)Lt8;
    .locals 2

    .line 1
    new-instance v0, Lt8;

    sget-object v1, Lpa;->a:Lpa;

    invoke-static {p0, p1, v1}, Lna;->a(Lub;Lcom/airbnb/lottie/e;Lrb;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lt8;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static c(Lub;Lcom/airbnb/lottie/e;)Lc9;
    .locals 2

    .line 1
    new-instance v0, Lc9;

    sget-object v1, Lra;->a:Lra;

    invoke-static {p0, p1, v1}, Lna;->a(Lub;Lcom/airbnb/lottie/e;Lrb;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lc9;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static d(Lub;Lcom/airbnb/lottie/e;)Lu8;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lna;->e(Lub;Lcom/airbnb/lottie/e;Z)Lu8;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lub;Lcom/airbnb/lottie/e;Z)Lu8;
    .locals 2

    .line 1
    new-instance v0, Lu8;

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, Ldc;->c()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lsa;->a:Lsa;

    .line 3
    invoke-static {p0, p1, p2, v1}, Lbb;->a(Lub;Lcom/airbnb/lottie/e;FLrb;)Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-direct {v0, p0}, Lu8;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static f(Lub;Lcom/airbnb/lottie/e;I)Lv8;
    .locals 2

    .line 1
    new-instance v0, Lv8;

    new-instance v1, Lva;

    invoke-direct {v1, p2}, Lva;-><init>(I)V

    .line 2
    invoke-static {p0, p1, v1}, Lna;->a(Lub;Lcom/airbnb/lottie/e;Lrb;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lv8;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static g(Lub;Lcom/airbnb/lottie/e;)Lw8;
    .locals 2

    .line 1
    new-instance v0, Lw8;

    sget-object v1, Lya;->a:Lya;

    invoke-static {p0, p1, v1}, Lna;->a(Lub;Lcom/airbnb/lottie/e;Lrb;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lw8;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static h(Lub;Lcom/airbnb/lottie/e;)Ly8;
    .locals 3

    .line 1
    new-instance v0, Ly8;

    .line 2
    invoke-static {}, Ldc;->c()F

    move-result v1

    sget-object v2, Lgb;->a:Lgb;

    .line 3
    invoke-static {p0, p1, v1, v2}, Lbb;->a(Lub;Lcom/airbnb/lottie/e;FLrb;)Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-direct {v0, p0}, Ly8;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static i(Lub;Lcom/airbnb/lottie/e;)Lz8;
    .locals 2

    .line 1
    new-instance v0, Lz8;

    sget-object v1, Lkb;->a:Lkb;

    invoke-static {p0, p1, v1}, Lna;->a(Lub;Lcom/airbnb/lottie/e;Lrb;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lz8;-><init>(Ljava/util/List;)V

    return-object v0
.end method
