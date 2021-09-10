.class Lqb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "s"

    const-string v1, "e"

    const-string v2, "o"

    const-string v3, "nm"

    const-string v4, "m"

    const-string v5, "hd"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lqb;->a:Lub$a;

    return-void
.end method

.method static a(Lub;Lcom/airbnb/lottie/e;)Lx9;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    const/4 v9, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2
    sget-object v1, Lqb;->a:Lub$a;

    invoke-virtual {p0, v1}, Lub;->q0(Lub$a;)I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v10, 0x3

    if-eq v1, v10, :cond_4

    const/4 v10, 0x4

    if-eq v1, v10, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lub;->i0()Z

    move-result v9

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lub;->k0()I

    move-result v1

    if-eq v1, v2, :cond_3

    if-ne v1, v3, :cond_2

    .line 6
    sget-object v1, Lx9$a;->c:Lx9$a;

    goto :goto_1

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown trim path type "

    invoke-static {p1, v1}, Lic;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_3
    sget-object v1, Lx9$a;->b:Lx9$a;

    :goto_1
    move-object v5, v1

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 10
    :cond_5
    invoke-static {p0, p1, v0}, Lna;->e(Lub;Lcom/airbnb/lottie/e;Z)Lu8;

    move-result-object v8

    goto :goto_0

    .line 11
    :cond_6
    invoke-static {p0, p1, v0}, Lna;->e(Lub;Lcom/airbnb/lottie/e;Z)Lu8;

    move-result-object v7

    goto :goto_0

    .line 12
    :cond_7
    invoke-static {p0, p1, v0}, Lna;->e(Lub;Lcom/airbnb/lottie/e;Z)Lu8;

    move-result-object v6

    goto :goto_0

    .line 13
    :cond_8
    new-instance p0, Lx9;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lx9;-><init>(Ljava/lang/String;Lx9$a;Lu8;Lu8;Lu8;Z)V

    return-object p0
.end method
