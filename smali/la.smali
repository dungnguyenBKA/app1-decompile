.class public Lla;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lub$a;

.field private static b:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "a"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lla;->a:Lub$a;

    const-string v0, "fc"

    const-string v1, "sc"

    const-string v2, "sw"

    const-string v3, "t"

    .line 2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lla;->b:Lub$a;

    return-void
.end method

.method public static a(Lub;Lcom/airbnb/lottie/e;)Ld9;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lub;->L()V

    const/4 v0, 0x0

    move-object v1, v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3
    sget-object v2, Lla;->a:Lub$a;

    invoke-virtual {p0, v2}, Lub;->q0(Lub$a;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lub;->r0()V

    .line 5
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lub;->L()V

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 7
    :goto_1
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 8
    sget-object v5, Lla;->b:Lub$a;

    invoke-virtual {p0, v5}, Lub;->q0(Lub$a;)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 9
    invoke-virtual {p0}, Lub;->r0()V

    .line 10
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {p0, p1}, Lna;->d(Lub;Lcom/airbnb/lottie/e;)Lu8;

    move-result-object v4

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {p0, p1}, Lna;->d(Lub;Lcom/airbnb/lottie/e;)Lu8;

    move-result-object v3

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {p0, p1}, Lna;->b(Lub;Lcom/airbnb/lottie/e;)Lt8;

    move-result-object v2

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {p0, p1}, Lna;->b(Lub;Lcom/airbnb/lottie/e;)Lt8;

    move-result-object v1

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {p0}, Lub;->V()V

    .line 16
    new-instance v5, Ld9;

    invoke-direct {v5, v1, v2, v3, v4}, Ld9;-><init>(Lt8;Lt8;Lu8;Lu8;)V

    move-object v1, v5

    goto :goto_0

    .line 17
    :cond_6
    invoke-virtual {p0}, Lub;->V()V

    if-nez v1, :cond_7

    .line 18
    new-instance p0, Ld9;

    invoke-direct {p0, v0, v0, v0, v0}, Ld9;-><init>(Lt8;Lt8;Lu8;Lu8;)V

    return-object p0

    :cond_7
    return-object v1
.end method
