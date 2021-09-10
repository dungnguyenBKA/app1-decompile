.class public final Ll80;
.super Lz60;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz60<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:La70;


# instance fields
.field private final a:Lj60;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll80$a;

    invoke-direct {v0}, Ll80$a;-><init>()V

    sput-object v0, Ll80;->b:La70;

    return-void
.end method

.method constructor <init>(Lj60;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz60;-><init>()V

    .line 2
    iput-object p1, p0, Ll80;->a:Lj60;

    return-void
.end method


# virtual methods
.method public b(La90;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, La90;->x0()Lb90;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, La90;->t0()V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 5
    :cond_1
    invoke-virtual {p1}, La90;->n0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p1}, La90;->o0()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    invoke-virtual {p1}, La90;->v0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    new-instance v0, Lv70;

    invoke-direct {v0}, Lv70;-><init>()V

    .line 9
    invoke-virtual {p1}, La90;->o()V

    .line 10
    :goto_0
    invoke-virtual {p1}, La90;->j0()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p1}, La90;->r0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Ll80;->b(La90;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lv70;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p1}, La90;->b0()V

    return-object v0

    .line 13
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {p1}, La90;->j()V

    .line 15
    :goto_1
    invoke-virtual {p1}, La90;->j0()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {p0, p1}, Ll80;->b(La90;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_7
    invoke-virtual {p1}, La90;->V()V

    return-object v0
.end method

.method public c(Lc90;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lc90;->n0()Lc90;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ll80;->a:Lj60;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v1}, Lz80;->get(Ljava/lang/Class;)Lz80;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj60;->e(Lz80;)Lz60;

    move-result-object v0

    .line 5
    instance-of v1, v0, Ll80;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lc90;->L()Lc90;

    .line 7
    invoke-virtual {p1}, Lc90;->b0()Lc90;

    return-void

    .line 8
    :cond_1
    invoke-virtual {v0, p1, p2}, Lz60;->c(Lc90;Ljava/lang/Object;)V

    return-void
.end method
