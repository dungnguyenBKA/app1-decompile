.class public abstract Lyj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lyj<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private A:Z

.field private b:I

.field private c:F

.field private d:Lvd;

.field private e:Lcom/bumptech/glide/f;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lcom/bumptech/glide/load/g;

.field private n:Z

.field private o:Z

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:I

.field private r:Lcom/bumptech/glide/load/i;

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Landroid/content/res/Resources$Theme;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lyj;->c:F

    .line 3
    sget-object v0, Lvd;->d:Lvd;

    iput-object v0, p0, Lyj;->d:Lvd;

    .line 4
    sget-object v0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/f;

    iput-object v0, p0, Lyj;->e:Lcom/bumptech/glide/f;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lyj;->j:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lyj;->k:I

    .line 7
    iput v1, p0, Lyj;->l:I

    .line 8
    invoke-static {}, Lwk;->c()Lwk;

    move-result-object v1

    iput-object v1, p0, Lyj;->m:Lcom/bumptech/glide/load/g;

    .line 9
    iput-boolean v0, p0, Lyj;->o:Z

    .line 10
    new-instance v1, Lcom/bumptech/glide/load/i;

    invoke-direct {v1}, Lcom/bumptech/glide/load/i;-><init>()V

    iput-object v1, p0, Lyj;->r:Lcom/bumptech/glide/load/i;

    .line 11
    new-instance v1, Lzk;

    invoke-direct {v1}, Lzk;-><init>()V

    iput-object v1, p0, Lyj;->s:Ljava/util/Map;

    .line 12
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lyj;->t:Ljava/lang/Class;

    .line 13
    iput-boolean v0, p0, Lyj;->z:Z

    return-void
.end method

