.class Lnb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "nm"

    const-string v1, "hd"

    const-string v2, "it"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lnb;->a:Lub$a;

    return-void
.end method

.method static a(Lub;Lcom/airbnb/lottie/e;)Lu9;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3
    sget-object v3, Lnb;->a:Lub$a;

    invoke-virtual {p0, v3}, Lub;->q0(Lub$a;)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 4
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lub;->o()V

    .line 6
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-static {p0, p1}, Lqa;->a(Lub;Lcom/airbnb/lottie/e;)Li9;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lub;->S()V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Lub;->i0()Z

    move-result v2

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 12
    :cond_5
    new-instance p0, Lu9;

    invoke-direct {p0, v1, v0, v2}, Lu9;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    return-object p0
.end method
