.class public Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/text/Layout$Alignment;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:F

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:F

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->a:Landroid/text/Layout$Alignment;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->h:I

    const-string v0, "Roboto-Medium.ttf"

    .line 4
    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->i:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->j:F

    .line 6
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->n:F

    const/16 v0, 0x32

    .line 7
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->o:I

    const/16 v0, 0xa

    .line 8
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->p:I

    .line 9
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->q:I

    return-void
.end method

.method public static a(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->a:Landroid/text/Layout$Alignment;

    .line 2
    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->a:Landroid/text/Layout$Alignment;

    .line 3
    iget-boolean v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->b:Z

    .line 5
    iget-boolean v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->c:Z

    .line 6
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->c:Z

    .line 7
    iget-boolean v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->d:Z

    .line 8
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->d:Z

    .line 9
    iget v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e:I

    .line 10
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e:I

    .line 11
    iget v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->f:I

    .line 12
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->f:I

    .line 13
    iget v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->h:I

    .line 14
    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    .line 15
    iget v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->g:I

    .line 16
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->g:I

    .line 17
    iget v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->j:F

    .line 18
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->j:F

    .line 19
    iget-object v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->i:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->i:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->k:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->k:Ljava/lang/String;

    .line 23
    iget v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->l:I

    .line 24
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->l:I

    .line 25
    iget v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->n:F

    .line 26
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->n:F

    .line 27
    iget v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->m:I

    .line 28
    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->R(I)V

    .line 29
    iget v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->o:I

    .line 30
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->o:I

    .line 31
    iget v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->p:I

    .line 32
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->p:I

    .line 33
    iget v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->q:I

    .line 34
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->q:I

    .line 35
    iget v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->r:I

    .line 36
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->r:I

    .line 37
    iget v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->s:I

    .line 38
    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->J(I)V

    .line 39
    iget v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->t:I

    .line 40
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->t:I

    .line 41
    iget v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->u:I

    .line 42
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->u:I

    .line 43
    iget v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->v:I

    .line 44
    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->G(I)V

    .line 45
    iget v0, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->w:I

    .line 46
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->w:I

    .line 47
    iget p1, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->x:I

    .line 48
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->x:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->g:I

    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->b:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->c:Z

    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->d:Z

    return v0
.end method

.method public E(Landroid/text/Layout$Alignment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->a:Landroid/text/Layout$Alignment;

    return-void
.end method

.method public F(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->w:I

    return-void
.end method

.method public G(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->v:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->x:I

    return-void
.end method

.method public H(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->x:I

    return-void
.end method

.method public I(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->b:Z

    return-void
.end method

.method public J(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->s:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->u:I

    return-void
.end method

.method public K(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->u:I

    return-void
.end method

.method public L(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->t:I

    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->i:Ljava/lang/String;

    return-void
.end method

.method public N(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->c:Z

    return-void
.end method

.method public O(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e:I

    return-void
.end method

.method public P(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->f:I

    return-void
.end method

.method public Q(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->n:F

    return-void
.end method

.method public R(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->m:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->r:I

    return-void
.end method

.method public S(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->o:I

    return-void
.end method

.method public T(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->r:I

    return-void
.end method

.method public U(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->p:I

    return-void
.end method

.method public V(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->q:I

    return-void
.end method

.method public W(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->k:Ljava/lang/String;

    return-void
.end method

.method public X(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->j:F

    return-void
.end method

.method public Y(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->h:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->l:I

    return-void
.end method

.method public Z(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->l:I

    return-void
.end method

.method public a0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->g:I

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->s:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->u:I

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->t:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->d:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->v:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->x:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->m:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->r:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public e()Landroid/text/Layout$Alignment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->a:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->w:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->v:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->x:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->s:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->u:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->t:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e:I

    return v0
.end method

.method public o()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->f:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->f:I

    return v0
.end method

.method public q()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->n:F

    return v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->m:I

    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->o:I

    return v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->r:I

    return v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->p:I

    return v0
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->q:I

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->k:Ljava/lang/String;

    return-object v0
.end method

.method public x()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->j:F

    return v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->h:I

    return v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->l:I

    return v0
.end method
