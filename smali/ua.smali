.class Lua;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "fFamily"

    const-string v1, "fName"

    const-string v2, "fStyle"

    const-string v3, "ascent"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lua;->a:Lub$a;

    return-void
.end method

.method static a(Lub;)Lm8;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lub;->L()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v1, v0

    move-object v2, v1

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3
    sget-object v4, Lua;->a:Lub$a;

    invoke-virtual {p0, v4}, Lub;->q0(Lub$a;)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 4
    invoke-virtual {p0}, Lub;->r0()V

    .line 5
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lub;->j0()D

    move-result-wide v3

    double-to-float v3, v3

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p0}, Lub;->V()V

    .line 11
    new-instance p0, Lm8;

    invoke-direct {p0, v0, v1, v2, v3}, Lm8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    return-object p0
.end method
