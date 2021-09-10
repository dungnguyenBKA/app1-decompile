.class Lib;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "nm"

    const-string v1, "p"

    const-string v2, "s"

    const-string v3, "r"

    const-string v4, "hd"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lib;->a:Lub$a;

    return-void
.end method

.method static a(Lub;Lcom/airbnb/lottie/e;)Lq9;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    const/4 v7, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    sget-object v0, Lib;->a:Lub$a;

    invoke-virtual {p0, v0}, Lub;->q0(Lub$a;)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lub;->i0()Z

    move-result v7

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0, p1}, Lna;->d(Lub;Lcom/airbnb/lottie/e;)Lu8;

    move-result-object v6

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p0, p1}, Lna;->h(Lub;Lcom/airbnb/lottie/e;)Ly8;

    move-result-object v5

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {p0, p1}, Lka;->b(Lub;Lcom/airbnb/lottie/e;)Lf9;

    move-result-object v4

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 9
    :cond_5
    new-instance p0, Lq9;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lq9;-><init>(Ljava/lang/String;Lf9;Ly8;Lu8;Z)V

    return-object p0
.end method
