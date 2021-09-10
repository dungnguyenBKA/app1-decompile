.class Loa;
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

    const-string v3, "hd"

    const-string v4, "d"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Loa;->a:Lub$a;

    return-void
.end method

.method static a(Lub;Lcom/airbnb/lottie/e;I)Lh9;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v3, 0x0

    move v8, p2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    const/4 v9, 0x0

    .line 1
    :goto_1
    invoke-virtual {p0}, Lub;->b0()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 2
    sget-object p2, Loa;->a:Lub$a;

    invoke-virtual {p0, p2}, Lub;->q0(Lub$a;)I

    move-result p2

    if-eqz p2, :cond_6

    if-eq p2, v1, :cond_5

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    if-eq p2, v2, :cond_3

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    .line 3
    invoke-virtual {p0}, Lub;->r0()V

    .line 4
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lub;->k0()I

    move-result p2

    if-ne p2, v2, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lub;->i0()Z

    move-result v9

    goto :goto_1

    .line 7
    :cond_4
    invoke-static {p0, p1}, Lna;->h(Lub;Lcom/airbnb/lottie/e;)Ly8;

    move-result-object v7

    goto :goto_1

    .line 8
    :cond_5
    invoke-static {p0, p1}, Lka;->b(Lub;Lcom/airbnb/lottie/e;)Lf9;

    move-result-object v6

    goto :goto_1

    .line 9
    :cond_6
    invoke-virtual {p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 10
    :cond_7
    new-instance p0, Lh9;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lh9;-><init>(Ljava/lang/String;Lf9;Ly8;ZZ)V

    return-object p0
.end method