.method private static D(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private P()Lyj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lyj;->u:Z

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lyj;->x:Z

    return v0
.end method

.method public final B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lyj;->j:Z

    return v0
.end method

.method C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lyj;->z:Z

    return v0
.end method

.method public final E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lyj;->o:Z

    return v0
.end method

.method public final F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lyj;->n:Z

    return v0
.end method

.method public final G()Z
    .locals 2

    .line 1
    iget v0, p0, Lyj;->b:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lyj;->D(II)Z

    move-result v0

    return v0
.end method

.method public H()Lyj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lyj;->u:Z

    return-object p0
.end method

.method public I()Lyj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Leh;->c:Leh;

    new-instance v1, Lbh;

    invoke-direct {v1}, Lbh;-><init>()V

    invoke-virtual {p0, v0, v1}, Lyj;->L(Leh;Lcom/bumptech/glide/load/m;)Lyj;

    move-result-object v0

    return-object v0
.end method

.method public J()Lyj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Leh;->b:Leh;

    new-instance v1, Lch;

    invoke-direct {v1}, Lch;-><init>()V

    .line 2
    invoke-virtual {p0, v0, v1}, Lyj;->L(Leh;Lcom/bumptech/glide/load/m;)Lyj;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lyj;->z:Z

    return-object v0
.end method

.method public K()Lyj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Leh;->a:Leh;

    new-instance v1, Ljh;

    invoke-direct {v1}, Ljh;-><init>()V

    .line 2
    invoke-virtual {p0, v0, v1}, Lyj;->L(Leh;Lcom/bumptech/glide/load/m;)Lyj;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lyj;->z:Z

    return-object v0
.end method

.method final L(Leh;Lcom/bumptech/glide/load/m;)Lyj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh;",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lyj;->w:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lyj;->d()Lyj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lyj;->L(Leh;Lcom/bumptech/glide/load/m;)Lyj;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lyj;->g(Leh;)Lyj;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p2, p1}, Lyj;->U(Lcom/bumptech/glide/load/m;Z)Lyj;

    move-result-object p1

    return-object p1
.end method

.method public M(II)Lyj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lyj;->w:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lyj;->d()Lyj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lyj;->M(II)Lyj;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Lyj;->l:I

    .line 4
    iput p2, p0, Lyj;->k:I

    .line 5
    iget p1, p0, Lyj;->b:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lyj;->b:I

    .line 6
    invoke-direct {p0}, Lyj;->P()Lyj;

    return-object p0
.end method

.method public N(Landroid/graphics/drawable/Drawable;)Lyj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lyj;->w:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lyj;->d()Lyj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lyj;->N(Landroid/graphics/drawable/Drawable;)Lyj;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Lyj;->h:Landroid/graphics/drawable/Drawable;

    .line 4
    iget p1, p0, Lyj;->b:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lyj;->b:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lyj;->i:I

    and-int/lit16 p1, p1, -0x81

    .line 6
    iput p1, p0, Lyj;->b:I

    .line 7
    invoke-direct {p0}, Lyj;->P()Lyj;

    return-object p0
.end method

.method public O(Lcom/bumptech/glide/f;)Lyj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lyj;->w:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lyj;->d()Lyj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lyj;->O(Lcom/bumptech/glide/f;)Lyj;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lyj;->e:Lcom/bumptech/glide/f;

    .line 5
    iget p1, p0, Lyj;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lyj;->b:I

    .line 6
    invoke-direct {p0}, Lyj;->P()Lyj;

    return-object p0
.end method

.method public Q(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lyj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/h<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lyj;->w:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lyj;->d()Lyj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lyj;->Q(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lyj;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lyj;->r:Lcom/bumptech/glide/load/i;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/i;->e(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;

    .line 6
    invoke-direct {p0}, Lyj;->P()Lyj;

    return-object p0
.end method

.method public R(Lcom/bumptech/glide/load/g;)Lyj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lyj;->w:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lyj;->d()Lyj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lyj;->R(Lcom/bumptech/glide/load/g;)Lyj;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lyj;->m:Lcom/bumptech/glide/load/g;

    .line 5
    iget p1, p0, Lyj;->b:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lyj;->b:I

    .line 6
    invoke-direct {p0}, Lyj;->P()Lyj;

    return-object p0
.end method

.method public S(Z)Lyj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lyj;->w:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lyj;->d()Lyj;

    move-result-object p1

    invoke-virtual {p1, v1}, Lyj;->S(Z)Lyj;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    .line 3
    iput-boolean p1, p0, Lyj;->j:Z

    .line 4
    iget p1, p0, Lyj;->b:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lyj;->b:I

    .line 5
    invoke-direct {p0}, Lyj;->P()Lyj;

    return-object p0
.end method

.method public T(Lcom/bumptech/glide/load/m;)Lyj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lyj;->U(Lcom/bumptech/glide/load/m;Z)Lyj;

    move-result-object p1

    return-object p1
.end method

.method U(Lcom/bumptech/glide/load/m;Z)Lyj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lyj;->w:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lyj;->d()Lyj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lyj;->U(Lcom/bumptech/glide/load/m;Z)Lyj;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lhh;

    invoke-direct {v0, p1, p2}, Lhh;-><init>(Lcom/bumptech/glide/load/m;Z)V

    .line 4
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lyj;->W(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Lyj;

    .line 5
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lyj;->W(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Lyj;

    .line 6
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1, v0, p2}, Lyj;->W(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Lyj;

    .line 7
    const-class v0, Lji;

    new-instance v1, Lmi;

    invoke-direct {v1, p1}, Lmi;-><init>(Lcom/bumptech/glide/load/m;)V

    invoke-virtual {p0, v0, v1, p2}, Lyj;->W(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Lyj;

    .line 8
    invoke-direct {p0}, Lyj;->P()Lyj;

    return-object p0
.end method

.method final V(Leh;Lcom/bumptech/glide/load/m;)Lyj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh;",
            "Lcom/bumptech/glide/load/m<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lyj;->w:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lyj;->d()Lyj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lyj;->V(Leh;Lcom/bumptech/glide/load/m;)Lyj;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lyj;->g(Leh;)Lyj;

    .line 4
    invoke-virtual {p0, p2}, Lyj;->T(Lcom/bumptech/glide/load/m;)Lyj;

    move-result-object p1

    return-object p1
.end method

.method W(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Lyj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/m<",
            "TY;>;Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lyj;->w:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lyj;->d()Lyj;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lyj;->W(Ljava/lang/Class;Lcom/bumptech/glide/load/m;Z)Lyj;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lyj;->s:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget p1, p0, Lyj;->b:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lyj;->b:I

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lyj;->o:Z

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lyj;->b:I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lyj;->z:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    .line 10
    iput p1, p0, Lyj;->b:I

    .line 11
    iput-boolean p2, p0, Lyj;->n:Z

    .line 12
    :cond_1
    invoke-direct {p0}, Lyj;->P()Lyj;

    return-object p0
.end method

.method public X(Z)Lyj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lyj;->w:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lyj;->d()Lyj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lyj;->X(Z)Lyj;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-boolean p1, p0, Lyj;->A:Z

    .line 4
    iget p1, p0, Lyj;->b:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lyj;->b:I

    .line 5
    invoke-direct {p0}, Lyj;->P()Lyj;

    return-object p0
.end method

.method public a(Lyj;)Lyj;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyj<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lyj;->w:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lyj;->d()Lyj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lyj;->a(Lyj;)Lyj;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget v0, p1, Lyj;->b:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p1, Lyj;->c:F

    iput v0, p0, Lyj;->c:F

    .line 5
    :cond_1
    iget v0, p1, Lyj;->b:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p1, Lyj;->x:Z

    iput-boolean v0, p0, Lyj;->x:Z

    .line 7
    :cond_2
    iget v0, p1, Lyj;->b:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v0, p1, Lyj;->A:Z

    iput-boolean v0, p0, Lyj;->A:Z

    .line 9
    :cond_3
    iget v0, p1, Lyj;->b:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p1, Lyj;->d:Lvd;

    iput-object v0, p0, Lyj;->d:Lvd;

    .line 11
    :cond_4
    iget v0, p1, Lyj;->b:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p1, Lyj;->e:Lcom/bumptech/glide/f;

    iput-object v0, p0, Lyj;->e:Lcom/bumptech/glide/f;

    .line 13
    :cond_5
    iget v0, p1, Lyj;->b:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lyj;->D(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p1, Lyj;->f:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lyj;->f:Landroid/graphics/drawable/Drawable;

    .line 15
    iput v1, p0, Lyj;->g:I

    .line 16
    iget v0, p0, Lyj;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lyj;->b:I

    .line 17
    :cond_6
    iget v0, p1, Lyj;->b:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lyj;->D(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 18
    iget v0, p1, Lyj;->g:I

    iput v0, p0, Lyj;->g:I

    .line 19
    iput-object v2, p0, Lyj;->f:Landroid/graphics/drawable/Drawable;

    .line 20
    iget v0, p0, Lyj;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lyj;->b:I

    .line 21
    :cond_7
    iget v0, p1, Lyj;->b:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    iget-object v0, p1, Lyj;->h:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lyj;->h:Landroid/graphics/drawable/Drawable;

    .line 23
    iput v1, p0, Lyj;->i:I

    .line 24
    iget v0, p0, Lyj;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lyj;->b:I

    .line 25
    :cond_8
    iget v0, p1, Lyj;->b:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    iget v0, p1, Lyj;->i:I

    iput v0, p0, Lyj;->i:I

    .line 27
    iput-object v2, p0, Lyj;->h:Landroid/graphics/drawable/Drawable;

    .line 28
    iget v0, p0, Lyj;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lyj;->b:I

    .line 29
    :cond_9
    iget v0, p1, Lyj;->b:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    iget-boolean v0, p1, Lyj;->j:Z

    iput-boolean v0, p0, Lyj;->j:Z

    .line 31
    :cond_a
    iget v0, p1, Lyj;->b:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    iget v0, p1, Lyj;->l:I

    iput v0, p0, Lyj;->l:I

    .line 33
    iget v0, p1, Lyj;->k:I

    iput v0, p0, Lyj;->k:I

    .line 34
    :cond_b
    iget v0, p1, Lyj;->b:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 35
    iget-object v0, p1, Lyj;->m:Lcom/bumptech/glide/load/g;

    iput-object v0, p0, Lyj;->m:Lcom/bumptech/glide/load/g;

    .line 36
    :cond_c
    iget v0, p1, Lyj;->b:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    iget-object v0, p1, Lyj;->t:Ljava/lang/Class;

    iput-object v0, p0, Lyj;->t:Ljava/lang/Class;

    .line 38
    :cond_d
    iget v0, p1, Lyj;->b:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    iget-object v0, p1, Lyj;->p:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lyj;->p:Landroid/graphics/drawable/Drawable;

    .line 40
    iput v1, p0, Lyj;->q:I

    .line 41
    iget v0, p0, Lyj;->b:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lyj;->b:I

    .line 42
    :cond_e
    iget v0, p1, Lyj;->b:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 43
    iget v0, p1, Lyj;->q:I

    iput v0, p0, Lyj;->q:I

    .line 44
    iput-object v2, p0, Lyj;->p:Landroid/graphics/drawable/Drawable;

    .line 45
    iget v0, p0, Lyj;->b:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lyj;->b:I

    .line 46
    :cond_f
    iget v0, p1, Lyj;->b:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 47
    iget-object v0, p1, Lyj;->v:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lyj;->v:Landroid/content/res/Resources$Theme;

    .line 48
    :cond_10
    iget v0, p1, Lyj;->b:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 49
    iget-boolean v0, p1, Lyj;->o:Z

    iput-boolean v0, p0, Lyj;->o:Z

    .line 50
    :cond_11
    iget v0, p1, Lyj;->b:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 51
    iget-boolean v0, p1, Lyj;->n:Z

    iput-boolean v0, p0, Lyj;->n:Z

    .line 52
    :cond_12
    iget v0, p1, Lyj;->b:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 53
    iget-object v0, p0, Lyj;->s:Ljava/util/Map;

    iget-object v2, p1, Lyj;->s:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 54
    iget-boolean v0, p1, Lyj;->z:Z

    iput-boolean v0, p0, Lyj;->z:Z

    .line 55
    :cond_13
    iget v0, p1, Lyj;->b:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lyj;->D(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 56
    iget-boolean v0, p1, Lyj;->y:Z

    iput-boolean v0, p0, Lyj;->y:Z

    .line 57
    :cond_14
    iget-boolean v0, p0, Lyj;->o:Z

    if-nez v0, :cond_15

    .line 58
    iget-object v0, p0, Lyj;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    iget v0, p0, Lyj;->b:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lyj;->b:I

    .line 60
    iput-boolean v1, p0, Lyj;->n:Z

    const v1, -0x20001

    and-int/2addr v0, v1

    .line 61
    iput v0, p0, Lyj;->b:I

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lyj;->z:Z

    .line 63
    :cond_15
    iget v0, p0, Lyj;->b:I

    iget v1, p1, Lyj;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lyj;->b:I

    .line 64
    iget-object v0, p0, Lyj;->r:Lcom/bumptech/glide/load/i;

    iget-object p1, p1, Lyj;->r:Lcom/bumptech/glide/load/i;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/i;->d(Lcom/bumptech/glide/load/i;)V

    .line 65
    invoke-direct {p0}, Lyj;->P()Lyj;

    return-object p0
.end method

.method public b()Lyj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lyj;->u:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lyj;->w:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lyj;->w:Z

    .line 4
    invoke-virtual {p0}, Lyj;->H()Lyj;

    move-result-object v0

    return-object v0
.end method

.method public c()Lyj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Leh;->c:Leh;

    new-instance v1, Lbh;

    invoke-direct {v1}, Lbh;-><init>()V

    invoke-virtual {p0, v0, v1}, Lyj;->V(Leh;Lcom/bumptech/glide/load/m;)Lyj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lyj;->d()Lyj;

    move-result-object v0

    return-object v0
.end method

.method public d()Lyj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyj;

    .line 2
    new-instance v1, Lcom/bumptech/glide/load/i;

    invoke-direct {v1}, Lcom/bumptech/glide/load/i;-><init>()V

    iput-object v1, v0, Lyj;->r:Lcom/bumptech/glide/load/i;

    .line 3
    iget-object v2, p0, Lyj;->r:Lcom/bumptech/glide/load/i;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/i;->d(Lcom/bumptech/glide/load/i;)V

    .line 4
    new-instance v1, Lzk;

    invoke-direct {v1}, Lzk;-><init>()V

    iput-object v1, v0, Lyj;->s:Ljava/util/Map;

    .line 5
    iget-object v2, p0, Lyj;->s:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lyj;->u:Z

    .line 7
    iput-boolean v1, v0, Lyj;->w:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e(Ljava/lang/Class;)Lyj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lyj;->w:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lyj;->d()Lyj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lyj;->e(Ljava/lang/Class;)Lyj;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lyj;->t:Ljava/lang/Class;

    .line 5
    iget p1, p0, Lyj;->b:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lyj;->b:I

    .line 6
    invoke-direct {p0}, Lyj;->P()Lyj;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lyj;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lyj;

    .line 3
    iget v0, p1, Lyj;->c:F

    iget v2, p0, Lyj;->c:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lyj;->g:I

    iget v2, p1, Lyj;->g:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lyj;->f:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lyj;->f:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-static {v0, v2}, Lhl;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lyj;->i:I

    iget v2, p1, Lyj;->i:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lyj;->h:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lyj;->h:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-static {v0, v2}, Lhl;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lyj;->q:I

    iget v2, p1, Lyj;->q:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lyj;->p:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lyj;->p:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-static {v0, v2}, Lhl;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lyj;->j:Z

    iget-boolean v2, p1, Lyj;->j:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lyj;->k:I

    iget v2, p1, Lyj;->k:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lyj;->l:I

    iget v2, p1, Lyj;->l:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lyj;->n:Z

    iget-boolean v2, p1, Lyj;->n:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lyj;->o:Z

    iget-boolean v2, p1, Lyj;->o:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lyj;->x:Z

    iget-boolean v2, p1, Lyj;->x:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lyj;->y:Z

    iget-boolean v2, p1, Lyj;->y:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lyj;->d:Lvd;

    iget-object v2, p1, Lyj;->d:Lvd;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyj;->e:Lcom/bumptech/glide/f;

    iget-object v2, p1, Lyj;->e:Lcom/bumptech/glide/f;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lyj;->r:Lcom/bumptech/glide/load/i;

    iget-object v2, p1, Lyj;->r:Lcom/bumptech/glide/load/i;

    .line 8
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyj;->s:Ljava/util/Map;

    iget-object v2, p1, Lyj;->s:Ljava/util/Map;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyj;->t:Ljava/lang/Class;

    iget-object v2, p1, Lyj;->t:Ljava/lang/Class;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyj;->m:Lcom/bumptech/glide/load/g;

    iget-object v2, p1, Lyj;->m:Lcom/bumptech/glide/load/g;

    .line 11
    invoke-static {v0, v2}, Lhl;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyj;->v:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lyj;->v:Landroid/content/res/Resources$Theme;

    .line 12
    invoke-static {v0, p1}, Lhl;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f(Lvd;)Lyj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvd;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lyj;->w:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lyj;->d()Lyj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lyj;->f(Lvd;)Lyj;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lyj;->d:Lvd;

    .line 5
    iget p1, p0, Lyj;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lyj;->b:I

    .line 6
    invoke-direct {p0}, Lyj;->P()Lyj;

    return-object p0
.end method

.method public g(Leh;)Lyj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Leh;->f:Lcom/bumptech/glide/load/h;

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v0, p1}, Lyj;->Q(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lyj;

    move-result-object p1

    return-object p1
.end method

.method public final h()Lvd;
    .locals 1

    .line 1
    iget-object v0, p0, Lyj;->d:Lvd;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lyj;->c:F

    .line 2
    sget v1, Lhl;->c:I

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 4
    iget v1, p0, Lyj;->g:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Lyj;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lhl;->f(Ljava/lang/Object;I)I

    move-result v0

    .line 6
    iget v1, p0, Lyj;->i:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 7
    iget-object v1, p0, Lyj;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lhl;->f(Ljava/lang/Object;I)I

    move-result v0

    .line 8
    iget v1, p0, Lyj;->q:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 9
    iget-object v1, p0, Lyj;->p:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lhl;->f(Ljava/lang/Object;I)I

    move-result v0

    .line 10
    iget-boolean v1, p0, Lyj;->j:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 11
    iget v1, p0, Lyj;->k:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 12
    iget v1, p0, Lyj;->l:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 13
    iget-boolean v1, p0, Lyj;->n:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 14
    iget-boolean v1, p0, Lyj;->o:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 15
    iget-boolean v1, p0, Lyj;->x:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 16
    iget-boolean v1, p0, Lyj;->y:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 17
    iget-object v1, p0, Lyj;->d:Lvd;

    invoke-static {v1, v0}, Lhl;->f(Ljava/lang/Object;I)I

    move-result v0

    .line 18
    iget-object v1, p0, Lyj;->e:Lcom/bumptech/glide/f;

    invoke-static {v1, v0}, Lhl;->f(Ljava/lang/Object;I)I

    move-result v0

    .line 19
    iget-object v1, p0, Lyj;->r:Lcom/bumptech/glide/load/i;

    invoke-static {v1, v0}, Lhl;->f(Ljava/lang/Object;I)I

    move-result v0

    .line 20
    iget-object v1, p0, Lyj;->s:Ljava/util/Map;

    invoke-static {v1, v0}, Lhl;->f(Ljava/lang/Object;I)I

    move-result v0

    .line 21
    iget-object v1, p0, Lyj;->t:Ljava/lang/Class;

    invoke-static {v1, v0}, Lhl;->f(Ljava/lang/Object;I)I

    move-result v0

    .line 22
    iget-object v1, p0, Lyj;->m:Lcom/bumptech/glide/load/g;

    invoke-static {v1, v0}, Lhl;->f(Ljava/lang/Object;I)I

    move-result v0

    .line 23
    iget-object v1, p0, Lyj;->v:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lhl;->f(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lyj;->g:I

    return v0
.end method

.method public final j()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lyj;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final k()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lyj;->p:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .line 1
    iget v0, p0, Lyj;->q:I

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lyj;->y:Z

    return v0
.end method

.method public final n()Lcom/bumptech/glide/load/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lyj;->r:Lcom/bumptech/glide/load/i;

    return-object v0
.end method

.method public final p()I
    .locals 1

    .line 1
    iget v0, p0, Lyj;->k:I

    return v0
.end method

.method public final q()I
    .locals 1

    .line 1
    iget v0, p0, Lyj;->l:I

    return v0
.end method

.method public final r()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lyj;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final s()I
    .locals 1

    .line 1
    iget v0, p0, Lyj;->i:I

    return v0
.end method

.method public final t()Lcom/bumptech/glide/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lyj;->e:Lcom/bumptech/glide/f;

    return-object v0
.end method

.method public final u()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyj;->t:Ljava/lang/Class;

    return-object v0
.end method

.method public final v()Lcom/bumptech/glide/load/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lyj;->m:Lcom/bumptech/glide/load/g;

    return-object v0
.end method

.method public final w()F
    .locals 1

    .line 1
    iget v0, p0, Lyj;->c:F

    return v0
.end method

.method public final x()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 1
    iget-object v0, p0, Lyj;->v:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final y()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/m<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyj;->s:Ljava/util/Map;

    return-object v0
.end method

.method public final z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lyj;->A:Z

    return v0
.end method
