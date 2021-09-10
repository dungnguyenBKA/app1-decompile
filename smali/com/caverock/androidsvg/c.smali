.class public Lcom/caverock/androidsvg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/c$a;,
        Lcom/caverock/androidsvg/c$b;,
        Lcom/caverock/androidsvg/c$c;,
        Lcom/caverock/androidsvg/c$d;,
        Lcom/caverock/androidsvg/c$e;,
        Lcom/caverock/androidsvg/c$f;,
        Lcom/caverock/androidsvg/c$g;,
        Lcom/caverock/androidsvg/c$h;,
        Lcom/caverock/androidsvg/c$i;,
        Lcom/caverock/androidsvg/c$j;,
        Lcom/caverock/androidsvg/c$k;,
        Lcom/caverock/androidsvg/c$l;,
        Lcom/caverock/androidsvg/c$m;,
        Lcom/caverock/androidsvg/c$n;,
        Lcom/caverock/androidsvg/c$o;,
        Lcom/caverock/androidsvg/c$p;,
        Lcom/caverock/androidsvg/c$q;,
        Lcom/caverock/androidsvg/c$r;,
        Lcom/caverock/androidsvg/c$s;,
        Lcom/caverock/androidsvg/c$t;,
        Lcom/caverock/androidsvg/c$u;,
        Lcom/caverock/androidsvg/c$v;,
        Lcom/caverock/androidsvg/c$w;,
        Lcom/caverock/androidsvg/c$x;,
        Lcom/caverock/androidsvg/c$y;,
        Lcom/caverock/androidsvg/c$z;,
        Lcom/caverock/androidsvg/c$a0;,
        Lcom/caverock/androidsvg/c$b0;,
        Lcom/caverock/androidsvg/c$c0;,
        Lcom/caverock/androidsvg/c$d0;,
        Lcom/caverock/androidsvg/c$e0;,
        Lcom/caverock/androidsvg/c$f0;,
        Lcom/caverock/androidsvg/c$g0;,
        Lcom/caverock/androidsvg/c$h0;,
        Lcom/caverock/androidsvg/c$i0;,
        Lcom/caverock/androidsvg/c$j0;,
        Lcom/caverock/androidsvg/c$k0;,
        Lcom/caverock/androidsvg/c$l0;,
        Lcom/caverock/androidsvg/c$m0;,
        Lcom/caverock/androidsvg/c$n0;,
        Lcom/caverock/androidsvg/c$o0;,
        Lcom/caverock/androidsvg/c$p0;,
        Lcom/caverock/androidsvg/c$q0;,
        Lcom/caverock/androidsvg/c$r0;,
        Lcom/caverock/androidsvg/c$s0;,
        Lcom/caverock/androidsvg/c$t0;,
        Lcom/caverock/androidsvg/c$u0;,
        Lcom/caverock/androidsvg/c$v0;,
        Lcom/caverock/androidsvg/c$w0;,
        Lcom/caverock/androidsvg/c$x0;,
        Lcom/caverock/androidsvg/c$y0;,
        Lcom/caverock/androidsvg/c$z0;,
        Lcom/caverock/androidsvg/c$a1;,
        Lcom/caverock/androidsvg/c$b1;,
        Lcom/caverock/androidsvg/c$c1;,
        Lcom/caverock/androidsvg/c$d1;,
        Lcom/caverock/androidsvg/c$e1;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/c$m0;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic d:I


# instance fields
.field private a:Lcom/caverock/androidsvg/c$e0;

.field private b:Lcom/caverock/androidsvg/a$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/c;->c:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/caverock/androidsvg/c;->a:Lcom/caverock/androidsvg/c$e0;

    .line 3
    new-instance v0, Lcom/caverock/androidsvg/a$g;

    invoke-direct {v0}, Lcom/caverock/androidsvg/a$g;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/c;->b:Lcom/caverock/androidsvg/a$g;

    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/c;->c:Ljava/util/List;

    return-object v0
.end method

.method private d(Lcom/caverock/androidsvg/c$i0;Ljava/lang/String;)Lcom/caverock/androidsvg/c$k0;
    .locals 3

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/c$k0;

    .line 2
    iget-object v1, v0, Lcom/caverock/androidsvg/c$k0;->c:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/caverock/androidsvg/c$i0;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/c$m0;

    .line 4
    instance-of v1, v0, Lcom/caverock/androidsvg/c$k0;

    if-nez v1, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/c$k0;

    .line 6
    iget-object v2, v1, Lcom/caverock/androidsvg/c$k0;->c:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    .line 7
    :cond_4
    instance-of v1, v0, Lcom/caverock/androidsvg/c$i0;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Lcom/caverock/androidsvg/c$i0;

    invoke-direct {p0, v0, p2}, Lcom/caverock/androidsvg/c;->d(Lcom/caverock/androidsvg/c$i0;Ljava/lang/String;)Lcom/caverock/androidsvg/c$k0;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0
