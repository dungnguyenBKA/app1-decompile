.class Lta;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lub$a;

.field private static final b:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "ch"

    const-string v1, "size"

    const-string v2, "w"

    const-string v3, "style"

    const-string v4, "fFamily"

    const-string v5, "data"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lta;->a:Lub$a;

    const-string v0, "shapes"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lta;->b:Lub$a;

    return-void
.end method

.method static a(Lub;Lcom/airbnb/lottie/e;)Ln8;
    .locals 11

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lub;->L()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v7, v2

    move-object v8, v7

    move-wide v5, v3

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4
    sget-object v9, Lta;->a:Lub$a;

    invoke-virtual {p0, v9}, Lub;->q0(Lub$a;)I

    move-result v9

    if-eqz v9, :cond_8

    const/4 v10, 0x1

    if-eq v9, v10, :cond_7

    const/4 v10, 0x2

    if-eq v9, v10, :cond_6

    const/4 v10, 0x3

    if-eq v9, v10, :cond_5

    const/4 v10, 0x4

    if-eq v9, v10, :cond_4

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    .line 5
    invoke-virtual {p0}, Lub;->r0()V

    .line 6
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lub;->L()V

    .line 8
    :goto_1
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 9
    sget-object v9, Lta;->b:Lub$a;

    invoke-virtual {p0, v9}, Lub;->q0(Lub$a;)I

    move-result v9

    if-eqz v9, :cond_1

    .line 10
    invoke-virtual {p0}, Lub;->r0()V

    .line 11
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lub;->o()V

    .line 13
    :goto_2
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 14
    invoke-static {p0, p1}, Lqa;->a(Lub;Lcom/airbnb/lottie/e;)Li9;

    move-result-object v9

    check-cast v9, Lu9;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {p0}, Lub;->S()V

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p0}, Lub;->V()V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {p0}, Lub;->j0()D

    move-result-wide v5

    goto :goto_0

    .line 20
    :cond_7
    invoke-virtual {p0}, Lub;->j0()D

    move-result-wide v3

    goto :goto_0

    .line 21
    :cond_8
    invoke-virtual {p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 22
    :cond_9
    invoke-virtual {p0}, Lub;->V()V

    .line 23
    new-instance p0, Ln8;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Ln8;-><init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
