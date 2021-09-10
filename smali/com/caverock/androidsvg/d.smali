.class public Lcom/caverock/androidsvg/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/d$a;,
        Lcom/caverock/androidsvg/d$b;,
        Lcom/caverock/androidsvg/d$c;,
        Lcom/caverock/androidsvg/d$d;,
        Lcom/caverock/androidsvg/d$e;,
        Lcom/caverock/androidsvg/d$f;,
        Lcom/caverock/androidsvg/d$g;,
        Lcom/caverock/androidsvg/d$h;,
        Lcom/caverock/androidsvg/d$i;,
        Lcom/caverock/androidsvg/d$j;
    }
.end annotation


# static fields
.field private static synthetic k:[I

.field private static synthetic l:[I

.field private static synthetic m:[I

.field private static synthetic n:[I


# instance fields
.field private a:Landroid/graphics/Canvas;

.field private b:Lcom/caverock/androidsvg/c$a;

.field private c:Z

.field private d:Lcom/caverock/androidsvg/c;

.field private e:Lcom/caverock/androidsvg/d$g;

.field private f:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/caverock/androidsvg/d$g;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/caverock/androidsvg/c$i0;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/c$a;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    .line 3
    iput-object p2, p0, Lcom/caverock/androidsvg/d;->b:Lcom/caverock/androidsvg/c$a;

    return-void
.end method

.method private A(Lcom/caverock/androidsvg/c$i;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    invoke-virtual {v0, p2}, Lcom/caverock/androidsvg/c;->k(Ljava/lang/String;)Lcom/caverock/androidsvg/c$m0;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "Gradient reference \'%s\' not found"

    .line 2
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/d;->i0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    instance-of v3, v0, Lcom/caverock/androidsvg/c$i;

    if-nez v3, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Gradient href attributes must point to other gradient elements"

    .line 4
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-ne v0, p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "Circular reference in gradient href attribute \'%s\'"

    .line 5
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_2
    move-object p2, v0

    check-cast p2, Lcom/caverock/androidsvg/c$i;

    .line 7
    iget-object v1, p1, Lcom/caverock/androidsvg/c$i;->i:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 8
    iget-object v1, p2, Lcom/caverock/androidsvg/c$i;->i:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/caverock/androidsvg/c$i;->i:Ljava/lang/Boolean;

    .line 9
    :cond_3
    iget-object v1, p1, Lcom/caverock/androidsvg/c$i;->j:Landroid/graphics/Matrix;

    if-nez v1, :cond_4

    .line 10
    iget-object v1, p2, Lcom/caverock/androidsvg/c$i;->j:Landroid/graphics/Matrix;

    iput-object v1, p1, Lcom/caverock/androidsvg/c$i;->j:Landroid/graphics/Matrix;

    .line 11
    :cond_4
    iget-object v1, p1, Lcom/caverock/androidsvg/c$i;->k:Lcom/caverock/androidsvg/c$j;

    if-nez v1, :cond_5

    .line 12
    iget-object v1, p2, Lcom/caverock/androidsvg/c$i;->k:Lcom/caverock/androidsvg/c$j;

    iput-object v1, p1, Lcom/caverock/androidsvg/c$i;->k:Lcom/caverock/androidsvg/c$j;

    .line 13
    :cond_5
    iget-object v1, p1, Lcom/caverock/androidsvg/c$i;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    iget-object v1, p2, Lcom/caverock/androidsvg/c$i;->h:Ljava/util/List;

    iput-object v1, p1, Lcom/caverock/androidsvg/c$i;->h:Ljava/util/List;

    .line 15
    :cond_6
    :try_start_0
    instance-of v1, p1, Lcom/caverock/androidsvg/c$l0;

    if-eqz v1, :cond_a

    .line 16
    move-object v1, p1

    check-cast v1, Lcom/caverock/androidsvg/c$l0;

    check-cast v0, Lcom/caverock/androidsvg/c$l0;

    .line 17
    iget-object v2, v1, Lcom/caverock/androidsvg/c$l0;->m:Lcom/caverock/androidsvg/c$o;

    if-nez v2, :cond_7

    .line 18
    iget-object v2, v0, Lcom/caverock/androidsvg/c$l0;->m:Lcom/caverock/androidsvg/c$o;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$l0;->m:Lcom/caverock/androidsvg/c$o;

    .line 19
    :cond_7
    iget-object v2, v1, Lcom/caverock/androidsvg/c$l0;->n:Lcom/caverock/androidsvg/c$o;

    if-nez v2, :cond_8

    .line 20
    iget-object v2, v0, Lcom/caverock/androidsvg/c$l0;->n:Lcom/caverock/androidsvg/c$o;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$l0;->n:Lcom/caverock/androidsvg/c$o;

    .line 21
    :cond_8
    iget-object v2, v1, Lcom/caverock/androidsvg/c$l0;->o:Lcom/caverock/androidsvg/c$o;

    if-nez v2, :cond_9

    .line 22
    iget-object v2, v0, Lcom/caverock/androidsvg/c$l0;->o:Lcom/caverock/androidsvg/c$o;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$l0;->o:Lcom/caverock/androidsvg/c$o;

    .line 23
    :cond_9
    iget-object v2, v1, Lcom/caverock/androidsvg/c$l0;->p:Lcom/caverock/androidsvg/c$o;

    if-nez v2, :cond_b

    .line 24
    iget-object v0, v0, Lcom/caverock/androidsvg/c$l0;->p:Lcom/caverock/androidsvg/c$o;

    iput-object v0, v1, Lcom/caverock/androidsvg/c$l0;->p:Lcom/caverock/androidsvg/c$o;

    goto :goto_0

    .line 25
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/caverock/androidsvg/c$p0;

    check-cast v0, Lcom/caverock/androidsvg/c$p0;

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/d;->B(Lcom/caverock/androidsvg/c$p0;Lcom/caverock/androidsvg/c$p0;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 26
    :cond_b
    :goto_0
    iget-object p2, p2, Lcom/caverock/androidsvg/c$i;->l:Ljava/lang/String;

    if-eqz p2, :cond_c

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/caverock/androidsvg/d;->A(Lcom/caverock/androidsvg/c$i;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private B(Lcom/caverock/androidsvg/c$p0;Lcom/caverock/androidsvg/c$p0;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/caverock/androidsvg/c$p0;->m:Lcom/caverock/androidsvg/c$o;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p2, Lcom/caverock/androidsvg/c$p0;->m:Lcom/caverock/androidsvg/c$o;

    iput-object v0, p1, Lcom/caverock/androidsvg/c$p0;->m:Lcom/caverock/androidsvg/c$o;

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/c$p0;->n:Lcom/caverock/androidsvg/c$o;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p2, Lcom/caverock/androidsvg/c$p0;->n:Lcom/caverock/androidsvg/c$o;

    iput-object v0, p1, Lcom/caverock/androidsvg/c$p0;->n:Lcom/caverock/androidsvg/c$o;

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/c$p0;->o:Lcom/caverock/androidsvg/c$o;

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p2, Lcom/caverock/androidsvg/c$p0;->o:Lcom/caverock/androidsvg/c$o;

    iput-object v0, p1, Lcom/caverock/androidsvg/c$p0;->o:Lcom/caverock/androidsvg/c$o;

    .line 7
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/c$p0;->p:Lcom/caverock/androidsvg/c$o;

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p2, Lcom/caverock/androidsvg/c$p0;->p:Lcom/caverock/androidsvg/c$o;

    iput-object v0, p1, Lcom/caverock/androidsvg/c$p0;->p:Lcom/caverock/androidsvg/c$o;

    .line 9
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/c$p0;->q:Lcom/caverock/androidsvg/c$o;

    if-nez v0, :cond_4

    .line 10
    iget-object p2, p2, Lcom/caverock/androidsvg/c$p0;->q:Lcom/caverock/androidsvg/c$o;

    iput-object p2, p1, Lcom/caverock/androidsvg/c$p0;->q:Lcom/caverock/androidsvg/c$o;

    :cond_4
    return-void
.end method

.method private C(Lcom/caverock/androidsvg/c$x;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    invoke-virtual {v0, p2}, Lcom/caverock/androidsvg/c;->k(Ljava/lang/String;)Lcom/caverock/androidsvg/c$m0;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "Pattern reference \'%s\' not found"

    .line 2
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/d;->i0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    instance-of v3, v0, Lcom/caverock/androidsvg/c$x;

    if-nez v3, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Pattern href attributes must point to other pattern elements"

    .line 4
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-ne v0, p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "Circular reference in pattern href attribute \'%s\'"

    .line 5
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_2
    check-cast v0, Lcom/caverock/androidsvg/c$x;

    .line 7
    iget-object p2, p1, Lcom/caverock/androidsvg/c$x;->p:Ljava/lang/Boolean;

    if-nez p2, :cond_3

    .line 8
    iget-object p2, v0, Lcom/caverock/androidsvg/c$x;->p:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/caverock/androidsvg/c$x;->p:Ljava/lang/Boolean;

    .line 9
    :cond_3
    iget-object p2, p1, Lcom/caverock/androidsvg/c$x;->q:Ljava/lang/Boolean;

    if-nez p2, :cond_4

    .line 10
    iget-object p2, v0, Lcom/caverock/androidsvg/c$x;->q:Ljava/lang/Boolean;

    iput-object p2, p1, Lcom/caverock/androidsvg/c$x;->q:Ljava/lang/Boolean;

    .line 11
    :cond_4
    iget-object p2, p1, Lcom/caverock/androidsvg/c$x;->r:Landroid/graphics/Matrix;

    if-nez p2, :cond_5

    .line 12
    iget-object p2, v0, Lcom/caverock/androidsvg/c$x;->r:Landroid/graphics/Matrix;

    iput-object p2, p1, Lcom/caverock/androidsvg/c$x;->r:Landroid/graphics/Matrix;

    .line 13
    :cond_5
    iget-object p2, p1, Lcom/caverock/androidsvg/c$x;->s:Lcom/caverock/androidsvg/c$o;

    if-nez p2, :cond_6

    .line 14
    iget-object p2, v0, Lcom/caverock/androidsvg/c$x;->s:Lcom/caverock/androidsvg/c$o;

    iput-object p2, p1, Lcom/caverock/androidsvg/c$x;->s:Lcom/caverock/androidsvg/c$o;

    .line 15
    :cond_6
    iget-object p2, p1, Lcom/caverock/androidsvg/c$x;->t:Lcom/caverock/androidsvg/c$o;

    if-nez p2, :cond_7

    .line 16
    iget-object p2, v0, Lcom/caverock/androidsvg/c$x;->t:Lcom/caverock/androidsvg/c$o;

    iput-object p2, p1, Lcom/caverock/androidsvg/c$x;->t:Lcom/caverock/androidsvg/c$o;

    .line 17
    :cond_7
    iget-object p2, p1, Lcom/caverock/androidsvg/c$x;->u:Lcom/caverock/androidsvg/c$o;

    if-nez p2, :cond_8

    .line 18
    iget-object p2, v0, Lcom/caverock/androidsvg/c$x;->u:Lcom/caverock/androidsvg/c$o;

    iput-object p2, p1, Lcom/caverock/androidsvg/c$x;->u:Lcom/caverock/androidsvg/c$o;

    .line 19
    :cond_8
    iget-object p2, p1, Lcom/caverock/androidsvg/c$x;->v:Lcom/caverock/androidsvg/c$o;

    if-nez p2, :cond_9

    .line 20
    iget-object p2, v0, Lcom/caverock/androidsvg/c$x;->v:Lcom/caverock/androidsvg/c$o;

    iput-object p2, p1, Lcom/caverock/androidsvg/c$x;->v:Lcom/caverock/androidsvg/c$o;

    .line 21
    :cond_9
    iget-object p2, p1, Lcom/caverock/androidsvg/c$g0;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 22
    iget-object p2, v0, Lcom/caverock/androidsvg/c$g0;->i:Ljava/util/List;

    iput-object p2, p1, Lcom/caverock/androidsvg/c$g0;->i:Ljava/util/List;

    .line 23
    :cond_a
    iget-object p2, p1, Lcom/caverock/androidsvg/c$q0;->o:Lcom/caverock/androidsvg/c$a;

    if-nez p2, :cond_b

    .line 24
    iget-object p2, v0, Lcom/caverock/androidsvg/c$q0;->o:Lcom/caverock/androidsvg/c$a;

    iput-object p2, p1, Lcom/caverock/androidsvg/c$q0;->o:Lcom/caverock/androidsvg/c$a;

    .line 25
    :cond_b
    iget-object p2, p1, Lcom/caverock/androidsvg/c$o0;->n:Lcom/caverock/androidsvg/b;

    if-nez p2, :cond_c

    .line 26
    iget-object p2, v0, Lcom/caverock/androidsvg/c$o0;->n:Lcom/caverock/androidsvg/b;

    iput-object p2, p1, Lcom/caverock/androidsvg/c$o0;->n:Lcom/caverock/androidsvg/b;

    .line 27
    :cond_c
    iget-object p2, v0, Lcom/caverock/androidsvg/c$x;->w:Ljava/lang/String;

    if-eqz p2, :cond_d

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/caverock/androidsvg/d;->C(Lcom/caverock/androidsvg/c$x;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private D(Lcom/caverock/androidsvg/c$m0;)Lcom/caverock/androidsvg/d$g;
    .locals 2

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/d$g;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/d$g;-><init>(Lcom/caverock/androidsvg/d;)V

    .line 2
    invoke-static {}, Lcom/caverock/androidsvg/c$d0;->a()Lcom/caverock/androidsvg/c$d0;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/d;->e0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$d0;)V

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d;->E(Lcom/caverock/androidsvg/c$m0;Lcom/caverock/androidsvg/d$g;)Lcom/caverock/androidsvg/d$g;

    return-object v0
.end method

.method private E(Lcom/caverock/androidsvg/c$m0;Lcom/caverock/androidsvg/d$g;)Lcom/caverock/androidsvg/d$g;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    instance-of v1, p1, Lcom/caverock/androidsvg/c$k0;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/c$k0;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    if-nez p1, :cond_3

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/caverock/androidsvg/d;->d:Lcom/caverock/androidsvg/c;

    invoke-virtual {p1}, Lcom/caverock/androidsvg/c;->g()Lcom/caverock/androidsvg/c$e0;

    move-result-object p1

    iget-object p1, p1, Lcom/caverock/androidsvg/c$q0;->o:Lcom/caverock/androidsvg/c$a;

    iput-object p1, p2, Lcom/caverock/androidsvg/d$g;->h:Lcom/caverock/androidsvg/c$a;

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/caverock/androidsvg/d;->b:Lcom/caverock/androidsvg/c$a;

    iput-object p1, p2, Lcom/caverock/androidsvg/d$g;->h:Lcom/caverock/androidsvg/c$a;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/caverock/androidsvg/d;->b:Lcom/caverock/androidsvg/c$a;

    iput-object p1, p2, Lcom/caverock/androidsvg/d$g;->g:Lcom/caverock/androidsvg/c$a;

    .line 9
    iget-object p1, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean p1, p1, Lcom/caverock/androidsvg/d$g;->j:Z

    iput-boolean p1, p2, Lcom/caverock/androidsvg/d$g;->j:Z

    return-object p2

    .line 10
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/caverock/androidsvg/c$k0;

    .line 11
    invoke-direct {p0, p2, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    goto :goto_1

    .line 12
    :cond_3
    check-cast p1, Lcom/caverock/androidsvg/c$m0;

    goto :goto_0
.end method

.method private F()Lcom/caverock/androidsvg/c$d0$e;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, v0, Lcom/caverock/androidsvg/c$d0;->u:Lcom/caverock/androidsvg/c$d0$g;

    sget-object v2, Lcom/caverock/androidsvg/c$d0$g;->b:Lcom/caverock/androidsvg/c$d0$g;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/caverock/androidsvg/c$d0;->v:Lcom/caverock/androidsvg/c$d0$e;

    sget-object v2, Lcom/caverock/androidsvg/c$d0$e;->c:Lcom/caverock/androidsvg/c$d0$e;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/caverock/androidsvg/c$d0$e;->b:Lcom/caverock/androidsvg/c$d0$e;

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/caverock/androidsvg/c$d0$e;->d:Lcom/caverock/androidsvg/c$d0$e;

    :cond_1
    return-object v0

    .line 3
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->v:Lcom/caverock/androidsvg/c$d0$e;

    return-object v0
.end method

.method private G()Landroid/graphics/Path$FillType;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->G:Lcom/caverock/androidsvg/c$d0$a;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/d;->b()[I

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v1, v1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, v1, Lcom/caverock/androidsvg/c$d0;->G:Lcom/caverock/androidsvg/c$d0$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 4
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    .line 5
    :cond_1
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method private L(Lcom/caverock/androidsvg/c$d0;J)Z
    .locals 2

    .line 1
    iget-wide v0, p1, Lcom/caverock/androidsvg/c$d0;->b:J

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private M(Lcom/caverock/androidsvg/c$c;)Landroid/graphics/Path;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/caverock/androidsvg/c$c;->o:Lcom/caverock/androidsvg/c$o;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v4, v1, Lcom/caverock/androidsvg/c$c;->p:Lcom/caverock/androidsvg/c$o;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v3

    .line 3
    :cond_1
    iget-object v4, v1, Lcom/caverock/androidsvg/c$c;->q:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/c$o;->c(Lcom/caverock/androidsvg/d;)F

    move-result v4

    sub-float v11, v2, v4

    sub-float v12, v3, v4

    add-float v13, v2, v4

    add-float v14, v3, v4

    .line 4
    iget-object v5, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    if-nez v5, :cond_2

    .line 5
    new-instance v5, Lcom/caverock/androidsvg/c$a;

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v6, v6, v4

    invoke-direct {v5, v11, v12, v6, v6}, Lcom/caverock/androidsvg/c$a;-><init>(FFFF)V

    iput-object v5, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    :cond_2
    const v1, 0x3f0d6289

    mul-float v1, v1, v4

    .line 6
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 7
    invoke-virtual {v15, v2, v12}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v16, v2, v1

    sub-float v17, v3, v1

    move-object v4, v15

    move/from16 v5, v16

    move v6, v12

    move v7, v13

    move/from16 v8, v17

    move v9, v13

    move v10, v3

    .line 8
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v18, v3, v1

    move v5, v13

    move/from16 v6, v18

    move/from16 v7, v16

    move v8, v14

    move v9, v2

    move v10, v14

    .line 9
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v1, v2, v1

    move v5, v1

    move v6, v14

    move v7, v11

    move/from16 v8, v18

    move v9, v11

    move v10, v3

    .line 10
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v11

    move/from16 v6, v17

    move v7, v1

    move v8, v12

    move v9, v2

    move v10, v12

    .line 11
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 12
    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    return-object v15
.end method

.method private N(Lcom/caverock/androidsvg/c$h;)Landroid/graphics/Path;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/caverock/androidsvg/c$h;->o:Lcom/caverock/androidsvg/c$o;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v4, v1, Lcom/caverock/androidsvg/c$h;->p:Lcom/caverock/androidsvg/c$o;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v3

    .line 3
    :cond_1
    iget-object v4, v1, Lcom/caverock/androidsvg/c$h;->q:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v4

    .line 4
    iget-object v5, v1, Lcom/caverock/androidsvg/c$h;->r:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v5

    sub-float v11, v2, v4

    sub-float v12, v3, v5

    add-float v13, v2, v4

    add-float v14, v3, v5

    .line 5
    iget-object v6, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    if-nez v6, :cond_2

    .line 6
    new-instance v6, Lcom/caverock/androidsvg/c$a;

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v8, v4, v7

    mul-float v7, v7, v5

    invoke-direct {v6, v11, v12, v8, v7}, Lcom/caverock/androidsvg/c$a;-><init>(FFFF)V

    iput-object v6, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    :cond_2
    const v1, 0x3f0d6289

    mul-float v15, v4, v1

    mul-float v1, v1, v5

    .line 7
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 8
    invoke-virtual {v10, v2, v12}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v16, v2, v15

    sub-float v17, v3, v1

    move-object v4, v10

    move/from16 v5, v16

    move v6, v12

    move v7, v13

    move/from16 v8, v17

    move v9, v13

    move-object/from16 v18, v10

    move v10, v3

    .line 9
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float/2addr v1, v3

    move-object/from16 v4, v18

    move v5, v13

    move v6, v1

    move/from16 v7, v16

    move v8, v14

    move v9, v2

    move v10, v14

    .line 10
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v13, v2, v15

    move v5, v13

    move v6, v14

    move v7, v11

    move v8, v1

    move v9, v11

    move v10, v3

    .line 11
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v11

    move/from16 v6, v17

    move v7, v13

    move v8, v12

    move v9, v2

    move v10, v12

    .line 12
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 13
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->close()V

    return-object v18
.end method

.method private O(Lcom/caverock/androidsvg/c$y;)Landroid/graphics/Path;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/caverock/androidsvg/c$y;->o:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x2

    .line 3
    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/c$y;->o:[F

    array-length v3, v2

    if-lt v1, v3, :cond_2

    .line 4
    instance-of v1, p1, Lcom/caverock/androidsvg/c$z;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    if-nez v1, :cond_1

    .line 7
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/d;->j(Landroid/graphics/Path;)Lcom/caverock/androidsvg/c$a;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->G()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    return-object v0

    .line 9
    :cond_2
    aget v3, v2, v1

    add-int/lit8 v4, v1, 0x1

    aget v2, v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private P(Lcom/caverock/androidsvg/c$a0;)Landroid/graphics/Path;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/caverock/androidsvg/c$a0;->s:Lcom/caverock/androidsvg/c$o;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v4, v1, Lcom/caverock/androidsvg/c$a0;->t:Lcom/caverock/androidsvg/c$o;

    if-nez v4, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    .line 2
    iget-object v2, v1, Lcom/caverock/androidsvg/c$a0;->t:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v2

    goto :goto_0

    .line 3
    :cond_1
    iget-object v4, v1, Lcom/caverock/androidsvg/c$a0;->t:Lcom/caverock/androidsvg/c$o;

    if-nez v4, :cond_2

    .line 4
    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v2

    :goto_0
    move v4, v2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v2

    .line 6
    iget-object v4, v1, Lcom/caverock/androidsvg/c$a0;->t:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v4

    .line 7
    :goto_1
    iget-object v5, v1, Lcom/caverock/androidsvg/c$a0;->q:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 8
    iget-object v5, v1, Lcom/caverock/androidsvg/c$a0;->r:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v5

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 9
    iget-object v5, v1, Lcom/caverock/androidsvg/c$a0;->o:Lcom/caverock/androidsvg/c$o;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 10
    :goto_2
    iget-object v6, v1, Lcom/caverock/androidsvg/c$a0;->p:Lcom/caverock/androidsvg/c$o;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v6

    move v13, v6

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    .line 11
    :goto_3
    iget-object v6, v1, Lcom/caverock/androidsvg/c$a0;->q:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v6, v0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v6

    .line 12
    iget-object v7, v1, Lcom/caverock/androidsvg/c$a0;->r:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v7

    .line 13
    iget-object v8, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    if-nez v8, :cond_5

    .line 14
    new-instance v8, Lcom/caverock/androidsvg/c$a;

    invoke-direct {v8, v5, v13, v6, v7}, Lcom/caverock/androidsvg/c$a;-><init>(FFFF)V

    iput-object v8, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    :cond_5
    add-float v15, v5, v6

    add-float v1, v13, v7

    .line 15
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    cmpl-float v6, v2, v3

    if-eqz v6, :cond_7

    cmpl-float v3, v4, v3

    if-nez v3, :cond_6

    goto/16 :goto_4

    :cond_6
    const v3, 0x3f0d6289

    mul-float v16, v2, v3

    mul-float v3, v3, v4

    add-float v12, v13, v4

    .line 16
    invoke-virtual {v14, v5, v12}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v17, v12, v3

    add-float v11, v5, v2

    sub-float v21, v11, v16

    move-object v6, v14

    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v21

    move v10, v13

    move/from16 p1, v11

    move/from16 v22, v12

    move v12, v13

    .line 17
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v2, v15, v2

    .line 18
    invoke-virtual {v14, v2, v13}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v6, v2, v16

    move-object v7, v14

    move v8, v6

    move v9, v13

    move v10, v15

    move/from16 v11, v17

    move v12, v15

    move/from16 v13, v22

    .line 19
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sub-float v12, v1, v4

    .line 20
    invoke-virtual {v14, v15, v12}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v10, v12, v3

    move-object v3, v14

    move/from16 v16, v10

    move/from16 v17, v6

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v1

    .line 21
    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v2, p1

    .line 22
    invoke-virtual {v3, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move-object v6, v3

    move/from16 v7, v21

    move v8, v1

    move v9, v5

    move v11, v5

    .line 23
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 24
    invoke-virtual {v3, v5, v13}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_5

    :cond_7
    :goto_4
    move-object v3, v14

    .line 25
    invoke-virtual {v3, v5, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 26
    invoke-virtual {v3, v15, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 27
    invoke-virtual {v3, v15, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 28
    invoke-virtual {v3, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 29
    invoke-virtual {v3, v5, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 30
    :goto_5
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    return-object v3
.end method

.method private Q(Lcom/caverock/androidsvg/c$j0;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v3, v2, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, v3, Lcom/caverock/androidsvg/c$d0;->H:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-boolean v2, v2, Lcom/caverock/androidsvg/d$g;->j:Z

    if-eqz v2, :cond_11

    .line 2
    iget-object v2, v0, Lcom/caverock/androidsvg/d;->d:Lcom/caverock/androidsvg/c;

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/c;->k(Ljava/lang/String;)Lcom/caverock/androidsvg/c$m0;

    move-result-object v2

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->w()V

    .line 4
    check-cast v2, Lcom/caverock/androidsvg/c$r;

    .line 5
    iget-object v3, v2, Lcom/caverock/androidsvg/c$r;->n:Ljava/lang/Boolean;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_5

    .line 6
    iget-object v3, v2, Lcom/caverock/androidsvg/c$r;->r:Lcom/caverock/androidsvg/c$o;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v3, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    iget v3, v3, Lcom/caverock/androidsvg/c$a;->d:F

    .line 7
    :goto_1
    iget-object v7, v2, Lcom/caverock/androidsvg/c$r;->s:Lcom/caverock/androidsvg/c$o;

    if-eqz v7, :cond_2

    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v7

    goto :goto_2

    :cond_2
    iget-object v7, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    iget v7, v7, Lcom/caverock/androidsvg/c$a;->e:F

    .line 8
    :goto_2
    iget-object v8, v2, Lcom/caverock/androidsvg/c$r;->p:Lcom/caverock/androidsvg/c$o;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    goto :goto_3

    :cond_3
    iget-object v8, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    iget v8, v8, Lcom/caverock/androidsvg/c$a;->b:F

    .line 9
    :goto_3
    iget-object v8, v2, Lcom/caverock/androidsvg/c$r;->q:Lcom/caverock/androidsvg/c$o;

    if-eqz v8, :cond_4

    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    goto :goto_5

    :cond_4
    iget-object v8, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    iget v8, v8, Lcom/caverock/androidsvg/c$a;->c:F

    goto :goto_5

    .line 10
    :cond_5
    iget-object v3, v2, Lcom/caverock/androidsvg/c$r;->p:Lcom/caverock/androidsvg/c$o;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v0, v6}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    .line 11
    :cond_6
    iget-object v3, v2, Lcom/caverock/androidsvg/c$r;->q:Lcom/caverock/androidsvg/c$o;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v0, v6}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    .line 12
    :cond_7
    iget-object v3, v2, Lcom/caverock/androidsvg/c$r;->r:Lcom/caverock/androidsvg/c$o;

    const v7, 0x3f99999a    # 1.2f

    if-eqz v3, :cond_8

    invoke-virtual {v3, v0, v6}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    move-result v3

    goto :goto_4

    :cond_8
    const v3, 0x3f99999a    # 1.2f

    .line 13
    :goto_4
    iget-object v8, v2, Lcom/caverock/androidsvg/c$r;->s:Lcom/caverock/androidsvg/c$o;

    if-eqz v8, :cond_9

    invoke-virtual {v8, v0, v6}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    move-result v7

    .line 14
    :cond_9
    iget-object v8, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    iget v9, v8, Lcom/caverock/androidsvg/c$a;->b:F

    iget v9, v8, Lcom/caverock/androidsvg/c$a;->d:F

    .line 15
    iget v8, v8, Lcom/caverock/androidsvg/c$a;->e:F

    mul-float v3, v3, v9

    mul-float v7, v7, v8

    :goto_5
    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_d

    cmpl-float v3, v7, v8

    if-nez v3, :cond_a

    goto :goto_6

    .line 16
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->b0()V

    .line 17
    invoke-direct {v0, v2}, Lcom/caverock/androidsvg/d;->D(Lcom/caverock/androidsvg/c$m0;)Lcom/caverock/androidsvg/d$g;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    .line 18
    iget-object v3, v3, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, v3, Lcom/caverock/androidsvg/c$d0;->n:Ljava/lang/Float;

    .line 19
    iget-object v3, v2, Lcom/caverock/androidsvg/c$r;->o:Ljava/lang/Boolean;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v4, 0x0

    :cond_b
    if-nez v4, :cond_c

    .line 20
    iget-object v3, v0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    iget-object v4, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    iget v6, v4, Lcom/caverock/androidsvg/c$a;->b:F

    iget v4, v4, Lcom/caverock/androidsvg/c$a;->c:F

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 21
    iget-object v3, v0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    iget-object v1, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    iget v4, v1, Lcom/caverock/androidsvg/c$a;->d:F

    iget v1, v1, Lcom/caverock/androidsvg/c$a;->e:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 22
    :cond_c
    invoke-direct {v0, v2, v5}, Lcom/caverock/androidsvg/d;->U(Lcom/caverock/androidsvg/c$i0;Z)V

    .line 23
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->a0()V

    .line 24
    :cond_d
    :goto_6
    iget-object v1, v0, Lcom/caverock/androidsvg/d;->j:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 25
    iget-object v2, v0, Lcom/caverock/androidsvg/d;->j:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 26
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 27
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 28
    new-array v6, v3, [I

    .line 29
    new-array v7, v3, [I

    const/4 v15, 0x0

    :goto_7
    if-lt v15, v4, :cond_e

    .line 30
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 31
    iget-object v1, v0, Lcom/caverock/androidsvg/d;->i:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Canvas;

    iput-object v1, v0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    .line 32
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 33
    iget-object v1, v0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 34
    iget-object v1, v0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    iget-object v3, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v3, v3, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 35
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 36
    iget-object v1, v0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_a

    :cond_e
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1

    move-object v9, v1

    move-object v10, v6

    move v12, v3

    move v14, v15

    move/from16 v20, v15

    move v15, v3

    .line 37
    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object v9, v2

    move-object v10, v7

    move/from16 v11, v17

    move/from16 v13, v18

    move/from16 v14, v20

    move/from16 v16, v19

    .line 38
    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v9, 0x0

    :goto_8
    if-lt v9, v3, :cond_f

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1

    move-object v9, v2

    move-object v10, v7

    move v12, v3

    move/from16 v14, v20

    move v15, v3

    .line 39
    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    add-int/lit8 v15, v20, 0x1

    goto :goto_7

    .line 40
    :cond_f
    aget v10, v6, v9

    and-int/lit16 v11, v10, 0xff

    shr-int/lit8 v12, v10, 0x8

    and-int/lit16 v12, v12, 0xff

    shr-int/lit8 v13, v10, 0x10

    and-int/lit16 v13, v13, 0xff

    shr-int/lit8 v10, v10, 0x18

    and-int/lit16 v10, v10, 0xff

    if-nez v10, :cond_10

    .line 41
    aput v5, v7, v9

    goto :goto_9

    :cond_10
    mul-int/lit16 v13, v13, 0x1b33

    mul-int/lit16 v12, v12, 0x5b92

    add-int/2addr v12, v13

    mul-int/lit16 v11, v11, 0x93a

    add-int/2addr v11, v12

    mul-int v11, v11, v10

    const v10, 0x7f8000

    .line 42
    div-int/2addr v11, v10

    .line 43
    aget v10, v7, v9

    shr-int/lit8 v12, v10, 0x18

    and-int/lit16 v12, v12, 0xff

    mul-int v12, v12, v11

    .line 44
    div-int/lit16 v12, v12, 0xff

    const v11, 0xffffff

    and-int/2addr v10, v11

    shl-int/lit8 v11, v12, 0x18

    or-int/2addr v10, v11

    .line 45
    aput v10, v7, v9

    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 46
    :cond_11
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->a0()V

    return-void
.end method

.method private R()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v1, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, v1, Lcom/caverock/androidsvg/c$d0;->H:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/caverock/androidsvg/d$g;->j:Z

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Masks are not supported when using getPicture()"

    .line 2
    invoke-static {v1, v0}, Lcom/caverock/androidsvg/d;->i0(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->n:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v1, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, v1, Lcom/caverock/androidsvg/c$d0;->H:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/caverock/androidsvg/d$g;->j:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    return v2

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v1, v1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, v1, Lcom/caverock/androidsvg/c$d0;->n:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/d;->q(F)I

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 6
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->f:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/d$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/d$g;

    iput-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    .line 8
    iget-object v1, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, v1, Lcom/caverock/androidsvg/c$d0;->H:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-boolean v0, v0, Lcom/caverock/androidsvg/d$g;->j:Z

    if-eqz v0, :cond_6

    .line 9
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->d:Lcom/caverock/androidsvg/c;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/c;->k(Ljava/lang/String;)Lcom/caverock/androidsvg/c$m0;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    instance-of v0, v0, Lcom/caverock/androidsvg/c$r;

    if-nez v0, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->i:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->w()V

    goto :goto_2

    :cond_5
    :goto_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v1, v1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, v1, Lcom/caverock/androidsvg/c$d0;->H:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Mask reference \'%s\' not found"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iput-object v5, v0, Lcom/caverock/androidsvg/c$d0;->H:Ljava/lang/String;

    :cond_6
    :goto_2
    return v3
.end method

.method private S(Lcom/caverock/androidsvg/c$e0;Lcom/caverock/androidsvg/c$o;Lcom/caverock/androidsvg/c$o;Lcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/b;)V
    .locals 5

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/caverock/androidsvg/c$o;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 2
    invoke-virtual {p3}, Lcom/caverock/androidsvg/c$o;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    if-nez p5, :cond_4

    .line 3
    iget-object p5, p1, Lcom/caverock/androidsvg/c$o0;->n:Lcom/caverock/androidsvg/b;

    if-eqz p5, :cond_3

    goto :goto_0

    :cond_3
    sget-object p5, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b;

    .line 4
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 5
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 6
    :cond_5
    iget-object v0, p1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 7
    iget-object v0, p1, Lcom/caverock/androidsvg/c$e0;->p:Lcom/caverock/androidsvg/c$o;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_1
    iget-object v2, p1, Lcom/caverock/androidsvg/c$e0;->q:Lcom/caverock/androidsvg/c$o;

    if-eqz v2, :cond_7

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v1

    :cond_7
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 9
    :goto_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/d;->J()Lcom/caverock/androidsvg/c$a;

    move-result-object v2

    if-eqz p2, :cond_9

    .line 10
    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result p2

    goto :goto_3

    :cond_9
    iget p2, v2, Lcom/caverock/androidsvg/c$a;->d:F

    :goto_3
    if-eqz p3, :cond_a

    .line 11
    invoke-virtual {p3, p0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result p3

    goto :goto_4

    :cond_a
    iget p3, v2, Lcom/caverock/androidsvg/c$a;->e:F

    .line 12
    :goto_4
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    new-instance v3, Lcom/caverock/androidsvg/c$a;

    invoke-direct {v3, v1, v0, p2, p3}, Lcom/caverock/androidsvg/c$a;-><init>(FFFF)V

    iput-object v3, v2, Lcom/caverock/androidsvg/d$g;->g:Lcom/caverock/androidsvg/c$a;

    .line 13
    iget-object p2, v2, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object p2, p2, Lcom/caverock/androidsvg/c$d0;->w:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_b

    .line 14
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object p2, p2, Lcom/caverock/androidsvg/d$g;->g:Lcom/caverock/androidsvg/c$a;

    iget p3, p2, Lcom/caverock/androidsvg/c$a;->b:F

    iget v2, p2, Lcom/caverock/androidsvg/c$a;->c:F

    iget v3, p2, Lcom/caverock/androidsvg/c$a;->d:F

    iget p2, p2, Lcom/caverock/androidsvg/c$a;->e:F

    invoke-direct {p0, p3, v2, v3, p2}, Lcom/caverock/androidsvg/d;->Y(FFFF)V

    .line 15
    :cond_b
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object p2, p2, Lcom/caverock/androidsvg/d$g;->g:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p1, p2}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    if-eqz p4, :cond_c

    .line 16
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    iget-object p3, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object p3, p3, Lcom/caverock/androidsvg/d$g;->g:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p3, p4, p5}, Lcom/caverock/androidsvg/d;->l(Lcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/b;)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 17
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object p3, p1, Lcom/caverock/androidsvg/c$q0;->o:Lcom/caverock/androidsvg/c$a;

    iput-object p3, p2, Lcom/caverock/androidsvg/d$g;->h:Lcom/caverock/androidsvg/c$a;

    goto :goto_5

    .line 18
    :cond_c
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 19
    :goto_5
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result p2

    .line 20
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->g0()V

    const/4 p3, 0x1

    .line 21
    invoke-direct {p0, p1, p3}, Lcom/caverock/androidsvg/d;->U(Lcom/caverock/androidsvg/c$i0;Z)V

    if-eqz p2, :cond_d

    .line 22
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    .line 23
    :cond_d
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->d0(Lcom/caverock/androidsvg/c$j0;)V

    return-void
.end method

.method private T(Lcom/caverock/androidsvg/c$m0;)V
    .locals 12

    .line 1
    instance-of v0, p1, Lcom/caverock/androidsvg/c$s;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->b0()V

    .line 3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->p(Lcom/caverock/androidsvg/c$m0;)V

    .line 4
    instance-of v0, p1, Lcom/caverock/androidsvg/c$e0;

    if-eqz v0, :cond_1

    .line 5
    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/c$e0;

    .line 6
    iget-object v3, v2, Lcom/caverock/androidsvg/c$e0;->r:Lcom/caverock/androidsvg/c$o;

    iget-object v4, v2, Lcom/caverock/androidsvg/c$e0;->s:Lcom/caverock/androidsvg/c$o;

    .line 7
    iget-object v5, v2, Lcom/caverock/androidsvg/c$q0;->o:Lcom/caverock/androidsvg/c$a;

    iget-object v6, v2, Lcom/caverock/androidsvg/c$o0;->n:Lcom/caverock/androidsvg/b;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/caverock/androidsvg/d;->S(Lcom/caverock/androidsvg/c$e0;Lcom/caverock/androidsvg/c$o;Lcom/caverock/androidsvg/c$o;Lcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/b;)V

    goto/16 :goto_1b

    .line 8
    :cond_1
    instance-of v0, p1, Lcom/caverock/androidsvg/c$d1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_16

    .line 9
    check-cast p1, Lcom/caverock/androidsvg/c$d1;

    .line 10
    sget-object v0, Lcom/caverock/androidsvg/c$c1;->j:Lcom/caverock/androidsvg/c$c1;

    iget-object v4, p1, Lcom/caverock/androidsvg/c$d1;->r:Lcom/caverock/androidsvg/c$o;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/caverock/androidsvg/c$o;->h()Z

    move-result v4

    if-nez v4, :cond_7d

    .line 11
    :cond_2
    iget-object v4, p1, Lcom/caverock/androidsvg/c$d1;->s:Lcom/caverock/androidsvg/c$o;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/caverock/androidsvg/c$o;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_1b

    .line 12
    :cond_3
    iget-object v4, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, v4, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 13
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_1b

    .line 14
    :cond_4
    iget-object v4, p1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    iget-object v5, p1, Lcom/caverock/androidsvg/c$d1;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/c;->k(Ljava/lang/String;)Lcom/caverock/androidsvg/c$m0;

    move-result-object v4

    if-nez v4, :cond_5

    new-array v0, v2, [Ljava/lang/Object;

    .line 15
    iget-object p1, p1, Lcom/caverock/androidsvg/c$d1;->o:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "Use reference \'%s\' not found"

    invoke-static {p1, v0}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1b

    .line 16
    :cond_5
    iget-object v1, p1, Lcom/caverock/androidsvg/c$l;->n:Landroid/graphics/Matrix;

    if-eqz v1, :cond_6

    .line 17
    iget-object v5, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 18
    :cond_6
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 19
    iget-object v5, p1, Lcom/caverock/androidsvg/c$d1;->p:Lcom/caverock/androidsvg/c$o;

    if-eqz v5, :cond_7

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v5

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    .line 20
    :goto_0
    iget-object v6, p1, Lcom/caverock/androidsvg/c$d1;->q:Lcom/caverock/androidsvg/c$o;

    if-eqz v6, :cond_8

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v6

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    .line 21
    :goto_1
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 22
    iget-object v5, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 23
    iget-object v1, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    .line 24
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result v1

    .line 25
    iget-object v5, p0, Lcom/caverock/androidsvg/d;->g:Ljava/util/Stack;

    invoke-virtual {v5, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v5, p0, Lcom/caverock/androidsvg/d;->h:Ljava/util/Stack;

    iget-object v6, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    instance-of v5, v4, Lcom/caverock/androidsvg/c$e0;

    if-eqz v5, :cond_b

    .line 28
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->b0()V

    .line 29
    move-object v7, v4

    check-cast v7, Lcom/caverock/androidsvg/c$e0;

    .line 30
    iget-object v0, p1, Lcom/caverock/androidsvg/c$d1;->r:Lcom/caverock/androidsvg/c$o;

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    iget-object v0, v7, Lcom/caverock/androidsvg/c$e0;->r:Lcom/caverock/androidsvg/c$o;

    :goto_2
    move-object v8, v0

    .line 31
    iget-object v0, p1, Lcom/caverock/androidsvg/c$d1;->s:Lcom/caverock/androidsvg/c$o;

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    iget-object v0, v7, Lcom/caverock/androidsvg/c$e0;->s:Lcom/caverock/androidsvg/c$o;

    :goto_3
    move-object v9, v0

    .line 32
    iget-object v10, v7, Lcom/caverock/androidsvg/c$q0;->o:Lcom/caverock/androidsvg/c$a;

    iget-object v11, v7, Lcom/caverock/androidsvg/c$o0;->n:Lcom/caverock/androidsvg/b;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/caverock/androidsvg/d;->S(Lcom/caverock/androidsvg/c$e0;Lcom/caverock/androidsvg/c$o;Lcom/caverock/androidsvg/c$o;Lcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/b;)V

    .line 33
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->a0()V

    goto/16 :goto_8

    .line 34
    :cond_b
    instance-of v5, v4, Lcom/caverock/androidsvg/c$s0;

    if-eqz v5, :cond_14

    .line 35
    iget-object v5, p1, Lcom/caverock/androidsvg/c$d1;->r:Lcom/caverock/androidsvg/c$o;

    const/high16 v6, 0x42c80000    # 100.0f

    if-eqz v5, :cond_c

    goto :goto_4

    :cond_c
    new-instance v5, Lcom/caverock/androidsvg/c$o;

    invoke-direct {v5, v6, v0}, Lcom/caverock/androidsvg/c$o;-><init>(FLcom/caverock/androidsvg/c$c1;)V

    .line 36
    :goto_4
    iget-object v7, p1, Lcom/caverock/androidsvg/c$d1;->s:Lcom/caverock/androidsvg/c$o;

    if-eqz v7, :cond_d

    goto :goto_5

    :cond_d
    new-instance v7, Lcom/caverock/androidsvg/c$o;

    invoke-direct {v7, v6, v0}, Lcom/caverock/androidsvg/c$o;-><init>(FLcom/caverock/androidsvg/c$c1;)V

    .line 37
    :goto_5
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->b0()V

    .line 38
    check-cast v4, Lcom/caverock/androidsvg/c$s0;

    .line 39
    invoke-virtual {v5}, Lcom/caverock/androidsvg/c$o;->h()Z

    move-result v0

    if-nez v0, :cond_13

    .line 40
    invoke-virtual {v7}, Lcom/caverock/androidsvg/c$o;->h()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_7

    .line 41
    :cond_e
    iget-object v0, v4, Lcom/caverock/androidsvg/c$o0;->n:Lcom/caverock/androidsvg/b;

    if-eqz v0, :cond_f

    goto :goto_6

    :cond_f
    sget-object v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b;

    .line 42
    :goto_6
    iget-object v6, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, v6, v4}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 43
    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v5

    .line 44
    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v6

    .line 45
    iget-object v7, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    new-instance v8, Lcom/caverock/androidsvg/c$a;

    invoke-direct {v8, v3, v3, v5, v6}, Lcom/caverock/androidsvg/c$a;-><init>(FFFF)V

    iput-object v8, v7, Lcom/caverock/androidsvg/d$g;->g:Lcom/caverock/androidsvg/c$a;

    .line 46
    iget-object v3, v7, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, v3, Lcom/caverock/androidsvg/c$d0;->w:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_10

    .line 47
    iget-object v3, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v3, v3, Lcom/caverock/androidsvg/d$g;->g:Lcom/caverock/androidsvg/c$a;

    iget v5, v3, Lcom/caverock/androidsvg/c$a;->b:F

    iget v6, v3, Lcom/caverock/androidsvg/c$a;->c:F

    iget v7, v3, Lcom/caverock/androidsvg/c$a;->d:F

    iget v3, v3, Lcom/caverock/androidsvg/c$a;->e:F

    invoke-direct {p0, v5, v6, v7, v3}, Lcom/caverock/androidsvg/d;->Y(FFFF)V

    .line 48
    :cond_10
    iget-object v3, v4, Lcom/caverock/androidsvg/c$q0;->o:Lcom/caverock/androidsvg/c$a;

    if-eqz v3, :cond_11

    .line 49
    iget-object v5, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v6, v6, Lcom/caverock/androidsvg/d$g;->g:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, v6, v3, v0}, Lcom/caverock/androidsvg/d;->l(Lcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/b;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 50
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v3, v4, Lcom/caverock/androidsvg/c$q0;->o:Lcom/caverock/androidsvg/c$a;

    iput-object v3, v0, Lcom/caverock/androidsvg/d$g;->h:Lcom/caverock/androidsvg/c$a;

    .line 51
    :cond_11
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result v0

    .line 52
    invoke-direct {p0, v4, v2}, Lcom/caverock/androidsvg/d;->U(Lcom/caverock/androidsvg/c$i0;Z)V

    if-eqz v0, :cond_12

    .line 53
    invoke-direct {p0, v4}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    .line 54
    :cond_12
    invoke-direct {p0, v4}, Lcom/caverock/androidsvg/d;->d0(Lcom/caverock/androidsvg/c$j0;)V

    .line 55
    :cond_13
    :goto_7
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->a0()V

    goto :goto_8

    .line 56
    :cond_14
    invoke-direct {p0, v4}, Lcom/caverock/androidsvg/d;->T(Lcom/caverock/androidsvg/c$m0;)V

    .line 57
    :goto_8
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    if-eqz v1, :cond_15

    .line 59
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    .line 60
    :cond_15
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->d0(Lcom/caverock/androidsvg/c$j0;)V

    goto/16 :goto_1b

    .line 61
    :cond_16
    instance-of v0, p1, Lcom/caverock/androidsvg/c$r0;

    if-eqz v0, :cond_22

    .line 62
    check-cast p1, Lcom/caverock/androidsvg/c$r0;

    .line 63
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 64
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_1b

    .line 65
    :cond_17
    iget-object v0, p1, Lcom/caverock/androidsvg/c$l;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_18

    .line 66
    iget-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 67
    :cond_18
    iget-object v0, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    .line 68
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result v0

    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->d:Lcom/caverock/androidsvg/c;

    .line 71
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v2, p1, Lcom/caverock/androidsvg/c$g0;->i:Ljava/util/List;

    .line 73
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_a

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/c$m0;

    .line 74
    instance-of v4, v3, Lcom/caverock/androidsvg/c$f0;

    if-nez v4, :cond_1b

    goto :goto_9

    .line 75
    :cond_1b
    move-object v4, v3

    check-cast v4, Lcom/caverock/androidsvg/c$f0;

    .line 76
    invoke-interface {v4}, Lcom/caverock/androidsvg/c$f0;->e()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1c

    goto :goto_9

    .line 77
    :cond_1c
    invoke-interface {v4}, Lcom/caverock/androidsvg/c$f0;->b()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 78
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_9

    .line 79
    :cond_1d
    invoke-interface {v4}, Lcom/caverock/androidsvg/c$f0;->i()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_1e

    .line 80
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_19

    sget-object v6, Lcom/caverock/androidsvg/f;->o:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1e

    goto :goto_9

    .line 81
    :cond_1e
    invoke-interface {v4}, Lcom/caverock/androidsvg/c$f0;->m()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_1f

    .line 82
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    goto :goto_9

    .line 83
    :cond_1f
    invoke-interface {v4}, Lcom/caverock/androidsvg/c$f0;->n()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 84
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    goto :goto_9

    .line 85
    :cond_20
    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/d;->T(Lcom/caverock/androidsvg/c$m0;)V

    :goto_a
    if-eqz v0, :cond_21

    .line 86
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    .line 87
    :cond_21
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->d0(Lcom/caverock/androidsvg/c$j0;)V

    goto/16 :goto_1b

    .line 88
    :cond_22
    instance-of v0, p1, Lcom/caverock/androidsvg/c$l;

    if-eqz v0, :cond_26

    .line 89
    check-cast p1, Lcom/caverock/androidsvg/c$l;

    .line 90
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 91
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_1b

    .line 92
    :cond_23
    iget-object v0, p1, Lcom/caverock/androidsvg/c$l;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_24

    .line 93
    iget-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 94
    :cond_24
    iget-object v0, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    .line 95
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result v0

    .line 96
    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/d;->U(Lcom/caverock/androidsvg/c$i0;Z)V

    if-eqz v0, :cond_25

    .line 97
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    .line 98
    :cond_25
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->d0(Lcom/caverock/androidsvg/c$j0;)V

    goto/16 :goto_1b

    .line 99
    :cond_26
    instance-of v0, p1, Lcom/caverock/androidsvg/c$n;

    if-eqz v0, :cond_36

    .line 100
    check-cast p1, Lcom/caverock/androidsvg/c$n;

    .line 101
    iget-object v0, p1, Lcom/caverock/androidsvg/c$n;->r:Lcom/caverock/androidsvg/c$o;

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Lcom/caverock/androidsvg/c$o;->h()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 102
    iget-object v0, p1, Lcom/caverock/androidsvg/c$n;->s:Lcom/caverock/androidsvg/c$o;

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Lcom/caverock/androidsvg/c$o;->h()Z

    move-result v0

    if-eqz v0, :cond_27

    goto/16 :goto_1b

    .line 103
    :cond_27
    iget-object v0, p1, Lcom/caverock/androidsvg/c$n;->o:Ljava/lang/String;

    if-nez v0, :cond_28

    goto/16 :goto_1b

    .line 104
    :cond_28
    iget-object v4, p1, Lcom/caverock/androidsvg/c$o0;->n:Lcom/caverock/androidsvg/b;

    if-eqz v4, :cond_29

    goto :goto_b

    :cond_29
    sget-object v4, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b;

    :goto_b
    const-string v5, "data:"

    .line 105
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2a

    goto :goto_c

    .line 106
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0xe

    if-ge v5, v7, :cond_2b

    goto :goto_c

    :cond_2b
    const/16 v5, 0x2c

    .line 107
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2e

    const/16 v7, 0xc

    if-ge v5, v7, :cond_2c

    goto :goto_c

    :cond_2c
    add-int/lit8 v7, v5, -0x7

    .line 108
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";base64"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2d

    goto :goto_c

    :cond_2d
    add-int/2addr v5, v2

    .line 109
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 110
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_2e
    :goto_c
    if-nez v6, :cond_2f

    .line 111
    iget-object p1, p0, Lcom/caverock/androidsvg/d;->d:Lcom/caverock/androidsvg/c;

    .line 112
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    .line 113
    :cond_2f
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 114
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_1b

    .line 115
    :cond_30
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->h0()Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_1b

    .line 116
    :cond_31
    iget-object v0, p1, Lcom/caverock/androidsvg/c$n;->t:Landroid/graphics/Matrix;

    if-eqz v0, :cond_32

    .line 117
    iget-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 118
    :cond_32
    iget-object v0, p1, Lcom/caverock/androidsvg/c$n;->p:Lcom/caverock/androidsvg/c$o;

    if-eqz v0, :cond_33

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v0

    goto :goto_d

    :cond_33
    const/4 v0, 0x0

    .line 119
    :goto_d
    iget-object v1, p1, Lcom/caverock/androidsvg/c$n;->q:Lcom/caverock/androidsvg/c$o;

    if-eqz v1, :cond_34

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v1

    goto :goto_e

    :cond_34
    const/4 v1, 0x0

    .line 120
    :goto_e
    iget-object v2, p1, Lcom/caverock/androidsvg/c$n;->r:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v2

    .line 121
    iget-object v5, p1, Lcom/caverock/androidsvg/c$n;->s:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v5

    .line 122
    iget-object v7, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    new-instance v8, Lcom/caverock/androidsvg/c$a;

    invoke-direct {v8, v0, v1, v2, v5}, Lcom/caverock/androidsvg/c$a;-><init>(FFFF)V

    iput-object v8, v7, Lcom/caverock/androidsvg/d$g;->g:Lcom/caverock/androidsvg/c$a;

    .line 123
    iget-object v0, v7, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->w:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_35

    .line 124
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->g:Lcom/caverock/androidsvg/c$a;

    iget v1, v0, Lcom/caverock/androidsvg/c$a;->b:F

    iget v2, v0, Lcom/caverock/androidsvg/c$a;->c:F

    iget v5, v0, Lcom/caverock/androidsvg/c$a;->d:F

    iget v0, v0, Lcom/caverock/androidsvg/c$a;->e:F

    invoke-direct {p0, v1, v2, v5, v0}, Lcom/caverock/androidsvg/d;->Y(FFFF)V

    .line 125
    :cond_35
    new-instance v0, Lcom/caverock/androidsvg/c$a;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/caverock/androidsvg/c$a;-><init>(FFFF)V

    iput-object v0, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    .line 126
    iget-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v2, v2, Lcom/caverock/androidsvg/d$g;->g:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, v2, v0, v4}, Lcom/caverock/androidsvg/d;->l(Lcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/b;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->d0(Lcom/caverock/androidsvg/c$j0;)V

    .line 128
    iget-object v0, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    .line 129
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result v0

    .line 130
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->g0()V

    .line 131
    iget-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v2, v2, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_7d

    .line 132
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    goto/16 :goto_1b

    .line 133
    :cond_36
    instance-of v0, p1, Lcom/caverock/androidsvg/c$u;

    const/4 v2, 0x2

    if-eqz v0, :cond_40

    .line 134
    check-cast p1, Lcom/caverock/androidsvg/c$u;

    .line 135
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 136
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_1b

    .line 137
    :cond_37
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->h0()Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_1b

    .line 138
    :cond_38
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean v1, v0, Lcom/caverock/androidsvg/d$g;->d:Z

    if-nez v1, :cond_39

    iget-boolean v0, v0, Lcom/caverock/androidsvg/d$g;->c:Z

    if-nez v0, :cond_39

    goto/16 :goto_1b

    .line 139
    :cond_39
    iget-object v0, p1, Lcom/caverock/androidsvg/c$k;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3a

    .line 140
    iget-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 141
    :cond_3a
    new-instance v0, Lcom/caverock/androidsvg/d$c;

    iget-object v1, p1, Lcom/caverock/androidsvg/c$u;->o:Lcom/caverock/androidsvg/c$v;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/d$c;-><init>(Lcom/caverock/androidsvg/d;Lcom/caverock/androidsvg/c$v;)V

    .line 142
    iget-object v0, v0, Lcom/caverock/androidsvg/d$c;->a:Landroid/graphics/Path;

    .line 143
    iget-object v1, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    if-nez v1, :cond_3b

    .line 144
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/d;->j(Landroid/graphics/Path;)Lcom/caverock/androidsvg/c$a;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    .line 145
    :cond_3b
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->d0(Lcom/caverock/androidsvg/c$j0;)V

    .line 146
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->n(Lcom/caverock/androidsvg/c$j0;)V

    .line 147
    iget-object v1, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    .line 148
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result v1

    .line 149
    iget-object v3, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean v4, v3, Lcom/caverock/androidsvg/d$g;->c:Z

    if-eqz v4, :cond_3e

    .line 150
    iget-object v3, v3, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, v3, Lcom/caverock/androidsvg/c$d0;->d:Lcom/caverock/androidsvg/c$d0$a;

    if-nez v3, :cond_3c

    .line 151
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_f

    .line 152
    :cond_3c
    invoke-static {}, Lcom/caverock/androidsvg/d;->b()[I

    move-result-object v3

    iget-object v4, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v4, v4, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v4, v4, Lcom/caverock/androidsvg/c$d0;->d:Lcom/caverock/androidsvg/c$d0$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_3d

    .line 153
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_f

    .line 154
    :cond_3d
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 155
    :goto_f
    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 156
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d;->u(Lcom/caverock/androidsvg/c$j0;Landroid/graphics/Path;)V

    .line 157
    :cond_3e
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/d$g;->d:Z

    if-eqz v2, :cond_3f

    .line 158
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/d;->v(Landroid/graphics/Path;)V

    .line 159
    :cond_3f
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->X(Lcom/caverock/androidsvg/c$k;)V

    if-eqz v1, :cond_7d

    .line 160
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    goto/16 :goto_1b

    .line 161
    :cond_40
    instance-of v0, p1, Lcom/caverock/androidsvg/c$a0;

    if-eqz v0, :cond_47

    .line 162
    check-cast p1, Lcom/caverock/androidsvg/c$a0;

    .line 163
    iget-object v0, p1, Lcom/caverock/androidsvg/c$a0;->q:Lcom/caverock/androidsvg/c$o;

    if-eqz v0, :cond_7d

    iget-object v1, p1, Lcom/caverock/androidsvg/c$a0;->r:Lcom/caverock/androidsvg/c$o;

    if-eqz v1, :cond_7d

    invoke-virtual {v0}, Lcom/caverock/androidsvg/c$o;->h()Z

    move-result v0

    if-nez v0, :cond_7d

    iget-object v0, p1, Lcom/caverock/androidsvg/c$a0;->r:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/c$o;->h()Z

    move-result v0

    if-eqz v0, :cond_41

    goto/16 :goto_1b

    .line 164
    :cond_41
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 165
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_1b

    .line 166
    :cond_42
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->h0()Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_1b

    .line 167
    :cond_43
    iget-object v0, p1, Lcom/caverock/androidsvg/c$k;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_44

    .line 168
    iget-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 169
    :cond_44
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->P(Lcom/caverock/androidsvg/c$a0;)Landroid/graphics/Path;

    move-result-object v0

    .line 170
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->d0(Lcom/caverock/androidsvg/c$j0;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->n(Lcom/caverock/androidsvg/c$j0;)V

    .line 172
    iget-object v1, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    .line 173
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result v1

    .line 174
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/d$g;->c:Z

    if-eqz v2, :cond_45

    .line 175
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d;->u(Lcom/caverock/androidsvg/c$j0;Landroid/graphics/Path;)V

    .line 176
    :cond_45
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/d$g;->d:Z

    if-eqz v2, :cond_46

    .line 177
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/d;->v(Landroid/graphics/Path;)V

    :cond_46
    if-eqz v1, :cond_7d

    .line 178
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    goto/16 :goto_1b

    .line 179
    :cond_47
    instance-of v0, p1, Lcom/caverock/androidsvg/c$c;

    if-eqz v0, :cond_4e

    .line 180
    check-cast p1, Lcom/caverock/androidsvg/c$c;

    .line 181
    iget-object v0, p1, Lcom/caverock/androidsvg/c$c;->q:Lcom/caverock/androidsvg/c$o;

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Lcom/caverock/androidsvg/c$o;->h()Z

    move-result v0

    if-eqz v0, :cond_48

    goto/16 :goto_1b

    .line 182
    :cond_48
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 183
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_1b

    .line 184
    :cond_49
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->h0()Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_1b

    .line 185
    :cond_4a
    iget-object v0, p1, Lcom/caverock/androidsvg/c$k;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_4b

    .line 186
    iget-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 187
    :cond_4b
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->M(Lcom/caverock/androidsvg/c$c;)Landroid/graphics/Path;

    move-result-object v0

    .line 188
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->d0(Lcom/caverock/androidsvg/c$j0;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->n(Lcom/caverock/androidsvg/c$j0;)V

    .line 190
    iget-object v1, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    .line 191
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result v1

    .line 192
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/d$g;->c:Z

    if-eqz v2, :cond_4c

    .line 193
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d;->u(Lcom/caverock/androidsvg/c$j0;Landroid/graphics/Path;)V

    .line 194
    :cond_4c
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/d$g;->d:Z

    if-eqz v2, :cond_4d

    .line 195
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/d;->v(Landroid/graphics/Path;)V

    :cond_4d
    if-eqz v1, :cond_7d

    .line 196
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    goto/16 :goto_1b

    .line 197
    :cond_4e
    instance-of v0, p1, Lcom/caverock/androidsvg/c$h;

    if-eqz v0, :cond_55

    .line 198
    check-cast p1, Lcom/caverock/androidsvg/c$h;

    .line 199
    iget-object v0, p1, Lcom/caverock/androidsvg/c$h;->q:Lcom/caverock/androidsvg/c$o;

    if-eqz v0, :cond_7d

    iget-object v1, p1, Lcom/caverock/androidsvg/c$h;->r:Lcom/caverock/androidsvg/c$o;

    if-eqz v1, :cond_7d

    invoke-virtual {v0}, Lcom/caverock/androidsvg/c$o;->h()Z

    move-result v0

    if-nez v0, :cond_7d

    iget-object v0, p1, Lcom/caverock/androidsvg/c$h;->r:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/c$o;->h()Z

    move-result v0

    if-eqz v0, :cond_4f

    goto/16 :goto_1b

    .line 200
    :cond_4f
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 201
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_1b

    .line 202
    :cond_50
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->h0()Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_1b

    .line 203
    :cond_51
    iget-object v0, p1, Lcom/caverock/androidsvg/c$k;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_52

    .line 204
    iget-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 205
    :cond_52
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->N(Lcom/caverock/androidsvg/c$h;)Landroid/graphics/Path;

    move-result-object v0

    .line 206
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->d0(Lcom/caverock/androidsvg/c$j0;)V

    .line 207
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->n(Lcom/caverock/androidsvg/c$j0;)V

    .line 208
    iget-object v1, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    .line 209
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result v1

    .line 210
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/d$g;->c:Z

    if-eqz v2, :cond_53

    .line 211
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d;->u(Lcom/caverock/androidsvg/c$j0;Landroid/graphics/Path;)V

    .line 212
    :cond_53
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/d$g;->d:Z

    if-eqz v2, :cond_54

    .line 213
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/d;->v(Landroid/graphics/Path;)V

    :cond_54
    if-eqz v1, :cond_7d

    .line 214
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    goto/16 :goto_1b

    .line 215
    :cond_55
    instance-of v0, p1, Lcom/caverock/androidsvg/c$p;

    if-eqz v0, :cond_5f

    .line 216
    check-cast p1, Lcom/caverock/androidsvg/c$p;

    .line 217
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 218
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_1b

    .line 219
    :cond_56
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->h0()Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_1b

    .line 220
    :cond_57
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/d$g;->d:Z

    if-nez v0, :cond_58

    goto/16 :goto_1b

    .line 221
    :cond_58
    iget-object v0, p1, Lcom/caverock/androidsvg/c$k;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_59

    .line 222
    iget-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 223
    :cond_59
    iget-object v0, p1, Lcom/caverock/androidsvg/c$p;->o:Lcom/caverock/androidsvg/c$o;

    if-nez v0, :cond_5a

    const/4 v0, 0x0

    goto :goto_10

    :cond_5a
    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v0

    .line 224
    :goto_10
    iget-object v1, p1, Lcom/caverock/androidsvg/c$p;->p:Lcom/caverock/androidsvg/c$o;

    if-nez v1, :cond_5b

    const/4 v1, 0x0

    goto :goto_11

    :cond_5b
    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v1

    .line 225
    :goto_11
    iget-object v2, p1, Lcom/caverock/androidsvg/c$p;->q:Lcom/caverock/androidsvg/c$o;

    if-nez v2, :cond_5c

    const/4 v2, 0x0

    goto :goto_12

    :cond_5c
    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v2

    .line 226
    :goto_12
    iget-object v4, p1, Lcom/caverock/androidsvg/c$p;->r:Lcom/caverock/androidsvg/c$o;

    if-nez v4, :cond_5d

    goto :goto_13

    :cond_5d
    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v3

    .line 227
    :goto_13
    iget-object v4, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    if-nez v4, :cond_5e

    .line 228
    new-instance v4, Lcom/caverock/androidsvg/c$a;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v7, v2, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v8, v3, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/caverock/androidsvg/c$a;-><init>(FFFF)V

    iput-object v4, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    .line 229
    :cond_5e
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 230
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 231
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 232
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->d0(Lcom/caverock/androidsvg/c$j0;)V

    .line 233
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->n(Lcom/caverock/androidsvg/c$j0;)V

    .line 234
    iget-object v0, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    .line 235
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result v0

    .line 236
    invoke-direct {p0, v4}, Lcom/caverock/androidsvg/d;->v(Landroid/graphics/Path;)V

    .line 237
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->X(Lcom/caverock/androidsvg/c$k;)V

    if-eqz v0, :cond_7d

    .line 238
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    goto/16 :goto_1b

    .line 239
    :cond_5f
    instance-of v0, p1, Lcom/caverock/androidsvg/c$z;

    if-eqz v0, :cond_67

    .line 240
    check-cast p1, Lcom/caverock/androidsvg/c$z;

    .line 241
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 242
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_1b

    .line 243
    :cond_60
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->h0()Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_1b

    .line 244
    :cond_61
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean v1, v0, Lcom/caverock/androidsvg/d$g;->d:Z

    if-nez v1, :cond_62

    iget-boolean v0, v0, Lcom/caverock/androidsvg/d$g;->c:Z

    if-nez v0, :cond_62

    goto/16 :goto_1b

    .line 245
    :cond_62
    iget-object v0, p1, Lcom/caverock/androidsvg/c$k;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_63

    .line 246
    iget-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 247
    :cond_63
    iget-object v0, p1, Lcom/caverock/androidsvg/c$y;->o:[F

    array-length v0, v0

    if-ge v0, v2, :cond_64

    goto/16 :goto_1b

    .line 248
    :cond_64
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->O(Lcom/caverock/androidsvg/c$y;)Landroid/graphics/Path;

    move-result-object v0

    .line 249
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->d0(Lcom/caverock/androidsvg/c$j0;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->n(Lcom/caverock/androidsvg/c$j0;)V

    .line 251
    iget-object v1, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    .line 252
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result v1

    .line 253
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/d$g;->c:Z

    if-eqz v2, :cond_65

    .line 254
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d;->u(Lcom/caverock/androidsvg/c$j0;Landroid/graphics/Path;)V

    .line 255
    :cond_65
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/d$g;->d:Z

    if-eqz v2, :cond_66

    .line 256
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/d;->v(Landroid/graphics/Path;)V

    .line 257
    :cond_66
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->X(Lcom/caverock/androidsvg/c$k;)V

    if-eqz v1, :cond_7d

    .line 258
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    goto/16 :goto_1b

    .line 259
    :cond_67
    instance-of v0, p1, Lcom/caverock/androidsvg/c$y;

    if-eqz v0, :cond_6f

    .line 260
    check-cast p1, Lcom/caverock/androidsvg/c$y;

    .line 261
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 262
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v0

    if-nez v0, :cond_68

    goto/16 :goto_1b

    .line 263
    :cond_68
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->h0()Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_1b

    .line 264
    :cond_69
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean v1, v0, Lcom/caverock/androidsvg/d$g;->d:Z

    if-nez v1, :cond_6a

    iget-boolean v0, v0, Lcom/caverock/androidsvg/d$g;->c:Z

    if-nez v0, :cond_6a

    goto/16 :goto_1b

    .line 265
    :cond_6a
    iget-object v0, p1, Lcom/caverock/androidsvg/c$k;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_6b

    .line 266
    iget-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 267
    :cond_6b
    iget-object v0, p1, Lcom/caverock/androidsvg/c$y;->o:[F

    array-length v0, v0

    if-ge v0, v2, :cond_6c

    goto/16 :goto_1b

    .line 268
    :cond_6c
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->O(Lcom/caverock/androidsvg/c$y;)Landroid/graphics/Path;

    move-result-object v0

    .line 269
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->d0(Lcom/caverock/androidsvg/c$j0;)V

    .line 270
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->n(Lcom/caverock/androidsvg/c$j0;)V

    .line 271
    iget-object v1, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    .line 272
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result v1

    .line 273
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/d$g;->c:Z

    if-eqz v2, :cond_6d

    .line 274
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d;->u(Lcom/caverock/androidsvg/c$j0;Landroid/graphics/Path;)V

    .line 275
    :cond_6d
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/d$g;->d:Z

    if-eqz v2, :cond_6e

    .line 276
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/d;->v(Landroid/graphics/Path;)V

    .line 277
    :cond_6e
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->X(Lcom/caverock/androidsvg/c$k;)V

    if-eqz v1, :cond_7d

    .line 278
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    goto/16 :goto_1b

    .line 279
    :cond_6f
    instance-of v0, p1, Lcom/caverock/androidsvg/c$v0;

    if-eqz v0, :cond_7d

    .line 280
    check-cast p1, Lcom/caverock/androidsvg/c$v0;

    .line 281
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 282
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_1b

    .line 283
    :cond_70
    iget-object v0, p1, Lcom/caverock/androidsvg/c$v0;->r:Landroid/graphics/Matrix;

    if-eqz v0, :cond_71

    .line 284
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 285
    :cond_71
    iget-object v0, p1, Lcom/caverock/androidsvg/c$z0;->n:Ljava/util/List;

    if-eqz v0, :cond_73

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_72

    goto :goto_14

    :cond_72
    iget-object v0, p1, Lcom/caverock/androidsvg/c$z0;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v0

    goto :goto_15

    :cond_73
    :goto_14
    const/4 v0, 0x0

    .line 286
    :goto_15
    iget-object v2, p1, Lcom/caverock/androidsvg/c$z0;->o:Ljava/util/List;

    if-eqz v2, :cond_75

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_74

    goto :goto_16

    :cond_74
    iget-object v2, p1, Lcom/caverock/androidsvg/c$z0;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v2

    goto :goto_17

    :cond_75
    :goto_16
    const/4 v2, 0x0

    .line 287
    :goto_17
    iget-object v4, p1, Lcom/caverock/androidsvg/c$z0;->p:Ljava/util/List;

    if-eqz v4, :cond_77

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_76

    goto :goto_18

    :cond_76
    iget-object v4, p1, Lcom/caverock/androidsvg/c$z0;->p:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v4

    goto :goto_19

    :cond_77
    :goto_18
    const/4 v4, 0x0

    .line 288
    :goto_19
    iget-object v5, p1, Lcom/caverock/androidsvg/c$z0;->q:Ljava/util/List;

    if-eqz v5, :cond_79

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_78

    goto :goto_1a

    :cond_78
    iget-object v3, p1, Lcom/caverock/androidsvg/c$z0;->q:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v3

    .line 289
    :cond_79
    :goto_1a
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->F()Lcom/caverock/androidsvg/c$d0$e;

    move-result-object v1

    .line 290
    sget-object v5, Lcom/caverock/androidsvg/c$d0$e;->b:Lcom/caverock/androidsvg/c$d0$e;

    if-eq v1, v5, :cond_7b

    .line 291
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->k(Lcom/caverock/androidsvg/c$x0;)F

    move-result v5

    .line 292
    sget-object v6, Lcom/caverock/androidsvg/c$d0$e;->c:Lcom/caverock/androidsvg/c$d0$e;

    if-ne v1, v6, :cond_7a

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v5, v1

    :cond_7a
    sub-float/2addr v0, v5

    .line 293
    :cond_7b
    iget-object v1, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    if-nez v1, :cond_7c

    .line 294
    new-instance v1, Lcom/caverock/androidsvg/d$h;

    invoke-direct {v1, p0, v0, v2}, Lcom/caverock/androidsvg/d$h;-><init>(Lcom/caverock/androidsvg/d;FF)V

    .line 295
    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/d;->x(Lcom/caverock/androidsvg/c$x0;Lcom/caverock/androidsvg/d$i;)V

    .line 296
    new-instance v5, Lcom/caverock/androidsvg/c$a;

    iget-object v6, v1, Lcom/caverock/androidsvg/d$h;->c:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    iget v8, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v1, v1, Lcom/caverock/androidsvg/d$h;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-direct {v5, v7, v8, v6, v1}, Lcom/caverock/androidsvg/c$a;-><init>(FFFF)V

    iput-object v5, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    .line 297
    :cond_7c
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->d0(Lcom/caverock/androidsvg/c$j0;)V

    .line 298
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->n(Lcom/caverock/androidsvg/c$j0;)V

    .line 299
    iget-object v1, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    .line 300
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result v1

    .line 301
    new-instance v5, Lcom/caverock/androidsvg/d$e;

    add-float/2addr v0, v4

    add-float/2addr v2, v3

    invoke-direct {v5, p0, v0, v2}, Lcom/caverock/androidsvg/d$e;-><init>(Lcom/caverock/androidsvg/d;FF)V

    invoke-direct {p0, p1, v5}, Lcom/caverock/androidsvg/d;->x(Lcom/caverock/androidsvg/c$x0;Lcom/caverock/androidsvg/d$i;)V

    if-eqz v1, :cond_7d

    .line 302
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    .line 303
    :cond_7d
    :goto_1b
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->a0()V

    return-void
.end method

.method private U(Lcom/caverock/androidsvg/c$i0;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->g:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->h:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    check-cast p1, Lcom/caverock/androidsvg/c$g0;

    .line 4
    iget-object p1, p1, Lcom/caverock/androidsvg/c$g0;->i:Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/caverock/androidsvg/d;->g:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/caverock/androidsvg/d;->h:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_1
    return-void

    .line 8
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/c$m0;

    .line 9
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/d;->T(Lcom/caverock/androidsvg/c$m0;)V

    goto :goto_0
.end method

.method private W(Lcom/caverock/androidsvg/c$q;Lcom/caverock/androidsvg/d$b;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->b0()V

    .line 2
    iget-object v0, p1, Lcom/caverock/androidsvg/c$q;->u:Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p2, Lcom/caverock/androidsvg/d$b;->c:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    iget v2, p2, Lcom/caverock/androidsvg/d$b;->d:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    .line 5
    :cond_0
    iget v2, p2, Lcom/caverock/androidsvg/d$b;->d:F

    float-to-double v2, v2

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/c$q;->u:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-boolean v2, p1, Lcom/caverock/androidsvg/c$q;->p:Z

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v2, v2, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v2, v2, Lcom/caverock/androidsvg/c$d0;->h:Lcom/caverock/androidsvg/c$o;

    const/high16 v3, 0x42c00000    # 96.0f

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/c$o;->b(F)F

    move-result v2

    .line 8
    :goto_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->D(Lcom/caverock/androidsvg/c$m0;)Lcom/caverock/androidsvg/d$g;

    move-result-object v3

    iput-object v3, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    .line 9
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 10
    iget v4, p2, Lcom/caverock/androidsvg/d$b;->a:F

    iget p2, p2, Lcom/caverock/androidsvg/d$b;->b:F

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 11
    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 12
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 13
    iget-object p2, p1, Lcom/caverock/androidsvg/c$q;->q:Lcom/caverock/androidsvg/c$o;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result p2

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 14
    :goto_2
    iget-object v0, p1, Lcom/caverock/androidsvg/c$q;->r:Lcom/caverock/androidsvg/c$o;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 15
    :goto_3
    iget-object v2, p1, Lcom/caverock/androidsvg/c$q;->s:Lcom/caverock/androidsvg/c$o;

    const/high16 v4, 0x40400000    # 3.0f

    if-eqz v2, :cond_6

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v2

    goto :goto_4

    :cond_6
    const/high16 v2, 0x40400000    # 3.0f

    .line 16
    :goto_4
    iget-object v5, p1, Lcom/caverock/androidsvg/c$q;->t:Lcom/caverock/androidsvg/c$o;

    if-eqz v5, :cond_7

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v4

    .line 17
    :cond_7
    iget-object v5, p1, Lcom/caverock/androidsvg/c$q0;->o:Lcom/caverock/androidsvg/c$a;

    if-eqz v5, :cond_e

    .line 18
    iget v6, v5, Lcom/caverock/androidsvg/c$a;->d:F

    div-float v6, v2, v6

    .line 19
    iget v5, v5, Lcom/caverock/androidsvg/c$a;->e:F

    div-float v5, v4, v5

    .line 20
    iget-object v7, p1, Lcom/caverock/androidsvg/c$o0;->n:Lcom/caverock/androidsvg/b;

    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    sget-object v7, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b;

    .line 21
    :goto_5
    sget-object v8, Lcom/caverock/androidsvg/b;->c:Lcom/caverock/androidsvg/b;

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/b;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 22
    invoke-virtual {v7}, Lcom/caverock/androidsvg/b;->b()Lcom/caverock/androidsvg/b$b;

    move-result-object v8

    sget-object v9, Lcom/caverock/androidsvg/b$b;->c:Lcom/caverock/androidsvg/b$b;

    if-ne v8, v9, :cond_9

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_6

    :cond_9
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :goto_6
    move v6, v5

    move v5, v6

    :cond_a
    neg-float p2, p2

    mul-float p2, p2, v6

    neg-float v0, v0

    mul-float v0, v0, v5

    .line 23
    invoke-virtual {v3, p2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 24
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 25
    iget-object p2, p1, Lcom/caverock/androidsvg/c$q0;->o:Lcom/caverock/androidsvg/c$a;

    iget v0, p2, Lcom/caverock/androidsvg/c$a;->d:F

    mul-float v0, v0, v6

    .line 26
    iget p2, p2, Lcom/caverock/androidsvg/c$a;->e:F

    mul-float p2, p2, v5

    .line 27
    invoke-static {}, Lcom/caverock/androidsvg/d;->a()[I

    move-result-object v8

    invoke-virtual {v7}, Lcom/caverock/androidsvg/b;->a()Lcom/caverock/androidsvg/b$a;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/4 v9, 0x3

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v8, v9, :cond_c

    const/4 v9, 0x4

    if-eq v8, v9, :cond_b

    const/4 v9, 0x6

    if-eq v8, v9, :cond_c

    const/4 v9, 0x7

    if-eq v8, v9, :cond_b

    const/16 v9, 0x9

    if-eq v8, v9, :cond_c

    const/16 v9, 0xa

    if-eq v8, v9, :cond_b

    const/4 v0, 0x0

    goto :goto_8

    :cond_b
    sub-float v0, v2, v0

    goto :goto_7

    :cond_c
    sub-float v0, v2, v0

    div-float/2addr v0, v10

    :goto_7
    sub-float v0, v1, v0

    .line 28
    :goto_8
    invoke-static {}, Lcom/caverock/androidsvg/d;->a()[I

    move-result-object v8

    .line 29
    invoke-virtual {v7}, Lcom/caverock/androidsvg/b;->a()Lcom/caverock/androidsvg/b$a;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v8, v7

    packed-switch v7, :pswitch_data_0

    goto :goto_a

    :pswitch_0
    sub-float p2, v4, p2

    goto :goto_9

    :pswitch_1
    sub-float p2, v4, p2

    div-float/2addr p2, v10

    :goto_9
    sub-float/2addr v1, p2

    .line 30
    :goto_a
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object p2, p2, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object p2, p2, Lcom/caverock/androidsvg/c$d0;->w:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_d

    .line 31
    invoke-direct {p0, v0, v1, v2, v4}, Lcom/caverock/androidsvg/d;->Y(FFFF)V

    .line 32
    :cond_d
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 33
    invoke-virtual {v3, v6, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 34
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_b

    :cond_e
    neg-float p2, p2

    neg-float v0, v0

    .line 35
    invoke-virtual {v3, p2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 36
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 37
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object p2, p2, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object p2, p2, Lcom/caverock/androidsvg/c$d0;->w:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_f

    .line 38
    invoke-direct {p0, v1, v1, v2, v4}, Lcom/caverock/androidsvg/d;->Y(FFFF)V

    .line 39
    :cond_f
    :goto_b
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result p2

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d;->U(Lcom/caverock/androidsvg/c$i0;Z)V

    if-eqz p2, :cond_10

    .line 41
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    .line 42
    :cond_10
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->a0()V

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private X(Lcom/caverock/androidsvg/c$k;)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v6, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v1, v1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v2, v1, Lcom/caverock/androidsvg/c$d0;->y:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v3, v1, Lcom/caverock/androidsvg/c$d0;->z:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v1, v1, Lcom/caverock/androidsvg/c$d0;->A:Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "Marker reference \'%s\' not found"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_2

    .line 2
    iget-object v3, v0, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    invoke-virtual {v3, v2}, Lcom/caverock/androidsvg/c;->k(Ljava/lang/String;)Lcom/caverock/androidsvg/c$m0;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    check-cast v2, Lcom/caverock/androidsvg/c$q;

    move-object v10, v2

    goto :goto_0

    :cond_1
    new-array v2, v8, [Ljava/lang/Object;

    .line 4
    iget-object v3, v6, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v3, v3, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, v3, Lcom/caverock/androidsvg/c$d0;->y:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v10, 0x0

    .line 5
    :goto_0
    iget-object v2, v6, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v2, v2, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v2, v2, Lcom/caverock/androidsvg/c$d0;->z:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 6
    iget-object v3, v0, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    invoke-virtual {v3, v2}, Lcom/caverock/androidsvg/c;->k(Ljava/lang/String;)Lcom/caverock/androidsvg/c$m0;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7
    check-cast v2, Lcom/caverock/androidsvg/c$q;

    move-object v11, v2

    goto :goto_1

    :cond_3
    new-array v2, v8, [Ljava/lang/Object;

    .line 8
    iget-object v3, v6, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v3, v3, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, v3, Lcom/caverock/androidsvg/c$d0;->z:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/4 v11, 0x0

    .line 9
    :goto_1
    iget-object v2, v6, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v2, v2, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v2, v2, Lcom/caverock/androidsvg/c$d0;->A:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 10
    iget-object v3, v0, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    invoke-virtual {v3, v2}, Lcom/caverock/androidsvg/c;->k(Ljava/lang/String;)Lcom/caverock/androidsvg/c$m0;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 11
    check-cast v2, Lcom/caverock/androidsvg/c$q;

    move-object v12, v2

    goto :goto_2

    :cond_5
    new-array v2, v8, [Ljava/lang/Object;

    .line 12
    iget-object v3, v6, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v3, v3, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, v3, Lcom/caverock/androidsvg/c$d0;->A:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    const/4 v12, 0x0

    .line 13
    :goto_2
    instance-of v1, v0, Lcom/caverock/androidsvg/c$u;

    if-eqz v1, :cond_7

    .line 14
    new-instance v1, Lcom/caverock/androidsvg/d$a;

    check-cast v0, Lcom/caverock/androidsvg/c$u;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$u;->o:Lcom/caverock/androidsvg/c$v;

    invoke-direct {v1, v6, v0}, Lcom/caverock/androidsvg/d$a;-><init>(Lcom/caverock/androidsvg/d;Lcom/caverock/androidsvg/c$v;)V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/d$a;->f()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_8

    .line 15
    :cond_7
    instance-of v1, v0, Lcom/caverock/androidsvg/c$p;

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-eqz v1, :cond_c

    .line 16
    check-cast v0, Lcom/caverock/androidsvg/c$p;

    .line 17
    iget-object v1, v0, Lcom/caverock/androidsvg/c$p;->o:Lcom/caverock/androidsvg/c$o;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v6}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v1

    move v2, v1

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    .line 18
    :goto_3
    iget-object v1, v0, Lcom/caverock/androidsvg/c$p;->p:Lcom/caverock/androidsvg/c$o;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v6}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v1

    move v3, v1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    .line 19
    :goto_4
    iget-object v1, v0, Lcom/caverock/androidsvg/c$p;->q:Lcom/caverock/androidsvg/c$o;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v6}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v1

    move v15, v1

    goto :goto_5

    :cond_a
    const/4 v15, 0x0

    .line 20
    :goto_5
    iget-object v0, v0, Lcom/caverock/androidsvg/c$p;->r:Lcom/caverock/androidsvg/c$o;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v6}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v0

    move v14, v0

    .line 21
    :cond_b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    new-instance v13, Lcom/caverock/androidsvg/d$b;

    sub-float v16, v15, v2

    sub-float v17, v14, v3

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v4, v16

    move-object v9, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/d$b;-><init>(Lcom/caverock/androidsvg/d;FFFF)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v13, Lcom/caverock/androidsvg/d$b;

    move-object v0, v13

    move v2, v15

    move v3, v14

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/d$b;-><init>(Lcom/caverock/androidsvg/d;FFFF)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto/16 :goto_8

    .line 24
    :cond_c
    move-object v9, v0

    check-cast v9, Lcom/caverock/androidsvg/c$y;

    .line 25
    iget-object v0, v9, Lcom/caverock/androidsvg/c$y;->o:[F

    array-length v15, v0

    if-ge v15, v13, :cond_d

    const/4 v0, 0x0

    goto :goto_8

    .line 26
    :cond_d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v16, Lcom/caverock/androidsvg/d$b;

    iget-object v0, v9, Lcom/caverock/androidsvg/c$y;->o:[F

    aget v2, v0, v7

    aget v3, v0, v8

    const/4 v4, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v13, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/d$b;-><init>(Lcom/caverock/androidsvg/d;FFFF)V

    move-object/from16 v2, v16

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v14, 0x2

    :goto_6
    if-lt v14, v15, :cond_16

    .line 28
    instance-of v3, v9, Lcom/caverock/androidsvg/c$z;

    if-eqz v3, :cond_e

    .line 29
    iget-object v3, v9, Lcom/caverock/androidsvg/c$y;->o:[F

    aget v4, v3, v7

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_f

    aget v0, v3, v8

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_f

    .line 30
    aget v4, v3, v7

    .line 31
    aget v3, v3, v8

    .line 32
    invoke-virtual {v2, v4, v3}, Lcom/caverock/androidsvg/d$b;->a(FF)V

    .line 33
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v9, Lcom/caverock/androidsvg/d$b;

    iget v0, v2, Lcom/caverock/androidsvg/d$b;->a:F

    sub-float v5, v4, v0

    iget v0, v2, Lcom/caverock/androidsvg/d$b;->b:F

    sub-float v14, v3, v0

    move-object v0, v9

    move-object/from16 v1, p0

    move v2, v4

    move v4, v5

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/d$b;-><init>(Lcom/caverock/androidsvg/d;FFFF)V

    .line 35
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/d$b;

    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/d$b;->b(Lcom/caverock/androidsvg/d$b;)V

    .line 36
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v13, v7, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 38
    :cond_e
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_7
    move-object v0, v13

    :goto_8
    if-nez v0, :cond_10

    return-void

    .line 39
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    return-void

    .line 40
    :cond_11
    iget-object v2, v6, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v2, v2, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/caverock/androidsvg/c$d0;->A:Ljava/lang/String;

    iput-object v5, v2, Lcom/caverock/androidsvg/c$d0;->z:Ljava/lang/String;

    iput-object v5, v2, Lcom/caverock/androidsvg/c$d0;->y:Ljava/lang/String;

    if-eqz v10, :cond_12

    .line 41
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/d$b;

    invoke-direct {v6, v10, v2}, Lcom/caverock/androidsvg/d;->W(Lcom/caverock/androidsvg/c$q;Lcom/caverock/androidsvg/d$b;)V

    :cond_12
    if-eqz v11, :cond_14

    const/4 v2, 0x1

    :goto_9
    add-int/lit8 v3, v1, -0x1

    if-lt v2, v3, :cond_13

    goto :goto_a

    .line 42
    :cond_13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/d$b;

    invoke-direct {v6, v11, v3}, Lcom/caverock/androidsvg/d;->W(Lcom/caverock/androidsvg/c$q;Lcom/caverock/androidsvg/d$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_14
    :goto_a
    if-eqz v12, :cond_15

    sub-int/2addr v1, v8

    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/d$b;

    invoke-direct {v6, v12, v0}, Lcom/caverock/androidsvg/d;->W(Lcom/caverock/androidsvg/c$q;Lcom/caverock/androidsvg/d$b;)V

    :cond_15
    return-void

    :cond_16
    const/4 v5, 0x0

    .line 44
    iget-object v0, v9, Lcom/caverock/androidsvg/c$y;->o:[F

    aget v4, v0, v14

    add-int/lit8 v1, v14, 0x1

    .line 45
    aget v3, v0, v1

    .line 46
    invoke-virtual {v2, v4, v3}, Lcom/caverock/androidsvg/d$b;->a(FF)V

    .line 47
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v16, Lcom/caverock/androidsvg/d$b;

    iget v0, v2, Lcom/caverock/androidsvg/d$b;->a:F

    sub-float v17, v4, v0

    iget v0, v2, Lcom/caverock/androidsvg/d$b;->b:F

    sub-float v18, v3, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v2, v4

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v4, v17

    move-object/from16 v17, v5

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/d$b;-><init>(Lcom/caverock/androidsvg/d;FFFF)V

    add-int/lit8 v14, v14, 0x2

    move-object/from16 v2, v16

    move/from16 v1, v19

    move/from16 v0, v20

    goto/16 :goto_6
.end method

.method private Y(FFFF)V
    .locals 1

    add-float/2addr p3, p1

    add-float/2addr p4, p2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->x:Lcom/caverock/androidsvg/c$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/caverock/androidsvg/c$b;->d:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v0

    add-float/2addr p1, v0

    .line 3
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->x:Lcom/caverock/androidsvg/c$b;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$b;->a:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v0

    add-float/2addr p2, v0

    .line 4
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->x:Lcom/caverock/androidsvg/c$b;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$b;->b:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v0

    sub-float/2addr p3, v0

    .line 5
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->x:Lcom/caverock/androidsvg/c$b;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$b;->c:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v0

    sub-float/2addr p4, v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    return-void
.end method

.method private Z(Lcom/caverock/androidsvg/d$g;ZLcom/caverock/androidsvg/c$n0;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    if-eqz p2, :cond_0

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->e:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->g:Ljava/lang/Float;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2
    instance-of v1, p3, Lcom/caverock/androidsvg/c$e;

    if-eqz v1, :cond_1

    .line 3
    check-cast p3, Lcom/caverock/androidsvg/c$e;

    iget p3, p3, Lcom/caverock/androidsvg/c$e;->b:I

    goto :goto_1

    .line 4
    :cond_1
    instance-of p3, p3, Lcom/caverock/androidsvg/c$f;

    if-eqz p3, :cond_3

    .line 5
    iget-object p3, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object p3, p3, Lcom/caverock/androidsvg/c$d0;->o:Lcom/caverock/androidsvg/c$e;

    iget p3, p3, Lcom/caverock/androidsvg/c$e;->b:I

    .line 6
    :goto_1
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/d;->q(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p3, v0

    if-eqz p2, :cond_2

    .line 7
    iget-object p1, p1, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 8
    :cond_2
    iget-object p1, p1, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic a()[I
    .locals 8

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/d;->k:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/b$a;->values()[Lcom/caverock/androidsvg/b$a;

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 v2, 0x9

    :try_start_1
    aput v0, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x7

    const/4 v4, 0x6

    :try_start_2
    aput v0, v1, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v5, 0x4

    const/4 v6, 0x3

    :try_start_3
    aput v5, v1, v6
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/16 v7, 0x8

    :try_start_4
    aput v2, v1, v7
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v2, 0x5

    :try_start_5
    aput v4, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v4, 0x2

    :try_start_6
    aput v6, v1, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    aput v7, v1, v0
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    aput v2, v1, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    aput v4, v1, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    sput-object v1, Lcom/caverock/androidsvg/d;->k:[I

    return-object v1
.end method

.method private a0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 2
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/d$g;

    iput-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    return-void
.end method

.method static synthetic b()[I
    .locals 3

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/d;->n:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/c$d0$a;->values()[Lcom/caverock/androidsvg/c$d0$a;

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    :try_start_0
    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    :try_start_1
    aput v2, v1, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v1, Lcom/caverock/androidsvg/d;->n:[I

    return-object v1
.end method

.method private b0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->f:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/d$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/d$g;

    iput-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    return-void
.end method

.method static synthetic c(Lcom/caverock/androidsvg/d;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->h0()Z

    move-result p0

    return p0
.end method

.method private c0(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/d$g;->i:Z

    const-string v1, " "

    if-eqz v0, :cond_0

    const-string p2, "[\\n\\t]"

    .line 2
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "\\n"

    const-string v2, ""

    .line 3
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\t"

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    const-string p2, "^\\s+"

    .line 5
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, "\\s+$"

    .line 6
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string p2, "\\s{2,}"

    .line 7
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Lcom/caverock/androidsvg/d;)Lcom/caverock/androidsvg/d$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    return-object p0
.end method

.method private d0(Lcom/caverock/androidsvg/c$j0;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/caverock/androidsvg/d;->h:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 5
    iget-object v2, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    iget v3, v2, Lcom/caverock/androidsvg/c$a;->b:F

    const/4 v4, 0x0

    aput v3, v1, v4

    iget v3, v2, Lcom/caverock/androidsvg/c$a;->c:F

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 6
    invoke-virtual {v2}, Lcom/caverock/androidsvg/c$a;->a()F

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v2, 0x3

    iget-object v6, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    iget v7, v6, Lcom/caverock/androidsvg/c$a;->c:F

    aput v7, v1, v2

    const/4 v2, 0x4

    .line 7
    invoke-virtual {v6}, Lcom/caverock/androidsvg/c$a;->a()F

    move-result v6

    aput v6, v1, v2

    const/4 v2, 0x5

    iget-object v6, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-virtual {v6}, Lcom/caverock/androidsvg/c$a;->b()F

    move-result v6

    aput v6, v1, v2

    .line 8
    iget-object p1, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    iget v2, p1, Lcom/caverock/androidsvg/c$a;->b:F

    const/4 v6, 0x6

    aput v2, v1, v6

    const/4 v2, 0x7

    invoke-virtual {p1}, Lcom/caverock/androidsvg/c$a;->b()F

    move-result p1

    aput p1, v1, v2

    .line 9
    iget-object p1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 11
    new-instance p1, Landroid/graphics/RectF;

    aget v0, v1, v4

    aget v2, v1, v5

    aget v4, v1, v4

    aget v5, v1, v5

    invoke-direct {p1, v0, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    if-le v3, v6, :cond_6

    .line 12
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/c$j0;

    .line 13
    iget-object v1, v0, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    if-nez v1, :cond_2

    .line 14
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 15
    new-instance v4, Lcom/caverock/androidsvg/c$a;

    sub-float/2addr v3, v1

    sub-float/2addr p1, v2

    invoke-direct {v4, v1, v2, v3, p1}, Lcom/caverock/androidsvg/c$a;-><init>(FFFF)V

    .line 16
    iput-object v4, v0, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    goto :goto_1

    .line 17
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v0

    sub-float/2addr p1, v2

    .line 18
    iget v4, v1, Lcom/caverock/androidsvg/c$a;->b:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    iput v0, v1, Lcom/caverock/androidsvg/c$a;->b:F

    .line 19
    :cond_3
    iget v4, v1, Lcom/caverock/androidsvg/c$a;->c:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_4

    iput v2, v1, Lcom/caverock/androidsvg/c$a;->c:F

    :cond_4
    add-float/2addr v0, v3

    .line 20
    invoke-virtual {v1}, Lcom/caverock/androidsvg/c$a;->a()F

    move-result v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_5

    iget v3, v1, Lcom/caverock/androidsvg/c$a;->b:F

    sub-float/2addr v0, v3

    iput v0, v1, Lcom/caverock/androidsvg/c$a;->d:F

    :cond_5
    add-float/2addr v2, p1

    .line 21
    invoke-virtual {v1}, Lcom/caverock/androidsvg/c$a;->b()F

    move-result p1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_b

    iget p1, v1, Lcom/caverock/androidsvg/c$a;->c:F

    sub-float/2addr v2, p1

    iput v2, v1, Lcom/caverock/androidsvg/c$a;->e:F

    goto :goto_1

    .line 22
    :cond_6
    aget v0, v1, v3

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_7

    aget v0, v1, v3

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 23
    :cond_7
    aget v0, v1, v3

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    aget v0, v1, v3

    iput v0, p1, Landroid/graphics/RectF;->right:F

    :cond_8
    add-int/lit8 v0, v3, 0x1

    .line 24
    aget v2, v1, v0

    iget v4, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_9

    aget v2, v1, v0

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 25
    :cond_9
    aget v2, v1, v0

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_a

    aget v0, v1, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_a
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_0

    :cond_b
    :goto_1
    return-void
.end method

.method static synthetic e(Lcom/caverock/androidsvg/d;)Landroid/graphics/Canvas;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    return-object p0
.end method

.method private e0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$d0;)V
    .locals 11

    const-wide/16 v0, 0x1000

    .line 1
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, p2, Lcom/caverock/androidsvg/c$d0;->o:Lcom/caverock/androidsvg/c$e;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->o:Lcom/caverock/androidsvg/c$e;

    :cond_0
    const-wide/16 v0, 0x800

    .line 3
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, p2, Lcom/caverock/androidsvg/c$d0;->n:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->n:Ljava/lang/Float;

    :cond_1
    const-wide/16 v0, 0x1

    .line 5
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, p2, Lcom/caverock/androidsvg/c$d0;->c:Lcom/caverock/androidsvg/c$n0;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->c:Lcom/caverock/androidsvg/c$n0;

    .line 7
    iget-object v0, p2, Lcom/caverock/androidsvg/c$d0;->c:Lcom/caverock/androidsvg/c$n0;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lcom/caverock/androidsvg/d$g;->c:Z

    :cond_3
    const-wide/16 v3, 0x4

    .line 8
    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, p2, Lcom/caverock/androidsvg/c$d0;->e:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->e:Ljava/lang/Float;

    :cond_4
    const-wide/16 v3, 0x1805

    .line 10
    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->c:Lcom/caverock/androidsvg/c$n0;

    invoke-direct {p0, p1, v2, v0}, Lcom/caverock/androidsvg/d;->Z(Lcom/caverock/androidsvg/d$g;ZLcom/caverock/androidsvg/c$n0;)V

    :cond_5
    const-wide/16 v3, 0x2

    .line 12
    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, p2, Lcom/caverock/androidsvg/c$d0;->d:Lcom/caverock/androidsvg/c$d0$a;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->d:Lcom/caverock/androidsvg/c$d0$a;

    :cond_6
    const-wide/16 v3, 0x8

    .line 14
    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, p2, Lcom/caverock/androidsvg/c$d0;->f:Lcom/caverock/androidsvg/c$n0;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->f:Lcom/caverock/androidsvg/c$n0;

    .line 16
    iget-object v0, p2, Lcom/caverock/androidsvg/c$d0;->f:Lcom/caverock/androidsvg/c$n0;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p1, Lcom/caverock/androidsvg/d$g;->d:Z

    :cond_8
    const-wide/16 v3, 0x10

    .line 17
    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 18
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, p2, Lcom/caverock/androidsvg/c$d0;->g:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->g:Ljava/lang/Float;

    :cond_9
    const-wide/16 v3, 0x1818

    .line 19
    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 20
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->f:Lcom/caverock/androidsvg/c$n0;

    invoke-direct {p0, p1, v1, v0}, Lcom/caverock/androidsvg/d;->Z(Lcom/caverock/androidsvg/d$g;ZLcom/caverock/androidsvg/c$n0;)V

    :cond_a
    const-wide v3, 0x800000000L

    .line 21
    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 22
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, p2, Lcom/caverock/androidsvg/c$d0;->M:Lcom/caverock/androidsvg/c$d0$h;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->M:Lcom/caverock/androidsvg/c$d0$h;

    :cond_b
    const-wide/16 v3, 0x20

    .line 23
    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 24
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, p2, Lcom/caverock/androidsvg/c$d0;->h:Lcom/caverock/androidsvg/c$o;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->h:Lcom/caverock/androidsvg/c$o;

    .line 25
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/c$o;->c(Lcom/caverock/androidsvg/d;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_c
    const-wide/16 v3, 0x40

    .line 26
    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eqz v0, :cond_11

    .line 27
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v5, p2, Lcom/caverock/androidsvg/c$d0;->i:Lcom/caverock/androidsvg/c$d0$c;

    iput-object v5, v0, Lcom/caverock/androidsvg/c$d0;->i:Lcom/caverock/androidsvg/c$d0$c;

    .line 28
    sget-object v0, Lcom/caverock/androidsvg/d;->l:[I

    if-eqz v0, :cond_d

    goto :goto_2

    :cond_d
    invoke-static {}, Lcom/caverock/androidsvg/c$d0$c;->values()[Lcom/caverock/androidsvg/c$d0$c;

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/caverock/androidsvg/d;->l:[I

    .line 29
    :goto_2
    iget-object v5, p2, Lcom/caverock/androidsvg/c$d0;->i:Lcom/caverock/androidsvg/c$d0$c;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v2, :cond_10

    if-eq v0, v3, :cond_f

    if-eq v0, v4, :cond_e

    goto :goto_3

    .line 30
    :cond_e
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_3

    .line 31
    :cond_f
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_3

    .line 32
    :cond_10
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_11
    :goto_3
    const-wide/16 v5, 0x80

    .line 33
    invoke-direct {p0, p2, v5, v6}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 34
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v5, p2, Lcom/caverock/androidsvg/c$d0;->j:Lcom/caverock/androidsvg/c$d0$d;

    iput-object v5, v0, Lcom/caverock/androidsvg/c$d0;->j:Lcom/caverock/androidsvg/c$d0$d;

    .line 35
    sget-object v0, Lcom/caverock/androidsvg/d;->m:[I

    if-eqz v0, :cond_12

    goto :goto_4

    :cond_12
    invoke-static {}, Lcom/caverock/androidsvg/c$d0$d;->values()[Lcom/caverock/androidsvg/c$d0$d;

    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/caverock/androidsvg/d;->m:[I

    .line 36
    :goto_4
    iget-object v5, p2, Lcom/caverock/androidsvg/c$d0;->j:Lcom/caverock/androidsvg/c$d0$d;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v2, :cond_15

    if-eq v0, v3, :cond_14

    if-eq v0, v4, :cond_13

    goto :goto_5

    .line 37
    :cond_13
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_5

    .line 38
    :cond_14
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_5

    .line 39
    :cond_15
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :cond_16
    :goto_5
    const-wide/16 v3, 0x100

    .line 40
    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 41
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, p2, Lcom/caverock/androidsvg/c$d0;->k:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->k:Ljava/lang/Float;

    .line 42
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/c$d0;->k:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    :cond_17
    const-wide/16 v3, 0x200

    .line 43
    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 44
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, p2, Lcom/caverock/androidsvg/c$d0;->l:[Lcom/caverock/androidsvg/c$o;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->l:[Lcom/caverock/androidsvg/c$o;

    :cond_18
    const-wide/16 v3, 0x400

    .line 45
    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 46
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, p2, Lcom/caverock/androidsvg/c$d0;->m:Lcom/caverock/androidsvg/c$o;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->m:Lcom/caverock/androidsvg/c$o;

    :cond_19
    const-wide/16 v3, 0x600

    .line 47
    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1f

    .line 48
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->l:[Lcom/caverock/androidsvg/c$o;

    if-nez v0, :cond_1a

    .line 49
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_8

    .line 50
    :cond_1a
    array-length v0, v0

    .line 51
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_1b

    move v4, v0

    goto :goto_6

    :cond_1b
    mul-int/lit8 v4, v0, 0x2

    .line 52
    :goto_6
    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_7
    if-lt v7, v4, :cond_1e

    cmpl-float v0, v8, v6

    if-nez v0, :cond_1c

    .line 53
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_8

    .line 54
    :cond_1c
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->m:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/c$o;->c(Lcom/caverock/androidsvg/d;)F

    move-result v0

    cmpg-float v4, v0, v6

    if-gez v4, :cond_1d

    rem-float/2addr v0, v8

    add-float/2addr v0, v8

    .line 55
    :cond_1d
    iget-object v4, p1, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/DashPathEffect;

    invoke-direct {v6, v5, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_8

    .line 56
    :cond_1e
    iget-object v9, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v9, v9, Lcom/caverock/androidsvg/c$d0;->l:[Lcom/caverock/androidsvg/c$o;

    rem-int v10, v7, v0

    aget-object v9, v9, v10

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/c$o;->c(Lcom/caverock/androidsvg/d;)F

    move-result v9

    aput v9, v5, v7

    .line 57
    aget v9, v5, v7

    add-float/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_1f
    :goto_8
    const-wide/16 v4, 0x4000

    .line 58
    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 59
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 60
    iget-object v4, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v5, p2, Lcom/caverock/androidsvg/c$d0;->q:Lcom/caverock/androidsvg/c$o;

    iput-object v5, v4, Lcom/caverock/androidsvg/c$d0;->q:Lcom/caverock/androidsvg/c$o;

    .line 61
    iget-object v4, p1, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    iget-object v5, p2, Lcom/caverock/androidsvg/c$d0;->q:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v5, p0, v0}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 62
    iget-object v4, p1, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    iget-object v5, p2, Lcom/caverock/androidsvg/c$d0;->q:Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v5, p0, v0}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_20
    const-wide/16 v4, 0x2000

    .line 63
    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 64
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v4, p2, Lcom/caverock/androidsvg/c$d0;->p:Ljava/util/List;

    iput-object v4, v0, Lcom/caverock/androidsvg/c$d0;->p:Ljava/util/List;

    :cond_21
    const-wide/32 v4, 0x8000

    .line 65
    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 66
    iget-object v0, p2, Lcom/caverock/androidsvg/c$d0;->r:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, -0x1

    const/16 v5, 0x64

    if-ne v0, v4, :cond_22

    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->r:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v5, :cond_22

    .line 67
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v4, v0, Lcom/caverock/androidsvg/c$d0;->r:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/caverock/androidsvg/c$d0;->r:Ljava/lang/Integer;

    goto :goto_9

    .line 68
    :cond_22
    iget-object v0, p2, Lcom/caverock/androidsvg/c$d0;->r:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_23

    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->r:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x384

    if-ge v0, v4, :cond_23

    .line 69
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v4, v0, Lcom/caverock/androidsvg/c$d0;->r:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/caverock/androidsvg/c$d0;->r:Ljava/lang/Integer;

    goto :goto_9

    .line 70
    :cond_23
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v4, p2, Lcom/caverock/androidsvg/c$d0;->r:Ljava/lang/Integer;

    iput-object v4, v0, Lcom/caverock/androidsvg/c$d0;->r:Ljava/lang/Integer;

    :cond_24
    :goto_9
    const-wide/32 v4, 0x10000

    .line 71
    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 72
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v4, p2, Lcom/caverock/androidsvg/c$d0;->s:Lcom/caverock/androidsvg/c$d0$b;

    iput-object v4, v0, Lcom/caverock/androidsvg/c$d0;->s:Lcom/caverock/androidsvg/c$d0$b;

    :cond_25
    const-wide/32 v4, 0x1a000

    .line 73
    invoke-direct {p0, p2, v4, v5}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 74
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->p:Ljava/util/List;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/caverock/androidsvg/d;->d:Lcom/caverock/androidsvg/c;

    if-eqz v0, :cond_28

    .line 75
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_a

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    iget-object v4, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v5, v4, Lcom/caverock/androidsvg/c$d0;->r:Ljava/lang/Integer;

    iget-object v4, v4, Lcom/caverock/androidsvg/c$d0;->s:Lcom/caverock/androidsvg/c$d0$b;

    invoke-direct {p0, v3, v5, v4}, Lcom/caverock/androidsvg/d;->o(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/c$d0$b;)Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_26

    :cond_28
    :goto_a
    if-nez v3, :cond_29

    .line 78
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, v0, Lcom/caverock/androidsvg/c$d0;->r:Ljava/lang/Integer;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->s:Lcom/caverock/androidsvg/c$d0$b;

    const-string v4, "sans-serif"

    invoke-direct {p0, v4, v3, v0}, Lcom/caverock/androidsvg/d;->o(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/c$d0$b;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 79
    :cond_29
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 80
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_2a
    const-wide/32 v3, 0x20000

    .line 81
    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 82
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, p2, Lcom/caverock/androidsvg/c$d0;->t:Lcom/caverock/androidsvg/c$d0$f;

    iput-object v3, v0, Lcom/caverock/androidsvg/c$d0;->t:Lcom/caverock/androidsvg/c$d0$f;

    .line 83
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/c$d0;->t:Lcom/caverock/androidsvg/c$d0$f;

    sget-object v4, Lcom/caverock/androidsvg/c$d0$f;->e:Lcom/caverock/androidsvg/c$d0$f;

    if-ne v3, v4, :cond_2b

    const/4 v3, 0x1

    goto :goto_b

    :cond_2b
    const/4 v3, 0x0

    :goto_b
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 84
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/c$d0;->t:Lcom/caverock/androidsvg/c$d0$f;

    sget-object v5, Lcom/caverock/androidsvg/c$d0$f;->c:Lcom/caverock/androidsvg/c$d0$f;

    if-ne v3, v5, :cond_2c

    const/4 v3, 0x1

    goto :goto_c

    :cond_2c
    const/4 v3, 0x0

    :goto_c
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 85
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/c$d0;->t:Lcom/caverock/androidsvg/c$d0$f;

    if-ne v3, v4, :cond_2d

    const/4 v3, 0x1

    goto :goto_d

    :cond_2d
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 86
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/c$d0;->t:Lcom/caverock/androidsvg/c$d0$f;

    if-ne v3, v5, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :cond_2f
    const-wide v0, 0x1000000000L

    .line 87
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 88
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, p2, Lcom/caverock/androidsvg/c$d0;->u:Lcom/caverock/androidsvg/c$d0$g;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->u:Lcom/caverock/androidsvg/c$d0$g;

    :cond_30
    const-wide/32 v0, 0x40000

    .line 89
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 90
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, p2, Lcom/caverock/androidsvg/c$d0;->v:Lcom/caverock/androidsvg/c$d0$e;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->v:Lcom/caverock/androidsvg/c$d0$e;

    :cond_31
    const-wide/32 v0, 0x80000

    .line 91
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 92
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, p2, Lcom/caverock/androidsvg/c$d0;->w:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->w:Ljava/lang/Boolean;

    :cond_32
    const-wide/32 v0, 0x200000

    .line 93
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 94
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, p2, Lcom/caverock/androidsvg/c$d0;->y:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->y:Ljava/lang/String;

    :cond_33
    const-wide/32 v0, 0x400000

    .line 95
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 96
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, p2, Lcom/caverock/androidsvg/c$d0;->z:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->z:Ljava/lang/String;

    :cond_34
    const-wide/32 v0, 0x800000

    .line 97
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 98
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, p2, Lcom/caverock/androidsvg/c$d0;->A:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->A:Ljava/lang/String;

    :cond_35
    const-wide/32 v0, 0x1000000

    .line 99
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 100
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, p2, Lcom/caverock/androidsvg/c$d0;->B:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->B:Ljava/lang/Boolean;

    :cond_36
    const-wide/32 v0, 0x2000000

    .line 101
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 102
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, p2, Lcom/caverock/androidsvg/c$d0;->C:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->C:Ljava/lang/Boolean;

    :cond_37
    const-wide/32 v0, 0x100000

    .line 103
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 104
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, p2, Lcom/caverock/androidsvg/c$d0;->x:Lcom/caverock/androidsvg/c$b;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->x:Lcom/caverock/androidsvg/c$b;

    :cond_38
    const-wide/32 v0, 0x10000000

    .line 105
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 106
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, p2, Lcom/caverock/androidsvg/c$d0;->F:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->F:Ljava/lang/String;

    :cond_39
    const-wide/32 v0, 0x20000000

    .line 107
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 108
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, p2, Lcom/caverock/androidsvg/c$d0;->G:Lcom/caverock/androidsvg/c$d0$a;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->G:Lcom/caverock/androidsvg/c$d0$a;

    :cond_3a
    const-wide/32 v0, 0x40000000

    .line 109
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 110
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, p2, Lcom/caverock/androidsvg/c$d0;->H:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->H:Ljava/lang/String;

    :cond_3b
    const-wide/32 v0, 0x4000000

    .line 111
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 112
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, p2, Lcom/caverock/androidsvg/c$d0;->D:Lcom/caverock/androidsvg/c$n0;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->D:Lcom/caverock/androidsvg/c$n0;

    :cond_3c
    const-wide/32 v0, 0x8000000

    .line 113
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 114
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, p2, Lcom/caverock/androidsvg/c$d0;->E:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->E:Ljava/lang/Float;

    :cond_3d
    const-wide v0, 0x200000000L

    .line 115
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 116
    iget-object v0, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, p2, Lcom/caverock/androidsvg/c$d0;->K:Lcom/caverock/androidsvg/c$n0;

    iput-object v1, v0, Lcom/caverock/androidsvg/c$d0;->K:Lcom/caverock/androidsvg/c$n0;

    :cond_3e
    const-wide v0, 0x400000000L

    .line 117
    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 118
    iget-object p1, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object p2, p2, Lcom/caverock/androidsvg/c$d0;->L:Ljava/lang/Float;

    iput-object p2, p1, Lcom/caverock/androidsvg/c$d0;->L:Ljava/lang/Float;

    :cond_3f
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method static synthetic f(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/caverock/androidsvg/c$m0;->b:Lcom/caverock/androidsvg/c$i0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p1, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    .line 3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/caverock/androidsvg/c$d0;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    iput-object v2, v1, Lcom/caverock/androidsvg/c$d0;->w:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 5
    iput-object v0, v1, Lcom/caverock/androidsvg/c$d0;->x:Lcom/caverock/androidsvg/c$b;

    .line 6
    iput-object v0, v1, Lcom/caverock/androidsvg/c$d0;->F:Ljava/lang/String;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/c$d0;->n:Ljava/lang/Float;

    .line 8
    sget-object v3, Lcom/caverock/androidsvg/c$e;->c:Lcom/caverock/androidsvg/c$e;

    iput-object v3, v1, Lcom/caverock/androidsvg/c$d0;->D:Lcom/caverock/androidsvg/c$n0;

    .line 9
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/c$d0;->E:Ljava/lang/Float;

    .line 10
    iput-object v0, v1, Lcom/caverock/androidsvg/c$d0;->H:Ljava/lang/String;

    .line 11
    iput-object v0, v1, Lcom/caverock/androidsvg/c$d0;->I:Lcom/caverock/androidsvg/c$n0;

    .line 12
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/c$d0;->J:Ljava/lang/Float;

    .line 13
    iput-object v0, v1, Lcom/caverock/androidsvg/c$d0;->K:Lcom/caverock/androidsvg/c$n0;

    .line 14
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Lcom/caverock/androidsvg/c$d0;->L:Ljava/lang/Float;

    .line 15
    sget-object v0, Lcom/caverock/androidsvg/c$d0$h;->b:Lcom/caverock/androidsvg/c$d0$h;

    iput-object v0, v1, Lcom/caverock/androidsvg/c$d0;->M:Lcom/caverock/androidsvg/c$d0$h;

    .line 16
    iget-object v0, p2, Lcom/caverock/androidsvg/c$k0;->e:Lcom/caverock/androidsvg/c$d0;

    if-eqz v0, :cond_2

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d;->e0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$d0;)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->d:Lcom/caverock/androidsvg/c;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/c;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->d:Lcom/caverock/androidsvg/c;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/a$f;

    .line 20
    iget-object v2, v1, Lcom/caverock/androidsvg/a$f;->a:Lcom/caverock/androidsvg/a$h;

    invoke-static {v2, p2}, Lcom/caverock/androidsvg/a;->h(Lcom/caverock/androidsvg/a$h;Lcom/caverock/androidsvg/c$k0;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 21
    iget-object v1, v1, Lcom/caverock/androidsvg/a$f;->b:Lcom/caverock/androidsvg/c$d0;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/d;->e0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$d0;)V

    goto :goto_2

    .line 22
    :cond_5
    :goto_3
    iget-object p2, p2, Lcom/caverock/androidsvg/c$k0;->f:Lcom/caverock/androidsvg/c$d0;

    if-eqz p2, :cond_6

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/caverock/androidsvg/d;->e0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$d0;)V

    :cond_6
    return-void
.end method

.method static g(FFFFFZZFFLcom/caverock/androidsvg/c$w;)V
    .locals 32

    move/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    cmpl-float v4, p0, v2

    if-nez v4, :cond_0

    cmpl-float v4, p1, v3

    if-nez v4, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v4, 0x0

    cmpl-float v5, p2, v4

    if-eqz v5, :cond_b

    cmpl-float v4, p3, v4

    if-nez v4, :cond_1

    move-object/from16 v1, p9

    move v14, v2

    move v0, v3

    goto/16 :goto_6

    .line 1
    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v0

    .line 3
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v8, 0x4076800000000000L    # 360.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    rem-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v6, v6

    .line 4
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 5
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    sub-float v12, p0, v2

    float-to-double v12, v12

    .line 6
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v14

    sub-float v8, p1, v3

    float-to-double v8, v8

    .line 7
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v14

    mul-double v16, v10, v12

    mul-double v18, v6, v8

    add-double v14, v18, v16

    neg-double v2, v6

    mul-double v2, v2, v12

    mul-double v8, v8, v10

    add-double/2addr v8, v2

    mul-float v2, v4, v4

    float-to-double v2, v2

    mul-float v12, v5, v5

    float-to-double v12, v12

    mul-double v16, v14, v14

    mul-double v18, v8, v8

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v22, v16, v2

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double v24, v18, v12

    add-double v24, v24, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpl-double v26, v24, v22

    if-lez v26, :cond_2

    .line 9
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v4, v4, v2

    .line 10
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v5, v5, v2

    mul-float v2, v4, v4

    float-to-double v2, v2

    mul-float v12, v5, v5

    float-to-double v12, v12

    :cond_2
    move/from16 v0, p5

    if-ne v0, v1, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_0
    int-to-double v0, v0

    mul-double v24, v2, v12

    mul-double v2, v2, v18

    sub-double v24, v24, v2

    mul-double v12, v12, v16

    sub-double v24, v24, v12

    add-double/2addr v2, v12

    div-double v24, v24, v2

    const-wide/16 v2, 0x0

    cmpg-double v12, v24, v2

    if-gez v12, :cond_4

    move-wide/from16 v24, v2

    .line 11
    :cond_4
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v0

    float-to-double v0, v4

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v0, v8

    float-to-double v2, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v16, v16, v2

    mul-double v16, v16, v12

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v24, v2, v14

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v26, v4

    move/from16 v27, v5

    div-double v4, v24, v0

    neg-double v4, v4

    mul-double v12, v12, v4

    move/from16 v4, p7

    add-float v5, p0, v4

    float-to-double v4, v5

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v4, v4, v20

    move-wide/from16 v24, v2

    move/from16 v2, p8

    add-float v3, p1, v2

    float-to-double v2, v3

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, v2, v20

    mul-double v28, v10, v16

    mul-double v30, v6, v12

    sub-double v28, v28, v30

    add-double v4, v28, v4

    mul-double v6, v6, v16

    mul-double v10, v10, v12

    add-double/2addr v10, v6

    add-double/2addr v10, v2

    sub-double v2, v14, v16

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    sub-double v6, v8, v12

    .line 17
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, v6, v24

    neg-double v14, v14

    sub-double v14, v14, v16

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v0

    neg-double v0, v8

    sub-double/2addr v0, v12

    .line 19
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v0, v24

    mul-double v8, v2, v2

    mul-double v12, v6, v6

    add-double/2addr v12, v8

    .line 20
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    const-wide/16 v18, 0x0

    cmpg-double v24, v6, v18

    if-gez v24, :cond_5

    move-wide/from16 v24, v16

    goto :goto_1

    :cond_5
    move-wide/from16 v24, v22

    :goto_1
    div-double v8, v2, v8

    .line 21
    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    mul-double v8, v8, v24

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    mul-double v24, v14, v14

    mul-double v28, v0, v0

    add-double v28, v28, v24

    mul-double v28, v28, v12

    .line 22
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double v24, v2, v14

    mul-double v28, v6, v0

    add-double v28, v28, v24

    mul-double v2, v2, v0

    mul-double v6, v6, v14

    sub-double/2addr v2, v6

    const-wide/16 v0, 0x0

    cmpg-double v6, v2, v0

    if-gez v6, :cond_6

    goto :goto_2

    :cond_6
    move-wide/from16 v16, v22

    :goto_2
    div-double v28, v28, v12

    .line 23
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    mul-double v2, v2, v16

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    if-nez p6, :cond_7

    cmpl-double v6, v2, v0

    if-lez v6, :cond_7

    const-wide v6, 0x4076800000000000L    # 360.0

    sub-double/2addr v2, v6

    goto :goto_3

    :cond_7
    const-wide v6, 0x4076800000000000L    # 360.0

    if-eqz p6, :cond_8

    cmpg-double v12, v2, v0

    if-gez v12, :cond_8

    add-double/2addr v2, v6

    :cond_8
    :goto_3
    rem-double/2addr v2, v6

    rem-double/2addr v8, v6

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v6, 0x4056800000000000L    # 90.0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 25
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    int-to-double v8, v0

    .line 27
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v8

    double-to-float v1, v1

    float-to-double v2, v1

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide v14, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double v12, v12, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    add-double v8, v8, v22

    div-double/2addr v12, v8

    mul-int/lit8 v8, v0, 0x6

    .line 29
    new-array v9, v8, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_4
    if-lt v15, v0, :cond_a

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v1, v26

    move/from16 v2, v27

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v1, p4

    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    double-to-float v1, v4

    double-to-float v2, v10

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 34
    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    add-int/lit8 v0, v8, -0x2

    move/from16 v1, p7

    .line 35
    aput v1, v9, v0

    add-int/lit8 v0, v8, -0x1

    move/from16 v1, p8

    .line 36
    aput v1, v9, v0

    const/4 v14, 0x0

    :goto_5
    if-lt v14, v8, :cond_9

    goto/16 :goto_7

    .line 37
    :cond_9
    aget v0, v9, v14

    add-int/lit8 v1, v14, 0x1

    aget v1, v9, v1

    add-int/lit8 v2, v14, 0x2

    aget v2, v9, v2

    add-int/lit8 v3, v14, 0x3

    aget v3, v9, v3

    add-int/lit8 v4, v14, 0x4

    aget v4, v9, v4

    add-int/lit8 v5, v14, 0x5

    aget v5, v9, v5

    move-object/from16 p0, p9

    move/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    invoke-interface/range {p0 .. p6}, Lcom/caverock/androidsvg/c$w;->c(FFFFFF)V

    add-int/lit8 v14, v14, 0x6

    goto :goto_5

    :cond_a
    move/from16 v14, p7

    move/from16 v17, v0

    move-wide/from16 p1, v4

    move/from16 v18, v26

    move/from16 v19, v27

    move/from16 v0, p8

    int-to-float v4, v15

    mul-float v4, v4, v1

    float-to-double v4, v4

    .line 38
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    .line 39
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    .line 40
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    add-int/lit8 v24, v16, 0x1

    mul-double v25, v12, v22

    move-wide/from16 p5, v6

    sub-double v6, v20, v25

    double-to-float v6, v6

    .line 41
    aput v6, v9, v16

    add-int/lit8 v6, v24, 0x1

    mul-double v20, v20, v12

    move/from16 p3, v8

    add-double v7, v20, v22

    double-to-float v7, v7

    .line 42
    aput v7, v9, v24

    .line 43
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v2

    .line 44
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    add-int/lit8 v16, v6, 0x1

    mul-double v20, v12, v4

    move/from16 v22, v1

    move-wide/from16 v23, v2

    add-double v1, v20, v7

    double-to-float v1, v1

    .line 46
    aput v1, v9, v6

    add-int/lit8 v1, v16, 0x1

    mul-double v2, v12, v7

    sub-double v2, v4, v2

    double-to-float v2, v2

    .line 47
    aput v2, v9, v16

    add-int/lit8 v2, v1, 0x1

    double-to-float v3, v7

    .line 48
    aput v3, v9, v1

    add-int/lit8 v16, v2, 0x1

    double-to-float v1, v4

    .line 49
    aput v1, v9, v2

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v4, p1

    move/from16 v8, p3

    move-wide/from16 v6, p5

    move/from16 v0, v17

    move/from16 v26, v18

    move/from16 v1, v22

    move-wide/from16 v2, v23

    goto/16 :goto_4

    :cond_b
    move v14, v2

    move v0, v3

    move-object/from16 v1, p9

    .line 50
    :goto_6
    invoke-interface {v1, v14, v0}, Lcom/caverock/androidsvg/c$w;->e(FF)V

    :goto_7
    return-void
.end method

.method private g0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, v0, Lcom/caverock/androidsvg/c$d0;->K:Lcom/caverock/androidsvg/c$n0;

    instance-of v2, v1, Lcom/caverock/androidsvg/c$e;

    if-eqz v2, :cond_0

    .line 2
    check-cast v1, Lcom/caverock/androidsvg/c$e;

    iget v1, v1, Lcom/caverock/androidsvg/c$e;->b:I

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v1, Lcom/caverock/androidsvg/c$f;

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, v0, Lcom/caverock/androidsvg/c$d0;->o:Lcom/caverock/androidsvg/c$e;

    iget v1, v1, Lcom/caverock/androidsvg/c$e;->b:I

    .line 5
    :goto_0
    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->L:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/d;->q(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v1, v0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    return-void
.end method

.method static synthetic h(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/d;->i0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private h0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->C:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private i(Lcom/caverock/androidsvg/c$m0;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->r()V

    .line 3
    instance-of v0, p1, Lcom/caverock/androidsvg/c$d1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    .line 4
    check-cast p1, Lcom/caverock/androidsvg/c$d1;

    .line 5
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, p2, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 6
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_8

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->h0()Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_8

    .line 8
    :cond_2
    iget-object p2, p1, Lcom/caverock/androidsvg/c$l;->n:Landroid/graphics/Matrix;

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p4, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 10
    :cond_3
    iget-object p2, p1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    iget-object v0, p1, Lcom/caverock/androidsvg/c$d1;->o:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/c;->k(Ljava/lang/String;)Lcom/caverock/androidsvg/c$m0;

    move-result-object p2

    if-nez p2, :cond_4

    new-array p2, v1, [Ljava/lang/Object;

    .line 11
    iget-object p1, p1, Lcom/caverock/androidsvg/c$d1;->o:Ljava/lang/String;

    aput-object p1, p2, v2

    const-string p1, "Use reference \'%s\' not found"

    invoke-static {p1, p2}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 12
    :cond_4
    iget-object v0, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    .line 13
    invoke-direct {p0, p2, v2, p3, p4}, Lcom/caverock/androidsvg/d;->i(Lcom/caverock/androidsvg/c$m0;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto/16 :goto_8

    :cond_5
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "<use> elements inside a <clipPath> cannot reference another <use>"

    .line 14
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 15
    :cond_6
    instance-of p2, p1, Lcom/caverock/androidsvg/c$u;

    if-eqz p2, :cond_b

    .line 16
    check-cast p1, Lcom/caverock/androidsvg/c$u;

    .line 17
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, p2, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 18
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_8

    .line 19
    :cond_7
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->h0()Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_8

    .line 20
    :cond_8
    iget-object p2, p1, Lcom/caverock/androidsvg/c$k;->n:Landroid/graphics/Matrix;

    if-eqz p2, :cond_9

    .line 21
    invoke-virtual {p4, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 22
    :cond_9
    new-instance p2, Lcom/caverock/androidsvg/d$c;

    iget-object v0, p1, Lcom/caverock/androidsvg/c$u;->o:Lcom/caverock/androidsvg/c$v;

    invoke-direct {p2, p0, v0}, Lcom/caverock/androidsvg/d$c;-><init>(Lcom/caverock/androidsvg/d;Lcom/caverock/androidsvg/c$v;)V

    .line 23
    iget-object p2, p2, Lcom/caverock/androidsvg/d$c;->a:Landroid/graphics/Path;

    .line 24
    iget-object v0, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    if-nez v0, :cond_a

    .line 25
    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/d;->j(Landroid/graphics/Path;)Lcom/caverock/androidsvg/c$a;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    .line 26
    :cond_a
    iget-object v0, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    .line 27
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->G()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 28
    invoke-virtual {p3, p2, p4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto/16 :goto_8

    .line 29
    :cond_b
    instance-of p2, p1, Lcom/caverock/androidsvg/c$v0;

    if-eqz p2, :cond_19

    .line 30
    check-cast p1, Lcom/caverock/androidsvg/c$v0;

    .line 31
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, p2, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 32
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_8

    .line 33
    :cond_c
    iget-object p2, p1, Lcom/caverock/androidsvg/c$v0;->r:Landroid/graphics/Matrix;

    if-eqz p2, :cond_d

    .line 34
    invoke-virtual {p4, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 35
    :cond_d
    iget-object p2, p1, Lcom/caverock/androidsvg/c$z0;->n:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p2, :cond_f

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_e

    goto :goto_0

    :cond_e
    iget-object p2, p1, Lcom/caverock/androidsvg/c$z0;->n:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/caverock/androidsvg/c$o;

    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result p2

    goto :goto_1

    :cond_f
    :goto_0
    const/4 p2, 0x0

    .line 36
    :goto_1
    iget-object v1, p1, Lcom/caverock/androidsvg/c$z0;->o:Ljava/util/List;

    if-eqz v1, :cond_11

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2

    :cond_10
    iget-object v1, p1, Lcom/caverock/androidsvg/c$z0;->o:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v1

    goto :goto_3

    :cond_11
    :goto_2
    const/4 v1, 0x0

    .line 37
    :goto_3
    iget-object v3, p1, Lcom/caverock/androidsvg/c$z0;->p:Ljava/util/List;

    if-eqz v3, :cond_13

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_12

    goto :goto_4

    :cond_12
    iget-object v3, p1, Lcom/caverock/androidsvg/c$z0;->p:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v3

    goto :goto_5

    :cond_13
    :goto_4
    const/4 v3, 0x0

    .line 38
    :goto_5
    iget-object v4, p1, Lcom/caverock/androidsvg/c$z0;->q:Ljava/util/List;

    if-eqz v4, :cond_15

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_14

    goto :goto_6

    :cond_14
    iget-object v0, p1, Lcom/caverock/androidsvg/c$z0;->q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v0

    .line 39
    :cond_15
    :goto_6
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v2, v2, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v2, v2, Lcom/caverock/androidsvg/c$d0;->v:Lcom/caverock/androidsvg/c$d0$e;

    sget-object v4, Lcom/caverock/androidsvg/c$d0$e;->b:Lcom/caverock/androidsvg/c$d0$e;

    if-eq v2, v4, :cond_17

    .line 40
    new-instance v2, Lcom/caverock/androidsvg/d$j;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/caverock/androidsvg/d$j;-><init>(Lcom/caverock/androidsvg/d;Lcom/caverock/androidsvg/d$j;)V

    .line 41
    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/d;->x(Lcom/caverock/androidsvg/c$x0;Lcom/caverock/androidsvg/d$i;)V

    .line 42
    iget v2, v2, Lcom/caverock/androidsvg/d$j;->a:F

    .line 43
    iget-object v4, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v4, v4, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v4, v4, Lcom/caverock/androidsvg/c$d0;->v:Lcom/caverock/androidsvg/c$d0$e;

    sget-object v5, Lcom/caverock/androidsvg/c$d0$e;->c:Lcom/caverock/androidsvg/c$d0$e;

    if-ne v4, v5, :cond_16

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    :cond_16
    sub-float/2addr p2, v2

    .line 44
    :cond_17
    iget-object v2, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    if-nez v2, :cond_18

    .line 45
    new-instance v2, Lcom/caverock/androidsvg/d$h;

    invoke-direct {v2, p0, p2, v1}, Lcom/caverock/androidsvg/d$h;-><init>(Lcom/caverock/androidsvg/d;FF)V

    .line 46
    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/d;->x(Lcom/caverock/androidsvg/c$x0;Lcom/caverock/androidsvg/d$i;)V

    .line 47
    new-instance v4, Lcom/caverock/androidsvg/c$a;

    iget-object v5, v2, Lcom/caverock/androidsvg/d$h;->c:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    iget v7, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v2, v2, Lcom/caverock/androidsvg/d$h;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {v4, v6, v7, v5, v2}, Lcom/caverock/androidsvg/c$a;-><init>(FFFF)V

    iput-object v4, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    .line 48
    :cond_18
    iget-object v2, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    .line 49
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 50
    new-instance v4, Lcom/caverock/androidsvg/d$f;

    add-float/2addr p2, v3

    add-float/2addr v1, v0

    invoke-direct {v4, p0, p2, v1, v2}, Lcom/caverock/androidsvg/d$f;-><init>(Lcom/caverock/androidsvg/d;FFLandroid/graphics/Path;)V

    invoke-direct {p0, p1, v4}, Lcom/caverock/androidsvg/d;->x(Lcom/caverock/androidsvg/c$x0;Lcom/caverock/androidsvg/d$i;)V

    .line 51
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->G()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 52
    invoke-virtual {p3, v2, p4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto/16 :goto_8

    .line 53
    :cond_19
    instance-of p2, p1, Lcom/caverock/androidsvg/c$k;

    if-eqz p2, :cond_20

    .line 54
    check-cast p1, Lcom/caverock/androidsvg/c$k;

    .line 55
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, p2, p1}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 56
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result p2

    if-nez p2, :cond_1a

    goto :goto_8

    .line 57
    :cond_1a
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->h0()Z

    move-result p2

    if-nez p2, :cond_1b

    goto :goto_8

    .line 58
    :cond_1b
    iget-object p2, p1, Lcom/caverock/androidsvg/c$k;->n:Landroid/graphics/Matrix;

    if-eqz p2, :cond_1c

    .line 59
    invoke-virtual {p4, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 60
    :cond_1c
    instance-of p2, p1, Lcom/caverock/androidsvg/c$a0;

    if-eqz p2, :cond_1d

    .line 61
    move-object p2, p1

    check-cast p2, Lcom/caverock/androidsvg/c$a0;

    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/d;->P(Lcom/caverock/androidsvg/c$a0;)Landroid/graphics/Path;

    move-result-object p2

    goto :goto_7

    .line 62
    :cond_1d
    instance-of p2, p1, Lcom/caverock/androidsvg/c$c;

    if-eqz p2, :cond_1e

    .line 63
    move-object p2, p1

    check-cast p2, Lcom/caverock/androidsvg/c$c;

    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/d;->M(Lcom/caverock/androidsvg/c$c;)Landroid/graphics/Path;

    move-result-object p2

    goto :goto_7

    .line 64
    :cond_1e
    instance-of p2, p1, Lcom/caverock/androidsvg/c$h;

    if-eqz p2, :cond_1f

    .line 65
    move-object p2, p1

    check-cast p2, Lcom/caverock/androidsvg/c$h;

    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/d;->N(Lcom/caverock/androidsvg/c$h;)Landroid/graphics/Path;

    move-result-object p2

    goto :goto_7

    .line 66
    :cond_1f
    instance-of p2, p1, Lcom/caverock/androidsvg/c$y;

    if-eqz p2, :cond_21

    .line 67
    move-object p2, p1

    check-cast p2, Lcom/caverock/androidsvg/c$y;

    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/d;->O(Lcom/caverock/androidsvg/c$y;)Landroid/graphics/Path;

    move-result-object p2

    .line 68
    :goto_7
    iget-object v0, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    .line 69
    invoke-virtual {p2}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 70
    invoke-virtual {p3, p2, p4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_8

    :cond_20
    new-array p2, v1, [Ljava/lang/Object;

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "Invalid %s element found in clipPath definition"

    invoke-static {p1, p2}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_21
    :goto_8
    iget-object p1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 73
    iget-object p1, p0, Lcom/caverock/androidsvg/d;->f:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/caverock/androidsvg/d$g;

    iput-object p1, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    return-void
.end method

.method private static varargs i0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SVGAndroidRenderer"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private j(Landroid/graphics/Path;)Lcom/caverock/androidsvg/c$a;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3
    new-instance p1, Lcom/caverock/androidsvg/c$a;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/caverock/androidsvg/c$a;-><init>(FFFF)V

    return-object p1
.end method

.method private k(Lcom/caverock/androidsvg/c$x0;)F
    .locals 2

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/d$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/d$j;-><init>(Lcom/caverock/androidsvg/d;Lcom/caverock/androidsvg/d$j;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/d;->x(Lcom/caverock/androidsvg/c$x0;Lcom/caverock/androidsvg/d$i;)V

    .line 3
    iget p1, v0, Lcom/caverock/androidsvg/d$j;->a:F

    return p1
.end method

.method private l(Lcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/b;)Landroid/graphics/Matrix;
    .locals 9

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p3, :cond_5

    .line 2
    invoke-virtual {p3}, Lcom/caverock/androidsvg/b;->a()Lcom/caverock/androidsvg/b$a;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget v1, p1, Lcom/caverock/androidsvg/c$a;->d:F

    iget v2, p2, Lcom/caverock/androidsvg/c$a;->d:F

    div-float/2addr v1, v2

    .line 4
    iget v2, p1, Lcom/caverock/androidsvg/c$a;->e:F

    iget v3, p2, Lcom/caverock/androidsvg/c$a;->e:F

    div-float/2addr v2, v3

    .line 5
    iget v3, p2, Lcom/caverock/androidsvg/c$a;->b:F

    neg-float v3, v3

    .line 6
    iget v4, p2, Lcom/caverock/androidsvg/c$a;->c:F

    neg-float v4, v4

    .line 7
    sget-object v5, Lcom/caverock/androidsvg/b;->c:Lcom/caverock/androidsvg/b;

    invoke-virtual {p3, v5}, Lcom/caverock/androidsvg/b;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    iget p2, p1, Lcom/caverock/androidsvg/c$a;->b:F

    iget p1, p1, Lcom/caverock/androidsvg/c$a;->c:F

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 10
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-object v0

    .line 11
    :cond_1
    invoke-virtual {p3}, Lcom/caverock/androidsvg/b;->b()Lcom/caverock/androidsvg/b$b;

    move-result-object v5

    sget-object v6, Lcom/caverock/androidsvg/b$b;->c:Lcom/caverock/androidsvg/b$b;

    if-ne v5, v6, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 12
    :goto_0
    iget v2, p1, Lcom/caverock/androidsvg/c$a;->d:F

    div-float/2addr v2, v1

    .line 13
    iget v5, p1, Lcom/caverock/androidsvg/c$a;->e:F

    div-float/2addr v5, v1

    .line 14
    invoke-static {}, Lcom/caverock/androidsvg/d;->a()[I

    move-result-object v6

    invoke-virtual {p3}, Lcom/caverock/androidsvg/b;->a()Lcom/caverock/androidsvg/b$a;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x3

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v6, v7, :cond_4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3

    const/4 v7, 0x6

    if-eq v6, v7, :cond_4

    const/4 v7, 0x7

    if-eq v6, v7, :cond_3

    const/16 v7, 0x9

    if-eq v6, v7, :cond_4

    const/16 v7, 0xa

    if-eq v6, v7, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    iget v6, p2, Lcom/caverock/androidsvg/c$a;->d:F

    sub-float/2addr v6, v2

    goto :goto_1

    .line 16
    :cond_4
    iget v6, p2, Lcom/caverock/androidsvg/c$a;->d:F

    sub-float/2addr v6, v2

    div-float/2addr v6, v8

    :goto_1
    sub-float/2addr v3, v6

    .line 17
    :goto_2
    invoke-static {}, Lcom/caverock/androidsvg/d;->a()[I

    move-result-object v2

    .line 18
    invoke-virtual {p3}, Lcom/caverock/androidsvg/b;->a()Lcom/caverock/androidsvg/b$a;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v2, p3

    packed-switch p3, :pswitch_data_0

    goto :goto_4

    .line 19
    :pswitch_0
    iget p2, p2, Lcom/caverock/androidsvg/c$a;->e:F

    sub-float/2addr p2, v5

    goto :goto_3

    .line 20
    :pswitch_1
    iget p2, p2, Lcom/caverock/androidsvg/c$a;->e:F

    sub-float/2addr p2, v5

    div-float/2addr p2, v8

    :goto_3
    sub-float/2addr v4, p2

    .line 21
    :goto_4
    iget p2, p1, Lcom/caverock/androidsvg/c$a;->b:F

    iget p1, p1, Lcom/caverock/androidsvg/c$a;->c:F

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 22
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 23
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_5
    :goto_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->F:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p1, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/c;->k(Ljava/lang/String;)Lcom/caverock/androidsvg/c$m0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object p2, p2, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object p2, p2, Lcom/caverock/androidsvg/c$d0;->F:Ljava/lang/String;

    aput-object p2, p1, v1

    const-string p2, "ClipPath reference \'%s\' not found"

    invoke-static {p2, p1}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    check-cast v0, Lcom/caverock/androidsvg/c$d;

    .line 5
    iget-object v3, v0, Lcom/caverock/androidsvg/c$g0;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    iget-object p1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    return-void

    .line 7
    :cond_2
    iget-object v3, v0, Lcom/caverock/androidsvg/c$d;->o:Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    .line 8
    :goto_0
    instance-of v4, p1, Lcom/caverock/androidsvg/c$l;

    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    new-array p2, v2, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "<clipPath clipPathUnits=\"objectBoundingBox\"> is not supported when referenced from container elements (like %s)"

    invoke-static {p1, p2}, Lcom/caverock/androidsvg/d;->i0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_4
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->r()V

    if-nez v3, :cond_5

    .line 11
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 12
    iget v1, p2, Lcom/caverock/androidsvg/c$a;->b:F

    iget v3, p2, Lcom/caverock/androidsvg/c$a;->c:F

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 13
    iget v1, p2, Lcom/caverock/androidsvg/c$a;->d:F

    iget p2, p2, Lcom/caverock/androidsvg/c$a;->e:F

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 14
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 15
    :cond_5
    iget-object p1, v0, Lcom/caverock/androidsvg/c$l;->n:Landroid/graphics/Matrix;

    if-eqz p1, :cond_6

    .line 16
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 17
    :cond_6
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/d;->D(Lcom/caverock/androidsvg/c$m0;)Lcom/caverock/androidsvg/d$g;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    .line 18
    iget-object p1, v0, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/d;->m(Lcom/caverock/androidsvg/c$j0;Lcom/caverock/androidsvg/c$a;)V

    .line 19
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 20
    iget-object p2, v0, Lcom/caverock/androidsvg/c$g0;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 21
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 22
    iget-object p1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 23
    iget-object p1, p0, Lcom/caverock/androidsvg/d;->f:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/caverock/androidsvg/d$g;

    iput-object p1, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    return-void

    .line 24
    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/c$m0;

    .line 25
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/caverock/androidsvg/d;->i(Lcom/caverock/androidsvg/c$m0;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_1
.end method

.method private n(Lcom/caverock/androidsvg/c$j0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->c:Lcom/caverock/androidsvg/c$n0;

    instance-of v1, v0, Lcom/caverock/androidsvg/c$t;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2
    iget-object v2, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    check-cast v0, Lcom/caverock/androidsvg/c$t;

    invoke-direct {p0, v1, v2, v0}, Lcom/caverock/androidsvg/d;->s(ZLcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/c$t;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->f:Lcom/caverock/androidsvg/c$n0;

    instance-of v1, v0, Lcom/caverock/androidsvg/c$t;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 4
    iget-object p1, p1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    check-cast v0, Lcom/caverock/androidsvg/c$t;

    invoke-direct {p0, v1, p1, v0}, Lcom/caverock/androidsvg/d;->s(ZLcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/c$t;)V

    :cond_1
    return-void
.end method

.method private o(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/c$d0$b;)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/c$d0$b;->c:Lcom/caverock/androidsvg/c$d0$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x1f4

    if-le p2, v0, :cond_1

    if-eqz p3, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    const-string p2, "serif"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 4
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string p2, "sans-serif"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 6
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-string p2, "monospace"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 8
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_2

    :cond_6
    const-string p2, "cursive"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 10
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_2

    :cond_7
    const-string p2, "fantasy"

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 12
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method private p(Lcom/caverock/androidsvg/c$m0;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/caverock/androidsvg/c$k0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p1, Lcom/caverock/androidsvg/c$k0;

    .line 3
    iget-object p1, p1, Lcom/caverock/androidsvg/c$k0;->d:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/caverock/androidsvg/d$g;->i:Z

    :cond_1
    return-void
.end method

.method private q(F)I
    .locals 1

    const/high16 v0, 0x43800000    # 256.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/16 v0, 0xff

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 p1, 0xff

    :cond_1
    :goto_0
    return p1
.end method

.method private r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 2
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->f:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/d$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/d$g;

    iput-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    return-void
.end method

.method private s(ZLcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/c$t;)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    sget-object v4, Lcom/caverock/androidsvg/c$j;->d:Lcom/caverock/androidsvg/c$j;

    sget-object v5, Lcom/caverock/androidsvg/c$j;->c:Lcom/caverock/androidsvg/c$j;

    iget-object v6, v0, Lcom/caverock/androidsvg/d;->d:Lcom/caverock/androidsvg/c;

    iget-object v7, v3, Lcom/caverock/androidsvg/c$t;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/caverock/androidsvg/c;->k(Ljava/lang/String;)Lcom/caverock/androidsvg/c$m0;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz v1, :cond_0

    const-string v4, "Fill"

    goto :goto_0

    :cond_0
    const-string v4, "Stroke"

    :goto_0
    aput-object v4, v2, v8

    .line 2
    iget-object v4, v3, Lcom/caverock/androidsvg/c$t;->b:Ljava/lang/String;

    aput-object v4, v2, v7

    const-string v4, "%s reference \'%s\' not found"

    invoke-static {v4, v2}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v2, v3, Lcom/caverock/androidsvg/c$t;->c:Lcom/caverock/androidsvg/c$n0;

    if-eqz v2, :cond_1

    .line 4
    iget-object v3, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {v0, v3, v1, v2}, Lcom/caverock/androidsvg/d;->Z(Lcom/caverock/androidsvg/d$g;ZLcom/caverock/androidsvg/c$n0;)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    iget-object v1, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iput-boolean v8, v1, Lcom/caverock/androidsvg/d$g;->c:Z

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iput-boolean v8, v1, Lcom/caverock/androidsvg/d$g;->d:Z

    :goto_1
    return-void

    .line 7
    :cond_3
    instance-of v3, v6, Lcom/caverock/androidsvg/c$l0;

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1c

    .line 8
    move-object v3, v6

    check-cast v3, Lcom/caverock/androidsvg/c$l0;

    .line 9
    iget-object v12, v3, Lcom/caverock/androidsvg/c$i;->l:Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 10
    invoke-direct {v0, v3, v12}, Lcom/caverock/androidsvg/d;->A(Lcom/caverock/androidsvg/c$i;Ljava/lang/String;)V

    .line 11
    :cond_4
    iget-object v12, v3, Lcom/caverock/androidsvg/c$i;->i:Ljava/lang/Boolean;

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    .line 12
    :goto_2
    iget-object v13, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    if-eqz v1, :cond_6

    iget-object v13, v13, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    goto :goto_3

    :cond_6
    iget-object v13, v13, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    :goto_3
    if-eqz v12, :cond_a

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->J()Lcom/caverock/androidsvg/c$a;

    move-result-object v14

    .line 14
    iget-object v15, v3, Lcom/caverock/androidsvg/c$l0;->m:Lcom/caverock/androidsvg/c$o;

    if-eqz v15, :cond_7

    invoke-virtual {v15, v0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v15

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    .line 15
    :goto_4
    iget-object v9, v3, Lcom/caverock/androidsvg/c$l0;->n:Lcom/caverock/androidsvg/c$o;

    if-eqz v9, :cond_8

    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v9

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    .line 16
    :goto_5
    iget-object v11, v3, Lcom/caverock/androidsvg/c$l0;->o:Lcom/caverock/androidsvg/c$o;

    if-eqz v11, :cond_9

    invoke-virtual {v11, v0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v11

    goto :goto_6

    :cond_9
    iget v11, v14, Lcom/caverock/androidsvg/c$a;->d:F

    .line 17
    :goto_6
    iget-object v14, v3, Lcom/caverock/androidsvg/c$l0;->p:Lcom/caverock/androidsvg/c$o;

    if-eqz v14, :cond_e

    invoke-virtual {v14, v0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v14

    goto :goto_a

    .line 18
    :cond_a
    iget-object v9, v3, Lcom/caverock/androidsvg/c$l0;->m:Lcom/caverock/androidsvg/c$o;

    if-eqz v9, :cond_b

    invoke-virtual {v9, v0, v10}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    move-result v9

    move v15, v9

    goto :goto_7

    :cond_b
    const/4 v15, 0x0

    .line 19
    :goto_7
    iget-object v9, v3, Lcom/caverock/androidsvg/c$l0;->n:Lcom/caverock/androidsvg/c$o;

    if-eqz v9, :cond_c

    invoke-virtual {v9, v0, v10}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    move-result v9

    goto :goto_8

    :cond_c
    const/4 v9, 0x0

    .line 20
    :goto_8
    iget-object v11, v3, Lcom/caverock/androidsvg/c$l0;->o:Lcom/caverock/androidsvg/c$o;

    if-eqz v11, :cond_d

    invoke-virtual {v11, v0, v10}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    move-result v11

    goto :goto_9

    :cond_d
    const/high16 v11, 0x3f800000    # 1.0f

    .line 21
    :goto_9
    iget-object v14, v3, Lcom/caverock/androidsvg/c$l0;->p:Lcom/caverock/androidsvg/c$o;

    if-eqz v14, :cond_e

    invoke-virtual {v14, v0, v10}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    move-result v14

    goto :goto_a

    :cond_e
    const/4 v14, 0x0

    :goto_a
    move/from16 v19, v9

    move/from16 v20, v11

    move/from16 v21, v14

    move/from16 v18, v15

    .line 22
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->b0()V

    .line 23
    invoke-direct {v0, v3}, Lcom/caverock/androidsvg/d;->D(Lcom/caverock/androidsvg/c$m0;)Lcom/caverock/androidsvg/d$g;

    move-result-object v9

    iput-object v9, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    .line 24
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    if-nez v12, :cond_f

    .line 25
    iget v11, v2, Lcom/caverock/androidsvg/c$a;->b:F

    iget v12, v2, Lcom/caverock/androidsvg/c$a;->c:F

    invoke-virtual {v9, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 26
    iget v11, v2, Lcom/caverock/androidsvg/c$a;->d:F

    iget v12, v2, Lcom/caverock/androidsvg/c$a;->e:F

    invoke-virtual {v9, v11, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 27
    :cond_f
    iget-object v11, v3, Lcom/caverock/androidsvg/c$i;->j:Landroid/graphics/Matrix;

    if-eqz v11, :cond_10

    .line 28
    invoke-virtual {v9, v11}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 29
    :cond_10
    iget-object v11, v3, Lcom/caverock/androidsvg/c$i;->h:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_12

    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->a0()V

    if-eqz v1, :cond_11

    .line 31
    iget-object v3, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iput-boolean v8, v3, Lcom/caverock/androidsvg/d$g;->c:Z

    goto/16 :goto_10

    .line 32
    :cond_11
    iget-object v3, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iput-boolean v8, v3, Lcom/caverock/androidsvg/d$g;->d:Z

    goto/16 :goto_10

    .line 33
    :cond_12
    new-array v12, v11, [I

    .line 34
    new-array v14, v11, [F

    .line 35
    iget-object v15, v3, Lcom/caverock/androidsvg/c$i;->h:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v17, 0x0

    const/high16 v22, -0x40800000    # -1.0f

    :goto_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_18

    cmpl-float v15, v18, v20

    if-nez v15, :cond_13

    cmpl-float v15, v19, v21

    if-eqz v15, :cond_14

    :cond_13
    if-ne v11, v7, :cond_15

    .line 36
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->a0()V

    sub-int/2addr v11, v7

    .line 37
    aget v3, v12, v11

    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_10

    .line 38
    :cond_15
    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 39
    iget-object v3, v3, Lcom/caverock/androidsvg/c$i;->k:Lcom/caverock/androidsvg/c$j;

    if-eqz v3, :cond_17

    if-ne v3, v5, :cond_16

    .line 40
    sget-object v3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    :goto_c
    move-object/from16 v24, v3

    goto :goto_d

    :cond_16
    if-ne v3, v4, :cond_17

    .line 41
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_c

    :cond_17
    move-object/from16 v24, v11

    .line 42
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->a0()V

    .line 43
    new-instance v3, Landroid/graphics/LinearGradient;

    move-object/from16 v17, v3

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 44
    invoke-virtual {v3, v9}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 45
    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_10

    .line 46
    :cond_18
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/caverock/androidsvg/c$m0;

    .line 47
    move-object/from16 v7, v23

    check-cast v7, Lcom/caverock/androidsvg/c$c0;

    if-eqz v17, :cond_1a

    .line 48
    iget-object v8, v7, Lcom/caverock/androidsvg/c$c0;->h:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v22

    if-ltz v8, :cond_19

    goto :goto_e

    .line 49
    :cond_19
    aput v22, v14, v17

    goto :goto_f

    .line 50
    :cond_1a
    :goto_e
    iget-object v8, v7, Lcom/caverock/androidsvg/c$c0;->h:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v14, v17

    .line 51
    iget-object v8, v7, Lcom/caverock/androidsvg/c$c0;->h:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v22

    .line 52
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->b0()V

    .line 53
    iget-object v8, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {v0, v8, v7}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 54
    iget-object v7, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v7, v7, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v8, v7, Lcom/caverock/androidsvg/c$d0;->D:Lcom/caverock/androidsvg/c$n0;

    check-cast v8, Lcom/caverock/androidsvg/c$e;

    if-nez v8, :cond_1b

    .line 55
    sget-object v8, Lcom/caverock/androidsvg/c$e;->c:Lcom/caverock/androidsvg/c$e;

    .line 56
    :cond_1b
    iget-object v7, v7, Lcom/caverock/androidsvg/c$d0;->E:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {v0, v7}, Lcom/caverock/androidsvg/d;->q(F)I

    move-result v7

    shl-int/lit8 v7, v7, 0x18

    iget v8, v8, Lcom/caverock/androidsvg/c$e;->b:I

    or-int/2addr v7, v8

    aput v7, v12, v17

    add-int/lit8 v17, v17, 0x1

    .line 57
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->a0()V

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_b

    .line 58
    :cond_1c
    :goto_10
    instance-of v3, v6, Lcom/caverock/androidsvg/c$p0;

    if-eqz v3, :cond_33

    .line 59
    move-object v3, v6

    check-cast v3, Lcom/caverock/androidsvg/c$p0;

    .line 60
    iget-object v7, v3, Lcom/caverock/androidsvg/c$i;->l:Ljava/lang/String;

    if-eqz v7, :cond_1d

    .line 61
    invoke-direct {v0, v3, v7}, Lcom/caverock/androidsvg/d;->A(Lcom/caverock/androidsvg/c$i;Ljava/lang/String;)V

    .line 62
    :cond_1d
    iget-object v7, v3, Lcom/caverock/androidsvg/c$i;->i:Ljava/lang/Boolean;

    if-eqz v7, :cond_1e

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v7, 0x1

    goto :goto_11

    :cond_1e
    const/4 v7, 0x0

    .line 63
    :goto_11
    iget-object v8, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    if-eqz v1, :cond_1f

    iget-object v8, v8, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    goto :goto_12

    :cond_1f
    iget-object v8, v8, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    :goto_12
    if-eqz v7, :cond_23

    .line 64
    new-instance v9, Lcom/caverock/androidsvg/c$o;

    const/high16 v10, 0x42480000    # 50.0f

    sget-object v11, Lcom/caverock/androidsvg/c$c1;->j:Lcom/caverock/androidsvg/c$c1;

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/c$o;-><init>(FLcom/caverock/androidsvg/c$c1;)V

    .line 65
    iget-object v10, v3, Lcom/caverock/androidsvg/c$p0;->m:Lcom/caverock/androidsvg/c$o;

    if-eqz v10, :cond_20

    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v10

    goto :goto_13

    :cond_20
    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v10

    .line 66
    :goto_13
    iget-object v11, v3, Lcom/caverock/androidsvg/c$p0;->n:Lcom/caverock/androidsvg/c$o;

    if-eqz v11, :cond_21

    invoke-virtual {v11, v0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v11

    goto :goto_14

    :cond_21
    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v11

    .line 67
    :goto_14
    iget-object v12, v3, Lcom/caverock/androidsvg/c$p0;->o:Lcom/caverock/androidsvg/c$o;

    if-eqz v12, :cond_22

    invoke-virtual {v12, v0}, Lcom/caverock/androidsvg/c$o;->c(Lcom/caverock/androidsvg/d;)F

    move-result v9

    goto :goto_15

    :cond_22
    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/c$o;->c(Lcom/caverock/androidsvg/d;)F

    move-result v9

    :goto_15
    move/from16 v28, v9

    move/from16 v26, v10

    move/from16 v27, v11

    goto :goto_19

    .line 68
    :cond_23
    iget-object v9, v3, Lcom/caverock/androidsvg/c$p0;->m:Lcom/caverock/androidsvg/c$o;

    const/high16 v11, 0x3f000000    # 0.5f

    if-eqz v9, :cond_24

    invoke-virtual {v9, v0, v10}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    move-result v9

    goto :goto_16

    :cond_24
    const/high16 v9, 0x3f000000    # 0.5f

    .line 69
    :goto_16
    iget-object v12, v3, Lcom/caverock/androidsvg/c$p0;->n:Lcom/caverock/androidsvg/c$o;

    if-eqz v12, :cond_25

    invoke-virtual {v12, v0, v10}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    move-result v12

    goto :goto_17

    :cond_25
    const/high16 v12, 0x3f000000    # 0.5f

    .line 70
    :goto_17
    iget-object v13, v3, Lcom/caverock/androidsvg/c$p0;->o:Lcom/caverock/androidsvg/c$o;

    if-eqz v13, :cond_26

    invoke-virtual {v13, v0, v10}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    move-result v10

    goto :goto_18

    :cond_26
    const/high16 v10, 0x3f000000    # 0.5f

    :goto_18
    move/from16 v26, v9

    move/from16 v28, v10

    move/from16 v27, v12

    .line 71
    :goto_19
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->b0()V

    .line 72
    invoke-direct {v0, v3}, Lcom/caverock/androidsvg/d;->D(Lcom/caverock/androidsvg/c$m0;)Lcom/caverock/androidsvg/d$g;

    move-result-object v9

    iput-object v9, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    .line 73
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    if-nez v7, :cond_27

    .line 74
    iget v7, v2, Lcom/caverock/androidsvg/c$a;->b:F

    iget v10, v2, Lcom/caverock/androidsvg/c$a;->c:F

    invoke-virtual {v9, v7, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 75
    iget v7, v2, Lcom/caverock/androidsvg/c$a;->d:F

    iget v2, v2, Lcom/caverock/androidsvg/c$a;->e:F

    invoke-virtual {v9, v7, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 76
    :cond_27
    iget-object v2, v3, Lcom/caverock/androidsvg/c$i;->j:Landroid/graphics/Matrix;

    if-eqz v2, :cond_28

    .line 77
    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 78
    :cond_28
    iget-object v2, v3, Lcom/caverock/androidsvg/c$i;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2a

    .line 79
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->a0()V

    if-eqz v1, :cond_29

    .line 80
    iget-object v2, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    const/4 v7, 0x0

    iput-boolean v7, v2, Lcom/caverock/androidsvg/d$g;->c:Z

    goto/16 :goto_1f

    :cond_29
    const/4 v7, 0x0

    .line 81
    iget-object v2, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iput-boolean v7, v2, Lcom/caverock/androidsvg/d$g;->d:Z

    goto/16 :goto_1f

    :cond_2a
    const/4 v7, 0x0

    .line 82
    new-array v10, v2, [I

    .line 83
    new-array v11, v2, [F

    .line 84
    iget-object v12, v3, Lcom/caverock/androidsvg/c$i;->h:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v14, 0x0

    :goto_1a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_2f

    const/4 v15, 0x0

    cmpl-float v12, v28, v15

    if-eqz v12, :cond_2e

    const/4 v12, 0x1

    if-ne v2, v12, :cond_2b

    goto :goto_1c

    .line 85
    :cond_2b
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 86
    iget-object v3, v3, Lcom/caverock/androidsvg/c$i;->k:Lcom/caverock/androidsvg/c$j;

    if-eqz v3, :cond_2d

    if-ne v3, v5, :cond_2c

    .line 87
    sget-object v2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_1b

    :cond_2c
    if-ne v3, v4, :cond_2d

    .line 88
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    :cond_2d
    :goto_1b
    move-object/from16 v31, v2

    .line 89
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->a0()V

    .line 90
    new-instance v2, Landroid/graphics/RadialGradient;

    move-object/from16 v25, v2

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    invoke-direct/range {v25 .. v31}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 91
    invoke-virtual {v2, v9}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 92
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1f

    .line 93
    :cond_2e
    :goto_1c
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->a0()V

    const/16 v16, 0x1

    add-int/lit8 v2, v2, -0x1

    .line 94
    aget v2, v10, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_20

    :cond_2f
    const/4 v15, 0x0

    const/16 v16, 0x1

    .line 95
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/caverock/androidsvg/c$m0;

    .line 96
    move-object/from16 v7, v17

    check-cast v7, Lcom/caverock/androidsvg/c$c0;

    if-eqz v14, :cond_31

    .line 97
    iget-object v15, v7, Lcom/caverock/androidsvg/c$c0;->h:Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpl-float v15, v15, v13

    if-ltz v15, :cond_30

    goto :goto_1d

    .line 98
    :cond_30
    aput v13, v11, v14

    goto :goto_1e

    .line 99
    :cond_31
    :goto_1d
    iget-object v13, v7, Lcom/caverock/androidsvg/c$c0;->h:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    aput v13, v11, v14

    .line 100
    iget-object v13, v7, Lcom/caverock/androidsvg/c$c0;->h:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 101
    :goto_1e
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->b0()V

    .line 102
    iget-object v15, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {v0, v15, v7}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 103
    iget-object v7, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v7, v7, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v15, v7, Lcom/caverock/androidsvg/c$d0;->D:Lcom/caverock/androidsvg/c$n0;

    check-cast v15, Lcom/caverock/androidsvg/c$e;

    if-nez v15, :cond_32

    .line 104
    sget-object v15, Lcom/caverock/androidsvg/c$e;->c:Lcom/caverock/androidsvg/c$e;

    .line 105
    :cond_32
    iget-object v7, v7, Lcom/caverock/androidsvg/c$d0;->E:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {v0, v7}, Lcom/caverock/androidsvg/d;->q(F)I

    move-result v7

    shl-int/lit8 v7, v7, 0x18

    iget v15, v15, Lcom/caverock/androidsvg/c$e;->b:I

    or-int/2addr v7, v15

    aput v7, v10, v14

    add-int/lit8 v14, v14, 0x1

    .line 106
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->a0()V

    const/4 v7, 0x0

    goto/16 :goto_1a

    :cond_33
    :goto_1f
    const/16 v16, 0x1

    .line 107
    :goto_20
    instance-of v2, v6, Lcom/caverock/androidsvg/c$b0;

    if-eqz v2, :cond_3b

    .line 108
    check-cast v6, Lcom/caverock/androidsvg/c$b0;

    const-wide v2, 0x180000000L

    const-wide v4, 0x100000000L

    const-wide v7, 0x80000000L

    if-eqz v1, :cond_37

    .line 109
    iget-object v9, v6, Lcom/caverock/androidsvg/c$k0;->e:Lcom/caverock/androidsvg/c$d0;

    invoke-direct {v0, v9, v7, v8}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 110
    iget-object v7, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v8, v7, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v9, v6, Lcom/caverock/androidsvg/c$k0;->e:Lcom/caverock/androidsvg/c$d0;

    iget-object v9, v9, Lcom/caverock/androidsvg/c$d0;->I:Lcom/caverock/androidsvg/c$n0;

    iput-object v9, v8, Lcom/caverock/androidsvg/c$d0;->c:Lcom/caverock/androidsvg/c$n0;

    if-eqz v9, :cond_34

    const/4 v8, 0x1

    goto :goto_21

    :cond_34
    const/4 v8, 0x0

    .line 111
    :goto_21
    iput-boolean v8, v7, Lcom/caverock/androidsvg/d$g;->c:Z

    .line 112
    :cond_35
    iget-object v7, v6, Lcom/caverock/androidsvg/c$k0;->e:Lcom/caverock/androidsvg/c$d0;

    invoke-direct {v0, v7, v4, v5}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 113
    iget-object v4, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v4, v4, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v5, v6, Lcom/caverock/androidsvg/c$k0;->e:Lcom/caverock/androidsvg/c$d0;

    iget-object v5, v5, Lcom/caverock/androidsvg/c$d0;->J:Ljava/lang/Float;

    iput-object v5, v4, Lcom/caverock/androidsvg/c$d0;->e:Ljava/lang/Float;

    .line 114
    :cond_36
    iget-object v4, v6, Lcom/caverock/androidsvg/c$k0;->e:Lcom/caverock/androidsvg/c$d0;

    invoke-direct {v0, v4, v2, v3}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 115
    iget-object v2, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v3, v2, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, v3, Lcom/caverock/androidsvg/c$d0;->c:Lcom/caverock/androidsvg/c$n0;

    invoke-direct {v0, v2, v1, v3}, Lcom/caverock/androidsvg/d;->Z(Lcom/caverock/androidsvg/d$g;ZLcom/caverock/androidsvg/c$n0;)V

    goto :goto_23

    .line 116
    :cond_37
    iget-object v9, v6, Lcom/caverock/androidsvg/c$k0;->e:Lcom/caverock/androidsvg/c$d0;

    invoke-direct {v0, v9, v7, v8}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 117
    iget-object v7, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v8, v7, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v9, v6, Lcom/caverock/androidsvg/c$k0;->e:Lcom/caverock/androidsvg/c$d0;

    iget-object v9, v9, Lcom/caverock/androidsvg/c$d0;->I:Lcom/caverock/androidsvg/c$n0;

    iput-object v9, v8, Lcom/caverock/androidsvg/c$d0;->f:Lcom/caverock/androidsvg/c$n0;

    if-eqz v9, :cond_38

    const/4 v8, 0x1

    goto :goto_22

    :cond_38
    const/4 v8, 0x0

    .line 118
    :goto_22
    iput-boolean v8, v7, Lcom/caverock/androidsvg/d$g;->d:Z

    .line 119
    :cond_39
    iget-object v7, v6, Lcom/caverock/androidsvg/c$k0;->e:Lcom/caverock/androidsvg/c$d0;

    invoke-direct {v0, v7, v4, v5}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 120
    iget-object v4, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v4, v4, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v5, v6, Lcom/caverock/androidsvg/c$k0;->e:Lcom/caverock/androidsvg/c$d0;

    iget-object v5, v5, Lcom/caverock/androidsvg/c$d0;->J:Ljava/lang/Float;

    iput-object v5, v4, Lcom/caverock/androidsvg/c$d0;->g:Ljava/lang/Float;

    .line 121
    :cond_3a
    iget-object v4, v6, Lcom/caverock/androidsvg/c$k0;->e:Lcom/caverock/androidsvg/c$d0;

    invoke-direct {v0, v4, v2, v3}, Lcom/caverock/androidsvg/d;->L(Lcom/caverock/androidsvg/c$d0;J)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 122
    iget-object v2, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v3, v2, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, v3, Lcom/caverock/androidsvg/c$d0;->f:Lcom/caverock/androidsvg/c$n0;

    invoke-direct {v0, v2, v1, v3}, Lcom/caverock/androidsvg/d;->Z(Lcom/caverock/androidsvg/d$g;ZLcom/caverock/androidsvg/c$n0;)V

    :cond_3b
    :goto_23
    return-void
.end method

.method private t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$d0;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private u(Lcom/caverock/androidsvg/c$j0;Landroid/graphics/Path;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v3, v3, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v3, v3, Lcom/caverock/androidsvg/c$d0;->c:Lcom/caverock/androidsvg/c$n0;

    instance-of v4, v3, Lcom/caverock/androidsvg/c$t;

    if-eqz v4, :cond_1c

    .line 2
    iget-object v4, v0, Lcom/caverock/androidsvg/d;->d:Lcom/caverock/androidsvg/c;

    check-cast v3, Lcom/caverock/androidsvg/c$t;

    iget-object v3, v3, Lcom/caverock/androidsvg/c$t;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/caverock/androidsvg/c;->k(Ljava/lang/String;)Lcom/caverock/androidsvg/c$m0;

    move-result-object v3

    .line 3
    instance-of v4, v3, Lcom/caverock/androidsvg/c$x;

    if-eqz v4, :cond_1c

    .line 4
    check-cast v3, Lcom/caverock/androidsvg/c$x;

    .line 5
    iget-object v4, v3, Lcom/caverock/androidsvg/c$x;->p:Ljava/lang/Boolean;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 6
    :goto_0
    iget-object v7, v3, Lcom/caverock/androidsvg/c$x;->w:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 7
    invoke-direct {v0, v3, v7}, Lcom/caverock/androidsvg/d;->C(Lcom/caverock/androidsvg/c$x;Ljava/lang/String;)V

    :cond_1
    const/4 v7, 0x0

    if-eqz v4, :cond_6

    .line 8
    iget-object v4, v3, Lcom/caverock/androidsvg/c$x;->s:Lcom/caverock/androidsvg/c$o;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 9
    :goto_1
    iget-object v8, v3, Lcom/caverock/androidsvg/c$x;->t:Lcom/caverock/androidsvg/c$o;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v8

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 10
    :goto_2
    iget-object v9, v3, Lcom/caverock/androidsvg/c$x;->u:Lcom/caverock/androidsvg/c$o;

    if-eqz v9, :cond_4

    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v9

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    .line 11
    :goto_3
    iget-object v10, v3, Lcom/caverock/androidsvg/c$x;->v:Lcom/caverock/androidsvg/c$o;

    if-eqz v10, :cond_5

    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v10

    goto :goto_8

    :cond_5
    const/4 v10, 0x0

    goto :goto_8

    .line 12
    :cond_6
    iget-object v4, v3, Lcom/caverock/androidsvg/c$x;->s:Lcom/caverock/androidsvg/c$o;

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v4, :cond_7

    invoke-virtual {v4, v0, v8}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    move-result v4

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    .line 13
    :goto_4
    iget-object v9, v3, Lcom/caverock/androidsvg/c$x;->t:Lcom/caverock/androidsvg/c$o;

    if-eqz v9, :cond_8

    invoke-virtual {v9, v0, v8}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    move-result v9

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    .line 14
    :goto_5
    iget-object v10, v3, Lcom/caverock/androidsvg/c$x;->u:Lcom/caverock/androidsvg/c$o;

    if-eqz v10, :cond_9

    invoke-virtual {v10, v0, v8}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    move-result v10

    goto :goto_6

    :cond_9
    const/4 v10, 0x0

    .line 15
    :goto_6
    iget-object v11, v3, Lcom/caverock/androidsvg/c$x;->v:Lcom/caverock/androidsvg/c$o;

    if-eqz v11, :cond_a

    invoke-virtual {v11, v0, v8}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    move-result v8

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    .line 16
    :goto_7
    iget-object v11, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    iget v12, v11, Lcom/caverock/androidsvg/c$a;->b:F

    iget v13, v11, Lcom/caverock/androidsvg/c$a;->d:F

    mul-float v4, v4, v13

    add-float/2addr v4, v12

    .line 17
    iget v12, v11, Lcom/caverock/androidsvg/c$a;->c:F

    iget v11, v11, Lcom/caverock/androidsvg/c$a;->e:F

    mul-float v9, v9, v11

    add-float/2addr v9, v12

    mul-float v10, v10, v13

    mul-float v8, v8, v11

    move/from16 v16, v10

    move v10, v8

    move v8, v9

    move/from16 v9, v16

    :goto_8
    cmpl-float v11, v9, v7

    if-eqz v11, :cond_1b

    cmpl-float v11, v10, v7

    if-nez v11, :cond_b

    goto/16 :goto_11

    .line 18
    :cond_b
    iget-object v11, v3, Lcom/caverock/androidsvg/c$o0;->n:Lcom/caverock/androidsvg/b;

    if-eqz v11, :cond_c

    goto :goto_9

    :cond_c
    sget-object v11, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b;

    .line 19
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->b0()V

    .line 20
    iget-object v12, v0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v12, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 21
    new-instance v2, Lcom/caverock/androidsvg/d$g;

    invoke-direct {v2, v0}, Lcom/caverock/androidsvg/d$g;-><init>(Lcom/caverock/androidsvg/d;)V

    .line 22
    invoke-static {}, Lcom/caverock/androidsvg/c$d0;->a()Lcom/caverock/androidsvg/c$d0;

    move-result-object v12

    invoke-direct {v0, v2, v12}, Lcom/caverock/androidsvg/d;->e0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$d0;)V

    .line 23
    iget-object v12, v2, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v13, v12, Lcom/caverock/androidsvg/c$d0;->w:Ljava/lang/Boolean;

    .line 24
    invoke-direct {v0, v3, v2}, Lcom/caverock/androidsvg/d;->E(Lcom/caverock/androidsvg/c$m0;Lcom/caverock/androidsvg/d$g;)Lcom/caverock/androidsvg/d$g;

    iput-object v2, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    .line 25
    iget-object v2, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    .line 26
    iget-object v12, v3, Lcom/caverock/androidsvg/c$x;->r:Landroid/graphics/Matrix;

    if-eqz v12, :cond_12

    .line 27
    iget-object v13, v0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v13, v12}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 28
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 29
    iget-object v13, v3, Lcom/caverock/androidsvg/c$x;->r:Landroid/graphics/Matrix;

    invoke-virtual {v13, v12}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v2, 0x8

    new-array v13, v2, [F

    .line 30
    iget-object v2, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    iget v14, v2, Lcom/caverock/androidsvg/c$a;->b:F

    aput v14, v13, v5

    iget v14, v2, Lcom/caverock/androidsvg/c$a;->c:F

    aput v14, v13, v6

    .line 31
    invoke-virtual {v2}, Lcom/caverock/androidsvg/c$a;->a()F

    move-result v2

    const/4 v14, 0x2

    aput v2, v13, v14

    const/4 v2, 0x3

    iget-object v15, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    iget v14, v15, Lcom/caverock/androidsvg/c$a;->c:F

    aput v14, v13, v2

    const/4 v2, 0x4

    .line 32
    invoke-virtual {v15}, Lcom/caverock/androidsvg/c$a;->a()F

    move-result v14

    aput v14, v13, v2

    const/4 v2, 0x5

    iget-object v14, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    invoke-virtual {v14}, Lcom/caverock/androidsvg/c$a;->b()F

    move-result v14

    aput v14, v13, v2

    .line 33
    iget-object v2, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    iget v14, v2, Lcom/caverock/androidsvg/c$a;->b:F

    const/4 v15, 0x6

    aput v14, v13, v15

    const/4 v14, 0x7

    invoke-virtual {v2}, Lcom/caverock/androidsvg/c$a;->b()F

    move-result v2

    aput v2, v13, v14

    .line 34
    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 35
    new-instance v12, Landroid/graphics/RectF;

    aget v2, v13, v5

    aget v14, v13, v6

    aget v7, v13, v5

    aget v5, v13, v6

    invoke-direct {v12, v2, v14, v7, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v14, 0x2

    :goto_a
    if-le v14, v15, :cond_d

    .line 36
    new-instance v2, Lcom/caverock/androidsvg/c$a;

    iget v5, v12, Landroid/graphics/RectF;->left:F

    iget v7, v12, Landroid/graphics/RectF;->top:F

    iget v13, v12, Landroid/graphics/RectF;->right:F

    sub-float/2addr v13, v5

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v7

    invoke-direct {v2, v5, v7, v13, v12}, Lcom/caverock/androidsvg/c$a;-><init>(FFFF)V

    goto :goto_b

    .line 37
    :cond_d
    aget v2, v13, v14

    iget v5, v12, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_e

    aget v2, v13, v14

    iput v2, v12, Landroid/graphics/RectF;->left:F

    .line 38
    :cond_e
    aget v2, v13, v14

    iget v5, v12, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_f

    aget v2, v13, v14

    iput v2, v12, Landroid/graphics/RectF;->right:F

    :cond_f
    add-int/lit8 v2, v14, 0x1

    .line 39
    aget v5, v13, v2

    iget v7, v12, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_10

    aget v5, v13, v2

    iput v5, v12, Landroid/graphics/RectF;->top:F

    .line 40
    :cond_10
    aget v5, v13, v2

    iget v7, v12, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_11

    aget v2, v13, v2

    iput v2, v12, Landroid/graphics/RectF;->bottom:F

    :cond_11
    add-int/lit8 v14, v14, 0x2

    goto :goto_a

    .line 41
    :cond_12
    :goto_b
    iget v5, v2, Lcom/caverock/androidsvg/c$a;->b:F

    sub-float/2addr v5, v4

    div-float/2addr v5, v9

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-float v5, v12

    mul-float v5, v5, v9

    add-float/2addr v5, v4

    .line 42
    iget v4, v2, Lcom/caverock/androidsvg/c$a;->c:F

    sub-float/2addr v4, v8

    div-float/2addr v4, v10

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-float v4, v12

    mul-float v4, v4, v10

    add-float/2addr v4, v8

    .line 43
    invoke-virtual {v2}, Lcom/caverock/androidsvg/c$a;->a()F

    move-result v7

    .line 44
    invoke-virtual {v2}, Lcom/caverock/androidsvg/c$a;->b()F

    move-result v2

    .line 45
    new-instance v8, Lcom/caverock/androidsvg/c$a;

    const/4 v12, 0x0

    invoke-direct {v8, v12, v12, v9, v10}, Lcom/caverock/androidsvg/c$a;-><init>(FFFF)V

    :goto_c
    cmpg-float v12, v4, v2

    if-ltz v12, :cond_13

    .line 46
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->a0()V

    goto/16 :goto_11

    :cond_13
    move v12, v5

    :goto_d
    cmpg-float v13, v12, v7

    if-ltz v13, :cond_14

    add-float/2addr v4, v10

    goto :goto_c

    .line 47
    :cond_14
    iput v12, v8, Lcom/caverock/androidsvg/c$a;->b:F

    .line 48
    iput v4, v8, Lcom/caverock/androidsvg/c$a;->c:F

    .line 49
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->b0()V

    .line 50
    iget-object v13, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v13, v13, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v13, v13, Lcom/caverock/androidsvg/c$d0;->w:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_15

    .line 51
    iget v13, v8, Lcom/caverock/androidsvg/c$a;->b:F

    iget v14, v8, Lcom/caverock/androidsvg/c$a;->c:F

    iget v15, v8, Lcom/caverock/androidsvg/c$a;->d:F

    iget v6, v8, Lcom/caverock/androidsvg/c$a;->e:F

    invoke-direct {v0, v13, v14, v15, v6}, Lcom/caverock/androidsvg/d;->Y(FFFF)V

    .line 52
    :cond_15
    iget-object v6, v3, Lcom/caverock/androidsvg/c$q0;->o:Lcom/caverock/androidsvg/c$a;

    if-eqz v6, :cond_16

    .line 53
    iget-object v13, v0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-direct {v0, v8, v6, v11}, Lcom/caverock/androidsvg/d;->l(Lcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/b;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v13, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_f

    .line 54
    :cond_16
    iget-object v6, v3, Lcom/caverock/androidsvg/c$x;->q:Ljava/lang/Boolean;

    if-eqz v6, :cond_17

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_17

    const/4 v6, 0x0

    goto :goto_e

    :cond_17
    const/4 v6, 0x1

    .line 55
    :goto_e
    iget-object v13, v0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v13, v12, v4}, Landroid/graphics/Canvas;->translate(FF)V

    if-nez v6, :cond_18

    .line 56
    iget-object v6, v0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    iget-object v13, v1, Lcom/caverock/androidsvg/c$j0;->h:Lcom/caverock/androidsvg/c$a;

    iget v14, v13, Lcom/caverock/androidsvg/c$a;->d:F

    iget v13, v13, Lcom/caverock/androidsvg/c$a;->e:F

    invoke-virtual {v6, v14, v13}, Landroid/graphics/Canvas;->scale(FF)V

    .line 57
    :cond_18
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result v6

    .line 58
    iget-object v13, v3, Lcom/caverock/androidsvg/c$g0;->i:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_10
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_1a

    if-eqz v6, :cond_19

    .line 59
    invoke-direct {v0, v3}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    .line 60
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/d;->a0()V

    add-float/2addr v12, v9

    const/4 v6, 0x1

    goto :goto_d

    .line 61
    :cond_1a
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/caverock/androidsvg/c$m0;

    .line 62
    invoke-direct {v0, v14}, Lcom/caverock/androidsvg/d;->T(Lcom/caverock/androidsvg/c$m0;)V

    goto :goto_10

    :cond_1b
    :goto_11
    return-void

    .line 63
    :cond_1c
    iget-object v1, v0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    iget-object v3, v0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v3, v3, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private v(Landroid/graphics/Path;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v1, v0, Lcom/caverock/androidsvg/d$g;->b:Lcom/caverock/androidsvg/c$d0;

    iget-object v1, v1, Lcom/caverock/androidsvg/c$d0;->M:Lcom/caverock/androidsvg/c$d0$h;

    sget-object v2, Lcom/caverock/androidsvg/c$d0$h;->c:Lcom/caverock/androidsvg/c$d0$h;

    if-ne v1, v2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 5
    iget-object p1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 6
    iget-object p1, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object p1, p1, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    .line 7
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1, v2}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 9
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 10
    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 11
    invoke-virtual {p1, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 12
    :cond_0
    iget-object v3, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v4, v4, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 13
    iget-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private w()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/caverock/androidsvg/d;->j:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 5
    iput-object v1, p0, Lcom/caverock/androidsvg/d;->a:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Not enough memory to create temporary bitmaps for mask processing"

    .line 6
    invoke-static {v2, v1}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    throw v0
.end method

.method private x(Lcom/caverock/androidsvg/c$x0;Lcom/caverock/androidsvg/d$i;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/caverock/androidsvg/c$g0;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/c$m0;

    .line 5
    instance-of v4, v3, Lcom/caverock/androidsvg/c$b1;

    if-eqz v4, :cond_2

    .line 6
    check-cast v3, Lcom/caverock/androidsvg/c$b1;

    iget-object v3, v3, Lcom/caverock/androidsvg/c$b1;->c:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    xor-int/2addr v4, v0

    invoke-direct {p0, v3, v2, v4}, Lcom/caverock/androidsvg/d;->c0(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/caverock/androidsvg/d$i;->b(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 7
    :cond_2
    move-object v2, v3

    check-cast v2, Lcom/caverock/androidsvg/c$x0;

    invoke-virtual {p2, v2}, Lcom/caverock/androidsvg/d$i;->a(Lcom/caverock/androidsvg/c$x0;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_c

    .line 8
    :cond_3
    instance-of v2, v3, Lcom/caverock/androidsvg/c$y0;

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    .line 9
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->b0()V

    .line 10
    check-cast v3, Lcom/caverock/androidsvg/c$y0;

    .line 11
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, v2, v3}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 12
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_2

    .line 13
    :cond_4
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->h0()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 14
    :cond_5
    iget-object v2, v3, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    iget-object v5, v3, Lcom/caverock/androidsvg/c$y0;->n:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/caverock/androidsvg/c;->k(Ljava/lang/String;)Lcom/caverock/androidsvg/c$m0;

    move-result-object v2

    if-nez v2, :cond_6

    new-array v2, v0, [Ljava/lang/Object;

    .line 15
    iget-object v3, v3, Lcom/caverock/androidsvg/c$y0;->n:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v3, "TextPath reference \'%s\' not found"

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 16
    :cond_6
    check-cast v2, Lcom/caverock/androidsvg/c$u;

    .line 17
    new-instance v5, Lcom/caverock/androidsvg/d$c;

    iget-object v6, v2, Lcom/caverock/androidsvg/c$u;->o:Lcom/caverock/androidsvg/c$v;

    invoke-direct {v5, p0, v6}, Lcom/caverock/androidsvg/d$c;-><init>(Lcom/caverock/androidsvg/d;Lcom/caverock/androidsvg/c$v;)V

    .line 18
    iget-object v5, v5, Lcom/caverock/androidsvg/d$c;->a:Landroid/graphics/Path;

    .line 19
    iget-object v2, v2, Lcom/caverock/androidsvg/c$k;->n:Landroid/graphics/Matrix;

    if-eqz v2, :cond_7

    .line 20
    invoke-virtual {v5, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 21
    :cond_7
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, v5, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 22
    iget-object v6, v3, Lcom/caverock/androidsvg/c$y0;->o:Lcom/caverock/androidsvg/c$o;

    if-eqz v6, :cond_8

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    invoke-virtual {v6, p0, v2}, Lcom/caverock/androidsvg/c$o;->d(Lcom/caverock/androidsvg/d;F)F

    move-result v2

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    .line 23
    :goto_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->F()Lcom/caverock/androidsvg/c$d0$e;

    move-result-object v6

    .line 24
    sget-object v7, Lcom/caverock/androidsvg/c$d0$e;->b:Lcom/caverock/androidsvg/c$d0$e;

    if-eq v6, v7, :cond_a

    .line 25
    new-instance v7, Lcom/caverock/androidsvg/d$j;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/caverock/androidsvg/d$j;-><init>(Lcom/caverock/androidsvg/d;Lcom/caverock/androidsvg/d$j;)V

    .line 26
    invoke-direct {p0, v3, v7}, Lcom/caverock/androidsvg/d;->x(Lcom/caverock/androidsvg/c$x0;Lcom/caverock/androidsvg/d$i;)V

    .line 27
    iget v7, v7, Lcom/caverock/androidsvg/d$j;->a:F

    .line 28
    sget-object v8, Lcom/caverock/androidsvg/c$d0$e;->c:Lcom/caverock/androidsvg/c$d0$e;

    if-ne v6, v8, :cond_9

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v7, v6

    :cond_9
    sub-float/2addr v2, v7

    .line 29
    :cond_a
    invoke-virtual {v3}, Lcom/caverock/androidsvg/c$y0;->g()Lcom/caverock/androidsvg/c$a1;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/c$j0;

    invoke-direct {p0, v6}, Lcom/caverock/androidsvg/d;->n(Lcom/caverock/androidsvg/c$j0;)V

    .line 30
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result v6

    .line 31
    new-instance v7, Lcom/caverock/androidsvg/d$d;

    invoke-direct {v7, p0, v5, v2, v4}, Lcom/caverock/androidsvg/d$d;-><init>(Lcom/caverock/androidsvg/d;Landroid/graphics/Path;FF)V

    invoke-direct {p0, v3, v7}, Lcom/caverock/androidsvg/d;->x(Lcom/caverock/androidsvg/c$x0;Lcom/caverock/androidsvg/d$i;)V

    if-eqz v6, :cond_b

    .line 32
    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    .line 33
    :cond_b
    :goto_2
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->a0()V

    goto/16 :goto_c

    .line 34
    :cond_c
    instance-of v2, v3, Lcom/caverock/androidsvg/c$u0;

    if-eqz v2, :cond_18

    .line 35
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->b0()V

    .line 36
    check-cast v3, Lcom/caverock/androidsvg/c$u0;

    .line 37
    iget-object v2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, v2, v3}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 38
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 39
    instance-of v2, p2, Lcom/caverock/androidsvg/d$e;

    if-eqz v2, :cond_15

    .line 40
    iget-object v5, v3, Lcom/caverock/androidsvg/c$z0;->n:Ljava/util/List;

    if-eqz v5, :cond_e

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_d

    goto :goto_3

    :cond_d
    iget-object v5, v3, Lcom/caverock/androidsvg/c$z0;->n:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v5

    goto :goto_4

    :cond_e
    :goto_3
    move-object v5, p2

    check-cast v5, Lcom/caverock/androidsvg/d$e;

    iget v5, v5, Lcom/caverock/androidsvg/d$e;->a:F

    .line 41
    :goto_4
    iget-object v6, v3, Lcom/caverock/androidsvg/c$z0;->o:Ljava/util/List;

    if-eqz v6, :cond_10

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_f

    goto :goto_5

    :cond_f
    iget-object v6, v3, Lcom/caverock/androidsvg/c$z0;->o:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v6

    goto :goto_6

    :cond_10
    :goto_5
    move-object v6, p2

    check-cast v6, Lcom/caverock/androidsvg/d$e;

    iget v6, v6, Lcom/caverock/androidsvg/d$e;->b:F

    .line 42
    :goto_6
    iget-object v7, v3, Lcom/caverock/androidsvg/c$z0;->p:Ljava/util/List;

    if-eqz v7, :cond_12

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_11

    goto :goto_7

    :cond_11
    iget-object v7, v3, Lcom/caverock/androidsvg/c$z0;->p:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/c$o;->e(Lcom/caverock/androidsvg/d;)F

    move-result v7

    goto :goto_8

    :cond_12
    :goto_7
    const/4 v7, 0x0

    .line 43
    :goto_8
    iget-object v8, v3, Lcom/caverock/androidsvg/c$z0;->q:Ljava/util/List;

    if-eqz v8, :cond_14

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_13

    goto :goto_9

    :cond_13
    iget-object v4, v3, Lcom/caverock/androidsvg/c$z0;->q:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/c$o;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/c$o;->f(Lcom/caverock/androidsvg/d;)F

    move-result v4

    :cond_14
    :goto_9
    move v9, v5

    move v5, v4

    move v4, v9

    goto :goto_a

    :cond_15
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 44
    :goto_a
    invoke-virtual {v3}, Lcom/caverock/androidsvg/c$u0;->g()Lcom/caverock/androidsvg/c$a1;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/c$j0;

    invoke-direct {p0, v8}, Lcom/caverock/androidsvg/d;->n(Lcom/caverock/androidsvg/c$j0;)V

    if-eqz v2, :cond_16

    .line 45
    move-object v2, p2

    check-cast v2, Lcom/caverock/androidsvg/d$e;

    add-float/2addr v4, v7

    iput v4, v2, Lcom/caverock/androidsvg/d$e;->a:F

    add-float/2addr v6, v5

    .line 46
    iput v6, v2, Lcom/caverock/androidsvg/d$e;->b:F

    .line 47
    :cond_16
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->R()Z

    move-result v2

    .line 48
    invoke-direct {p0, v3, p2}, Lcom/caverock/androidsvg/d;->x(Lcom/caverock/androidsvg/c$x0;Lcom/caverock/androidsvg/d$i;)V

    if-eqz v2, :cond_17

    .line 49
    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/d;->Q(Lcom/caverock/androidsvg/c$j0;)V

    .line 50
    :cond_17
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->a0()V

    goto :goto_c

    .line 51
    :cond_18
    instance-of v2, v3, Lcom/caverock/androidsvg/c$t0;

    if-eqz v2, :cond_1b

    .line 52
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->b0()V

    .line 53
    move-object v2, v3

    check-cast v2, Lcom/caverock/androidsvg/c$t0;

    .line 54
    iget-object v4, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-direct {p0, v4, v2}, Lcom/caverock/androidsvg/d;->f0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$k0;)V

    .line 55
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->t()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 56
    invoke-virtual {v2}, Lcom/caverock/androidsvg/c$t0;->g()Lcom/caverock/androidsvg/c$a1;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/c$j0;

    invoke-direct {p0, v4}, Lcom/caverock/androidsvg/d;->n(Lcom/caverock/androidsvg/c$j0;)V

    .line 57
    iget-object v3, v3, Lcom/caverock/androidsvg/c$m0;->a:Lcom/caverock/androidsvg/c;

    iget-object v4, v2, Lcom/caverock/androidsvg/c$t0;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/c;->k(Ljava/lang/String;)Lcom/caverock/androidsvg/c$m0;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 58
    instance-of v4, v3, Lcom/caverock/androidsvg/c$x0;

    if-eqz v4, :cond_19

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    check-cast v3, Lcom/caverock/androidsvg/c$x0;

    invoke-direct {p0, v3, v2}, Lcom/caverock/androidsvg/d;->z(Lcom/caverock/androidsvg/c$x0;Ljava/lang/StringBuilder;)V

    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1a

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/caverock/androidsvg/d$i;->b(Ljava/lang/String;)V

    goto :goto_b

    :cond_19
    new-array v3, v0, [Ljava/lang/Object;

    .line 63
    iget-object v2, v2, Lcom/caverock/androidsvg/c$t0;->n:Ljava/lang/String;

    aput-object v2, v3, v1

    const-string v2, "Tref reference \'%s\' not found"

    invoke-static {v2, v3}, Lcom/caverock/androidsvg/d;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_1a
    :goto_b
    invoke-direct {p0}, Lcom/caverock/androidsvg/d;->a0()V

    :cond_1b
    :goto_c
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private static varargs y(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SVGAndroidRenderer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private z(Lcom/caverock/androidsvg/c$x0;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/caverock/androidsvg/c$g0;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/c$m0;

    .line 4
    instance-of v3, v2, Lcom/caverock/androidsvg/c$x0;

    if-eqz v3, :cond_1

    .line 5
    check-cast v2, Lcom/caverock/androidsvg/c$x0;

    invoke-direct {p0, v2, p2}, Lcom/caverock/androidsvg/d;->z(Lcom/caverock/androidsvg/c$x0;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 6
    :cond_1
    instance-of v3, v2, Lcom/caverock/androidsvg/c$b1;

    if-eqz v3, :cond_2

    .line 7
    check-cast v2, Lcom/caverock/androidsvg/c$b1;

    iget-object v2, v2, Lcom/caverock/androidsvg/c$b1;->c:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-direct {p0, v2, v1, v3}, Lcom/caverock/androidsvg/d;->c0(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected H()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected I()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected J()Lcom/caverock/androidsvg/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object v1, v0, Lcom/caverock/androidsvg/d$g;->h:Lcom/caverock/androidsvg/c$a;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/caverock/androidsvg/d$g;->g:Lcom/caverock/androidsvg/c$a;

    return-object v0
.end method

.method protected K()F
    .locals 1

    const/high16 v0, 0x42c00000    # 96.0f

    return v0
.end method

.method protected V(Lcom/caverock/androidsvg/c;Lcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/b;Z)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/d;->d:Lcom/caverock/androidsvg/c;

    .line 2
    iput-boolean p4, p0, Lcom/caverock/androidsvg/d;->c:Z

    .line 3
    invoke-virtual {p1}, Lcom/caverock/androidsvg/c;->g()Lcom/caverock/androidsvg/c$e0;

    move-result-object v1

    const/4 p1, 0x0

    if-nez v1, :cond_0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Nothing to render. Document is empty."

    .line 4
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/d;->i0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    new-instance p2, Lcom/caverock/androidsvg/d$g;

    invoke-direct {p2, p0}, Lcom/caverock/androidsvg/d$g;-><init>(Lcom/caverock/androidsvg/d;)V

    iput-object p2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    .line 6
    new-instance p2, Ljava/util/Stack;

    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    iput-object p2, p0, Lcom/caverock/androidsvg/d;->f:Ljava/util/Stack;

    .line 7
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    invoke-static {}, Lcom/caverock/androidsvg/c$d0;->a()Lcom/caverock/androidsvg/c$d0;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/caverock/androidsvg/d;->e0(Lcom/caverock/androidsvg/d$g;Lcom/caverock/androidsvg/c$d0;)V

    .line 8
    iget-object p2, p0, Lcom/caverock/androidsvg/d;->e:Lcom/caverock/androidsvg/d$g;

    iget-object p3, p0, Lcom/caverock/androidsvg/d;->b:Lcom/caverock/androidsvg/c$a;

    iput-object p3, p2, Lcom/caverock/androidsvg/d$g;->g:Lcom/caverock/androidsvg/c$a;

    .line 9
    iput-boolean p1, p2, Lcom/caverock/androidsvg/d$g;->i:Z

    .line 10
    iget-boolean p1, p0, Lcom/caverock/androidsvg/d;->c:Z

    iput-boolean p1, p2, Lcom/caverock/androidsvg/d$g;->j:Z

    .line 11
    iget-object p1, p0, Lcom/caverock/androidsvg/d;->f:Ljava/util/Stack;

    invoke-virtual {p2}, Lcom/caverock/androidsvg/d$g;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/caverock/androidsvg/d$g;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/d;->i:Ljava/util/Stack;

    .line 13
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/d;->j:Ljava/util/Stack;

    .line 14
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/d;->h:Ljava/util/Stack;

    .line 15
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/d;->g:Ljava/util/Stack;

    .line 16
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/d;->p(Lcom/caverock/androidsvg/c$m0;)V

    .line 17
    iget-object v2, v1, Lcom/caverock/androidsvg/c$e0;->r:Lcom/caverock/androidsvg/c$o;

    iget-object v3, v1, Lcom/caverock/androidsvg/c$e0;->s:Lcom/caverock/androidsvg/c$o;

    .line 18
    iget-object v4, v1, Lcom/caverock/androidsvg/c$q0;->o:Lcom/caverock/androidsvg/c$a;

    .line 19
    iget-object v5, v1, Lcom/caverock/androidsvg/c$o0;->n:Lcom/caverock/androidsvg/b;

    move-object v0, p0

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/d;->S(Lcom/caverock/androidsvg/c$e0;Lcom/caverock/androidsvg/c$o;Lcom/caverock/androidsvg/c$o;Lcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/b;)V

    return-void
.end method
