.class Lhb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "nm"

    const-string v1, "sy"

    const-string v2, "pt"

    const-string v3, "p"

    const-string v4, "r"

    const-string v5, "or"

    const-string v6, "os"

    const-string v7, "ir"

    const-string v8, "is"

    const-string v9, "hd"

    .line 1
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lhb;->a:Lub$a;

    return-void
.end method

.method static a(Lub;Lcom/airbnb/lottie/e;)Lp9;
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    const/4 v12, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lhb;->a:Lub$a;

    invoke-virtual {p0, v1}, Lub;->q0(Lub$a;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3
    invoke-virtual {p0}, Lub;->r0()V

    .line 4
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-virtual {p0}, Lub;->i0()Z

    move-result v12

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-static {p0, p1, v0}, Lna;->e(Lub;Lcom/airbnb/lottie/e;Z)Lu8;

    move-result-object v10

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-static {p0, p1}, Lna;->d(Lub;Lcom/airbnb/lottie/e;)Lu8;

    move-result-object v8

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-static {p0, p1, v0}, Lna;->e(Lub;Lcom/airbnb/lottie/e;Z)Lu8;

    move-result-object v11

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-static {p0, p1}, Lna;->d(Lub;Lcom/airbnb/lottie/e;)Lu8;

    move-result-object v9

    goto :goto_0

    .line 10
    :pswitch_5
    invoke-static {p0, p1, v0}, Lna;->e(Lub;Lcom/airbnb/lottie/e;Z)Lu8;

    move-result-object v7

    goto :goto_0

    .line 11
    :pswitch_6
    invoke-static {p0, p1}, Lka;->b(Lub;Lcom/airbnb/lottie/e;)Lf9;

    move-result-object v6

    goto :goto_0

    .line 12
    :pswitch_7
    invoke-static {p0, p1, v0}, Lna;->e(Lub;Lcom/airbnb/lottie/e;Z)Lu8;

    move-result-object v5

    goto :goto_0

    .line 13
    :pswitch_8
    invoke-virtual {p0}, Lub;->k0()I

    move-result v1

    invoke-static {v1}, Lp9$a;->a(I)Lp9$a;

    move-result-object v4

    goto :goto_0

    .line 14
    :pswitch_9
    invoke-virtual {p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Lp9;

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lp9;-><init>(Ljava/lang/String;Lp9$a;Lu8;Lf9;Lu8;Lu8;Lu8;Lu8;Lu8;Z)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