.end method

.method public static e(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/f;

    invoke-direct {v0}, Lcom/caverock/androidsvg/f;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/f;->e(Ljava/io/InputStream;)Lcom/caverock/androidsvg/c;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1
.end method

.method public static f(Ljava/io/InputStream;)Lcom/caverock/androidsvg/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/f;

    invoke-direct {v0}, Lcom/caverock/androidsvg/f;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/f;->e(Ljava/io/InputStream;)Lcom/caverock/androidsvg/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected b(Lcom/caverock/androidsvg/a$g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/c;->b:Lcom/caverock/androidsvg/a$g;

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/a$g;->b(Lcom/caverock/androidsvg/a$g;)V

    return-void
.end method

.method protected c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/a$f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/c;->b:Lcom/caverock/androidsvg/a$g;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/a$g;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected g()Lcom/caverock/androidsvg/c$e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/c;->a:Lcom/caverock/androidsvg/c$e0;

    return-object v0
.end method

.method protected h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/c;->b:Lcom/caverock/androidsvg/a$g;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/a$g;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public i()Landroid/graphics/Picture;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/c;->a:Lcom/caverock/androidsvg/c$e0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$e0;->r:Lcom/caverock/androidsvg/c$o;

    if-eqz v0, :cond_2

    const/high16 v1, 0x42c00000    # 96.0f

    .line 2
    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/c$o;->b(F)F

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/caverock/androidsvg/c;->a:Lcom/caverock/androidsvg/c$e0;

    iget-object v3, v2, Lcom/caverock/androidsvg/c$q0;->o:Lcom/caverock/androidsvg/c$a;

    if-eqz v3, :cond_0

    .line 4
    iget v1, v3, Lcom/caverock/androidsvg/c$a;->e:F

    mul-float v1, v1, v0

    iget v2, v3, Lcom/caverock/androidsvg/c$a;->d:F

    div-float/2addr v1, v2

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v2, Lcom/caverock/androidsvg/c$e0;->s:Lcom/caverock/androidsvg/c$o;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2, v1}, Lcom/caverock/androidsvg/c$o;->b(F)F

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    float-to-double v2, v0

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/caverock/androidsvg/c;->j(II)Landroid/graphics/Picture;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v0, 0x200

    .line 8
    invoke-virtual {p0, v0, v0}, Lcom/caverock/androidsvg/c;->j(II)Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public j(II)Landroid/graphics/Picture;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/caverock/androidsvg/c$a;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p1, p2}, Lcom/caverock/androidsvg/c$a;-><init>(FFFF)V

    .line 4
    new-instance p1, Lcom/caverock/androidsvg/d;

    const/high16 p2, 0x42c00000    # 96.0f

    invoke-direct {p1, v1, v2, p2}, Lcom/caverock/androidsvg/d;-><init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/c$a;F)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, p0, p2, p2, v1}, Lcom/caverock/androidsvg/d;->V(Lcom/caverock/androidsvg/c;Lcom/caverock/androidsvg/c$a;Lcom/caverock/androidsvg/b;Z)V

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    return-object v0
.end method

.method protected k(Ljava/lang/String;)Lcom/caverock/androidsvg/c$m0;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/caverock/androidsvg/c;->a:Lcom/caverock/androidsvg/c$e0;

    iget-object v0, v0, Lcom/caverock/androidsvg/c$k0;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/caverock/androidsvg/c;->a:Lcom/caverock/androidsvg/c$e0;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/c;->a:Lcom/caverock/androidsvg/c$e0;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/c;->d(Lcom/caverock/androidsvg/c$i0;Ljava/lang/String;)Lcom/caverock/androidsvg/c$k0;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    return-object v0
.end method

.method public l(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/c;->a:Lcom/caverock/androidsvg/c$e0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/caverock/androidsvg/c$o;

    invoke-direct {v1, p1}, Lcom/caverock/androidsvg/c$o;-><init>(F)V

    iput-object v1, v0, Lcom/caverock/androidsvg/c$e0;->s:Lcom/caverock/androidsvg/c$o;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SVG document is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/c;->a:Lcom/caverock/androidsvg/c$e0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/caverock/androidsvg/c$o;

    invoke-direct {v1, p1}, Lcom/caverock/androidsvg/c$o;-><init>(F)V

    iput-object v1, v0, Lcom/caverock/androidsvg/c$e0;->r:Lcom/caverock/androidsvg/c$o;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SVG document is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected n(Lcom/caverock/androidsvg/c$e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/c;->a:Lcom/caverock/androidsvg/c$e0;

    return-void
.end method
