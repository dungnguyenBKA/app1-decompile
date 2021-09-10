.class Leb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "nm"

    const-string v1, "mm"

    const-string v2, "hd"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Leb;->a:Lub$a;

    return-void
.end method

.method static a(Lub;)Lo9;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v1, v0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2
    sget-object v3, Leb;->a:Lub$a;

    invoke-virtual {p0, v3}, Lub;->q0(Lub$a;)I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_0

    .line 3
    invoke-virtual {p0}, Lub;->r0()V

    .line 4
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lub;->i0()Z

    move-result v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lub;->k0()I

    move-result v1

    .line 7
    sget-object v3, Lo9$a;->b:Lo9$a;

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3

    const/4 v4, 0x5

    if-eq v1, v4, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    sget-object v1, Lo9$a;->f:Lo9$a;

    goto :goto_0

    .line 9
    :cond_3
    sget-object v1, Lo9$a;->e:Lo9$a;

    goto :goto_0

    .line 10
    :cond_4
    sget-object v1, Lo9$a;->d:Lo9$a;

    goto :goto_0

    .line 11
    :cond_5
    sget-object v1, Lo9$a;->c:Lo9$a;

    goto :goto_0

    :cond_6
    :goto_1
    move-object v1, v3

    goto :goto_0

    .line 12
    :cond_7
    invoke-virtual {p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_8
    new-instance p0, Lo9;

    invoke-direct {p0, v0, v1, v2}, Lo9;-><init>(Ljava/lang/String;Lo9$a;Z)V

    return-object p0
.end method
