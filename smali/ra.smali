.class public Lra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrb<",
        "Ll8;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lra;

.field private static final b:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lra;

    invoke-direct {v0}, Lra;-><init>()V

    sput-object v0, Lra;->a:Lra;

    const-string v1, "t"

    const-string v2, "f"

    const-string v3, "s"

    const-string v4, "j"

    const-string v5, "tr"

    const-string v6, "lh"

    const-string v7, "ls"

    const-string v8, "fc"

    const-string v9, "sc"

    const-string v10, "sw"

    const-string v11, "of"

    .line 2
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lra;->b:Lub$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lub;F)Ljava/lang/Object;
    .locals 17

    .line 1
    sget-object v0, Ll8$a;->d:Ll8$a;

    .line 2
    invoke-virtual/range {p1 .. p1}, Lub;->L()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v9, v0

    move-object v6, v1

    move-object v7, v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lub;->b0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    sget-object v1, Lra;->b:Lub$a;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lub;->q0(Lub$a;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 5
    invoke-virtual/range {p1 .. p1}, Lub;->r0()V

    .line 6
    invoke-virtual/range {p1 .. p1}, Lub;->s0()V

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lub;->i0()Z

    move-result v16

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lub;->j0()D

    move-result-wide v3

    double-to-float v15, v3

    goto :goto_0

    .line 9
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lza;->a(Lub;)I

    move-result v14

    goto :goto_0

    .line 10
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lza;->a(Lub;)I

    move-result v13

    goto :goto_0

    .line 11
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lub;->j0()D

    move-result-wide v3

    double-to-float v12, v3

    goto :goto_0

    .line 12
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lub;->j0()D

    move-result-wide v3

    double-to-float v11, v3

    goto :goto_0

    .line 13
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lub;->k0()I

    move-result v10

    goto :goto_0

    .line 14
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lub;->k0()I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_1

    if-gez v1, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    invoke-static {}, Ll8$a;->values()[Ll8$a;

    move-result-object v3

    aget-object v9, v3, v1

    goto :goto_0

    :cond_1
    :goto_1
    move-object v9, v0

    goto :goto_0

    .line 16
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lub;->j0()D

    move-result-wide v3

    double-to-float v8, v3

    goto :goto_0

    .line 17
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lub;->m0()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 18
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lub;->m0()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object/from16 v2, p1

    .line 19
    invoke-virtual/range {p1 .. p1}, Lub;->V()V

    .line 20
    new-instance v0, Ll8;

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Ll8;-><init>(Ljava/lang/String;Ljava/lang/String;FLl8$a;IFFIIFZ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
